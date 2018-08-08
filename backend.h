#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>

class Backend : public QObject
{
    Q_OBJECT

public:
    Backend();

public slots:
    // that's our backend method
    QString doSome();
};

#endif // BACKEND_H
