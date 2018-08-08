#ifndef CONTROLL_H
#define CONTROLL_H
#include <QObject>

class controll : public QObject
{
    Q_OBJECT
public:
    controll();

public slots:
    // that's our backend method
    QString doSome();
};

#endif // CONTROLL_H

