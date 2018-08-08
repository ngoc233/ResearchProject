#ifndef DBMANAGER_H
#define DBMANAGER_H

#include <QObject>
#include <QSqlDatabase>

class dbmanager :public QObject
{
    Q_OBJECT
public:
    dbmanager(const QString path);

    ~dbmanager();
public slots:
    bool isOpen() const;

        /**
         * @brief Creates a new 'people' table if it doesn't already exist
         * @return true - 'people' table created successfully, false - table not created
         */
        bool createTable();

        /**
         * @brief Add person data to db
         * @param name - name of person to add
         * @return true - person added successfully, false - person not added
         */
        bool addPerson(const QString& name);

        /**
         * @brief Remove person data from db
         * @param name - name of person to remove.
         * @return true - person removed successfully, false - person not removed
         */
        bool removePerson(const QString& name);

        /**
         * @brief Check if person of name "name" exists in db
         * @param name - name of person to check.
         * @return true - person exists, false - person does not exist
         */
        bool personExists(const QString& name) const;

        /**
         * @brief Print names of all persons in db
         */
        void printAllPersons() const;

        /**
         * @brief Remove all persons from db
         * @return true - all persons removed successfully, false - not removed
         */
        bool removeAllPersons();
    private:
        QSqlDatabase m_db;
};


#endif // DBMANAGER_H
