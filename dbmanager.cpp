#include "dbmanager.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlRecord>
#include <QDebug>
dbmanager::dbmanager(const QString path)
{
    m_db = QSqlDatabase::addDatabase("QSQLITE");
    m_db.setDatabaseName(path);

    if (!m_db.open())
    {
        qDebug() << "Error: connection with database fail";
    }
    else
    {
        qDebug() << "Database: connection ok";
    }
}
dbmanager::~dbmanager()
{
    if (m_db.isOpen())
    {
        m_db.close();
    }
}
bool dbmanager::isOpen() const
{
    return m_db.isOpen();
}

bool dbmanager::createTable()
{
    bool success = false;

    QSqlQuery query;
    query.prepare("CREATE TABLE admin(id INTEGER PRIMARY KEY, name TEXT);");

    if (!query.exec())
    {
        qDebug() << "Couldn't create the table 'admin': one might already exist.";
        success = false;
    }

    return success;
}

bool dbmanager::addPerson(const QString& name)
{
    bool success = false;

    if (!name.isEmpty())
    {
        QSqlQuery queryAdd;
        queryAdd.prepare("INSERT INTO admin (name) VALUES (:name)");
        queryAdd.bindValue(":name", name);

        if(queryAdd.exec())
        {
            success = true;
        }
        else
        {
            qDebug() << "add person failed: " << queryAdd.lastError();
        }
    }
    else
    {
        qDebug() << "add person failed: name cannot be empty";
    }

    return success;
}

bool dbmanager::removePerson(const QString& name)
{
    bool success = false;

    if (personExists(name))
    {
        QSqlQuery queryDelete;
        queryDelete.prepare("DELETE FROM admin WHERE name = (:name)");
        queryDelete.bindValue(":name", name);
        success = queryDelete.exec();

        if(!success)
        {
            qDebug() << "remove person failed: " << queryDelete.lastError();
        }
    }
    else
    {
        qDebug() << "remove person failed: person doesnt exist";
    }

    return success;
}

void dbmanager::printAllPersons() const
{
    qDebug() << "Persons in db:";
    QSqlQuery query("SELECT * FROM admin");
    int idName = query.record().indexOf("name");
    while (query.next())
    {
        QString name = query.value(idName).toString();
        qDebug() << "===" << name;
    }
}

bool dbmanager::personExists(const QString& name) const
{
    bool exists = false;

    QSqlQuery checkQuery;
    checkQuery.prepare("SELECT name FROM admin WHERE name = (:name)");
    checkQuery.bindValue(":name", name);

    if (checkQuery.exec())
    {
        if (checkQuery.next())
        {
            exists = true;
        }
    }
    else
    {
        qDebug() << "person exists failed: " << checkQuery.lastError();
    }

    return exists;
}

bool dbmanager::removeAllPersons()
{
    bool success = false;

    QSqlQuery removeQuery;
    removeQuery.prepare("DELETE FROM admin");

    if (removeQuery.exec())
    {
        success = true;
    }
    else
    {
        qDebug() << "remove all persons failed: " << removeQuery.lastError();
    }

    return success;
}

