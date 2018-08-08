#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>
#include"backend.h"
#include"backgroundchanger.h"
#include"dbmanager.h"


static const QString path = "/home/ngoc233/SmartHome/example.db";
int main(int argc, char *argv[])
{
    //virtual keyboard
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));
    //delete cache
    qputenv("QML_DISABLE_DISK_CACHE", "1");

    dbmanager db(path);
    if (db.isOpen())
    {
//        db.createTable();   // Creates a table if it doens't exist. Otherwise, it will use existing table.
//        db.addPerson("ngoc2331995");
          db.printAllPersons();
//        db.removeAllPersons();
        qDebug() << "End";
    }
    else
    {
        qDebug() << "Database is not open!";
    }
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    //connect  c++ to qml
    dbmanager *dbManager = new dbmanager(path);
    engine.rootContext()->setContextProperty("dbManager",dbManager);
    backgroundchanger *backgroundChanger = new backgroundchanger();
    engine.rootContext()->setContextProperty("backgroundChanger",backgroundChanger);


    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
