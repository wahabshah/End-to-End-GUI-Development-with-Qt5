#ifndef CMLIB_GLOBAL_H
#define CMLIB_GLOBAL_H

#include <QtCore/qglobal.h>
#include <QObject>

#if defined(CMLIB_LIBRARY)
#  define CMLIBSHARED_EXPORT Q_DECL_EXPORT
#else
#  define CMLIBSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // CMLIB_GLOBAL_H
