#include "backgroundchanger.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlRecord>
#include <QDebug>
#include <QtCore/QDateTime>
#include <QtWidgets/QMessageBox>

backgroundchanger::backgroundchanger()
{

}
QString backgroundchanger::demo(QString name){
    return name;
}
QString backgroundchanger::demo2(int gpio)
{
   if(gpio >= 2)
   {
       return "true";
   }
   else
   {
       return "false";
   }
}
QString backgroundchanger::mqtt(){
    return "done";
}
