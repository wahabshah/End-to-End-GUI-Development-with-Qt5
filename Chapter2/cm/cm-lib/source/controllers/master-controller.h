#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H

#include <cm-lib_global.h>
namespace cm {
    namespace controllers {
class MasterController : public QObject
{
    Q_OBJECT
public:
    explicit MasterController(QObject *parent = nullptr);

signals:

public slots:
};
}
}
#endif // MASTERCONTROLLER_H