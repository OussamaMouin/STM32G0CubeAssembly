/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.14.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QPushButton *pushButton;
    QPushButton *pin1;
    QPushButton *pushButton_3;
    QPushButton *pushButton_4;
    QPushButton *pin4;
    QLabel *label;
    QPushButton *pin5;
    QPushButton *pin8;
    QPushButton *pin7;
    QPushButton *pin6;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label1;
    QLabel *label_5;
    QPushButton *GenerateButton;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    QLineEdit *path;
    QPushButton *Browse;
    QLabel *label_6;
    QLabel *label_7;
    QLabel *label_8;
    QLabel *label_9;
    QLabel *label_10;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(800, 600);
        MainWindow->setStyleSheet(QString::fromUtf8("background-color: rgb(255, 255, 255);"));
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        pushButton = new QPushButton(centralwidget);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));
        pushButton->setEnabled(false);
        pushButton->setGeometry(QRect(315, 135, 150, 320));
        QFont font;
        font.setPointSize(8);
        font.setBold(true);
        font.setUnderline(false);
        font.setWeight(75);
        font.setStyleStrategy(QFont::PreferDefault);
        pushButton->setFont(font);
        pushButton->setMouseTracking(false);
        pushButton->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"background-color: rgb(122, 122, 122);"));
        pin1 = new QPushButton(centralwidget);
        pin1->setObjectName(QString::fromUtf8("pin1"));
        pin1->setGeometry(QRect(190, 140, 125, 70));
        pin1->setCursor(QCursor(Qt::PointingHandCursor));
        pin1->setMouseTracking(true);
        pin1->setStyleSheet(QString::fromUtf8("background-color: rgb(185, 185, 185);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        pushButton_3 = new QPushButton(centralwidget);
        pushButton_3->setObjectName(QString::fromUtf8("pushButton_3"));
        pushButton_3->setEnabled(false);
        pushButton_3->setGeometry(QRect(190, 220, 125, 70));
        QFont font1;
        font1.setFamily(QString::fromUtf8("Montserrat"));
        font1.setPointSize(10);
        font1.setBold(false);
        font1.setItalic(false);
        font1.setWeight(50);
        pushButton_3->setFont(font1);

        pushButton_3->setAcceptDrops(false);
        pushButton_3->setStyleSheet(QString::fromUtf8("\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";\n"
"background-color: rgb(255, 250, 194);"));
        pushButton_4 = new QPushButton(centralwidget);
        pushButton_4->setObjectName(QString::fromUtf8("pushButton_4"));
        pushButton_4->setEnabled(false);
        pushButton_4->setGeometry(QRect(190, 300, 125, 70));
        pushButton_4->setStyleSheet(QString::fromUtf8("color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";\n"
"background-color: rgb(255, 250, 194);"));
        pin4 = new QPushButton(centralwidget);
        pin4->setObjectName(QString::fromUtf8("pin4"));
        pin4->setGeometry(QRect(190, 380, 125, 70));
        pin4->setCursor(QCursor(Qt::PointingHandCursor));
        pin4->setMouseTracking(true);
        pin4->setStyleSheet(QString::fromUtf8("background-color: rgb(185, 185, 185);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        label = new QLabel(centralwidget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(345, 215, 91, 61));
        pin5 = new QPushButton(centralwidget);
        pin5->setObjectName(QString::fromUtf8("pin5"));
        pin5->setGeometry(QRect(465, 380, 125, 70));
        pin5->setCursor(QCursor(Qt::PointingHandCursor));
        pin5->setMouseTracking(true);
        pin5->setStyleSheet(QString::fromUtf8("background-color: rgb(185, 185, 185);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        pin8 = new QPushButton(centralwidget);
        pin8->setObjectName(QString::fromUtf8("pin8"));
        pin8->setGeometry(QRect(465, 140, 125, 70));
        pin8->setCursor(QCursor(Qt::PointingHandCursor));
        pin8->setMouseTracking(true);
        pin8->setStyleSheet(QString::fromUtf8("background-color: rgb(185, 185, 185);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        pin7 = new QPushButton(centralwidget);
        pin7->setObjectName(QString::fromUtf8("pin7"));
        pin7->setEnabled(true);
        pin7->setGeometry(QRect(465, 220, 125, 70));
        pin7->setFont(font1);
        pin7->setCursor(QCursor(Qt::PointingHandCursor));
        pin7->setMouseTracking(true);
        pin7->setStyleSheet(QString::fromUtf8("background-color: rgb(185, 185, 185);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        pin6 = new QPushButton(centralwidget);
        pin6->setObjectName(QString::fromUtf8("pin6"));
        pin6->setEnabled(true);
        pin6->setGeometry(QRect(465, 300, 125, 70));
        pin6->setCursor(QCursor(Qt::PointingHandCursor));
        pin6->setMouseTracking(true);
        pin6->setStyleSheet(QString::fromUtf8("background-color: rgb(185, 185, 185);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setGeometry(QRect(365, 305, 47, 21));
        QFont font2;
        font2.setFamily(QString::fromUtf8("MS Shell Dlg 2"));
        font2.setPointSize(8);
        font2.setBold(true);
        font2.setItalic(false);
        font2.setUnderline(false);
        font2.setWeight(75);
        label_2->setFont(font2);
        label_2->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"background-color: rgb(66, 66, 66);\n"
"background-color: rgb(122, 122, 122);"));
        label_2->setAlignment(Qt::AlignCenter);
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setGeometry(QRect(300, 90, 171, 41));
        label_3->setStyleSheet(QString::fromUtf8("font: 75 12pt \"MS Shell Dlg 2\";"));
        label_3->setAlignment(Qt::AlignCenter);
        label_4 = new QLabel(centralwidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setGeometry(QRect(10, 0, 631, 81));
        label_4->setStyleSheet(QString::fromUtf8("font: 87 12pt \"Montserrat Black\";\n"
"color: rgb(11, 53, 94);"));
        label1 = new QLabel(centralwidget);
        label1->setObjectName(QString::fromUtf8("label1"));
        label1->setGeometry(QRect(640, -10, 121, 101));
        label_5 = new QLabel(centralwidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));
        label_5->setGeometry(QRect(40, 150, 141, 41));
        label_5->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        label_5->setAlignment(Qt::AlignCenter);
        GenerateButton = new QPushButton(centralwidget);
        GenerateButton->setObjectName(QString::fromUtf8("GenerateButton"));
        GenerateButton->setEnabled(true);
        GenerateButton->setGeometry(QRect(460, 500, 251, 51));
        QFont font3;
        font3.setFamily(QString::fromUtf8("Stencil"));
        font3.setPointSize(15);
        font3.setBold(false);
        font3.setWeight(50);
        GenerateButton->setFont(font3);
        GenerateButton->setCursor(QCursor(Qt::PointingHandCursor));
        GenerateButton->setStyleSheet(QString::fromUtf8("background-color: rgb(11, 53, 94);\n"
"color: rgb(255, 255, 255);"));
        layoutWidget = new QWidget(centralwidget);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        layoutWidget->setGeometry(QRect(50, 500, 361, 51));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        path = new QLineEdit(layoutWidget);
        path->setObjectName(QString::fromUtf8("path"));
        path->setEnabled(true);
        path->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"border-color: rgb(0, 0, 0);\n"
"background-color: rgb(122, 122, 122);\n"
""));

        horizontalLayout->addWidget(path);

        Browse = new QPushButton(layoutWidget);
        Browse->setObjectName(QString::fromUtf8("Browse"));
        Browse->setEnabled(true);
        Browse->setMaximumSize(QSize(80, 16777215));
        QFont font4;
        font4.setBold(true);
        font4.setWeight(75);
        Browse->setFont(font4);
        Browse->setCursor(QCursor(Qt::PointingHandCursor));
        Browse->setStyleSheet(QString::fromUtf8("background-color: rgb(11, 53, 94);\n"
"color: rgb(255, 255, 255);"));
        Browse->setIconSize(QSize(16, 16));

        horizontalLayout->addWidget(Browse);

        label_6 = new QLabel(centralwidget);
        label_6->setObjectName(QString::fromUtf8("label_6"));
        label_6->setGeometry(QRect(30, 390, 151, 41));
        label_6->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        label_6->setAlignment(Qt::AlignCenter);
        label_7 = new QLabel(centralwidget);
        label_7->setObjectName(QString::fromUtf8("label_7"));
        label_7->setGeometry(QRect(600, 150, 171, 41));
        label_7->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        label_7->setAlignment(Qt::AlignCenter);
        label_8 = new QLabel(centralwidget);
        label_8->setObjectName(QString::fromUtf8("label_8"));
        label_8->setGeometry(QRect(600, 230, 181, 41));
        label_8->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        label_8->setAlignment(Qt::AlignCenter);
        label_9 = new QLabel(centralwidget);
        label_9->setObjectName(QString::fromUtf8("label_9"));
        label_9->setGeometry(QRect(600, 310, 181, 41));
        label_9->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        label_9->setAlignment(Qt::AlignCenter);
        label_10 = new QLabel(centralwidget);
        label_10->setObjectName(QString::fromUtf8("label_10"));
        label_10->setGeometry(QRect(600, 390, 181, 41));
        label_10->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);\n"
"color: rgb(0, 0, 0);\n"
"font: 10pt \"Montserrat\";"));
        label_10->setAlignment(Qt::AlignCenter);
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 21));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        pushButton->setText(QCoreApplication::translate("MainWindow", "STM32G031J6Mx", nullptr));
        pin1->setText(QCoreApplication::translate("MainWindow", "Pin1", nullptr));
        pushButton_3->setText(QCoreApplication::translate("MainWindow", "VDD/VDDA", nullptr));
        pushButton_4->setText(QCoreApplication::translate("MainWindow", "VSS/VSSA", nullptr));
        pin4->setText(QCoreApplication::translate("MainWindow", "Pin4", nullptr));
        label->setText(QString());
        pin5->setText(QCoreApplication::translate("MainWindow", "Pin5", nullptr));
        pin8->setText(QCoreApplication::translate("MainWindow", "Pin8", nullptr));
        pin7->setText(QCoreApplication::translate("MainWindow", "Pin7", nullptr));
        pin6->setText(QCoreApplication::translate("MainWindow", "Pin6", nullptr));
        label_2->setText(QCoreApplication::translate("MainWindow", "SO8N", nullptr));
        label_3->setText(QCoreApplication::translate("MainWindow", "Pinout View", nullptr));
        label_4->setText(QCoreApplication::translate("MainWindow", "Assembly language micro-code generation: \n"
"STM32G0-discovery board", nullptr));
        label1->setText(QCoreApplication::translate("MainWindow", "TextLabel", nullptr));
        label_5->setText(QString());
        GenerateButton->setText(QCoreApplication::translate("MainWindow", "GENERATE CODE", nullptr));
        Browse->setText(QCoreApplication::translate("MainWindow", "...", nullptr));
        label_6->setText(QString());
        label_7->setText(QString());
        label_8->setText(QString());
        label_9->setText(QString());
        label_10->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
