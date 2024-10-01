QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
QT += sql

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Sources/config.cpp \
    Sources/gpio.cpp \
    Sources/main.cpp \
    Sources/mainwindow.cpp \
    Sources/timerconfig.cpp \
    Sources/uartconfig.cpp \
    Sources/dbconn.cpp \
    Sources/configi.cpp

HEADERS += \
    Headers/config.h \
    Headers/gpio.h \
    Headers/mainwindow.h \
    Headers/timerconfig.h \
    Headers/uartconfig.h \
    Headers/dbconn.h \
    Headers/configi.h

FORMS += \
    Design/config.ui \
    Design/gpio.ui \
    Design/mainwindow.ui \
    Design/timerconfig.ui \
    Design/uartconfig.ui \
    Design/configi.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    ../../../Desktop/PFA/Pics/QT/ST.png
