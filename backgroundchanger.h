#ifndef BACKGROUNDCHANGER_H
#define BACKGROUNDCHANGER_H

#include <QObject>

class backgroundchanger : public QObject
{
    Q_OBJECT

public:
    backgroundchanger();

public slots:
    QString demo(QString name);
    QString demo2(int gpio);
    QString mqtt();
};


#endif // BACKGROUNDCHANGER_H
