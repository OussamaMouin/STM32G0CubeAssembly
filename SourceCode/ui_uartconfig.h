/********************************************************************************
** Form generated from reading UI file 'uartconfig.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_UARTCONFIG_H
#define UI_UARTCONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_UARTConfig
{
public:
    QGridLayout *gridLayout;
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label;
    QSpacerItem *horizontalSpacer;
    QLabel *label1;
    QHBoxLayout *horizontalLayout_3;
    QLabel *TIM_PRD;
    QComboBox *comboBox_2;
    QLabel *PRES;
    QComboBox *comboBox;
    QHBoxLayout *horizontalLayout_6;
    QSpacerItem *horizontalSpacer_2;
    QPushButton *pushButton;
    QSpacerItem *horizontalSpacer_3;

    void setupUi(QDialog *UARTConfig)
    {
        if (UARTConfig->objectName().isEmpty())
            UARTConfig->setObjectName(QStringLiteral("UARTConfig"));
        UARTConfig->resize(305, 220);
        gridLayout = new QGridLayout(UARTConfig);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        label = new QLabel(UARTConfig);
        label->setObjectName(QStringLiteral("label"));
        QFont font;
        font.setFamily(QStringLiteral("Montserrat Black"));
        font.setPointSize(12);
        font.setBold(false);
        font.setItalic(false);
        font.setWeight(10);
        label->setFont(font);
        label->setStyleSheet(QLatin1String("font: 87 12pt \"Montserrat Black\";\n"
"color: rgb(11, 53, 94);"));

        horizontalLayout_5->addWidget(label);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_5->addItem(horizontalSpacer);

        label1 = new QLabel(UARTConfig);
        label1->setObjectName(QStringLiteral("label1"));

        horizontalLayout_5->addWidget(label1);


        verticalLayout->addLayout(horizontalLayout_5);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        TIM_PRD = new QLabel(UARTConfig);
        TIM_PRD->setObjectName(QStringLiteral("TIM_PRD"));
        TIM_PRD->setEnabled(true);
        QFont font1;
        font1.setFamily(QStringLiteral("Raleway Black"));
        font1.setPointSize(12);
        font1.setBold(true);
        font1.setWeight(75);
        TIM_PRD->setFont(font1);

        horizontalLayout_3->addWidget(TIM_PRD);


        verticalLayout->addLayout(horizontalLayout_3);

        comboBox_2 = new QComboBox(UARTConfig);
        comboBox_2->setObjectName(QStringLiteral("comboBox_2"));
        comboBox_2->setEnabled(false);

        verticalLayout->addWidget(comboBox_2);

        PRES = new QLabel(UARTConfig);
        PRES->setObjectName(QStringLiteral("PRES"));
        PRES->setEnabled(true);
        PRES->setFont(font1);

        verticalLayout->addWidget(PRES);

        comboBox = new QComboBox(UARTConfig);
        comboBox->setObjectName(QStringLiteral("comboBox"));

        verticalLayout->addWidget(comboBox);


        verticalLayout_2->addLayout(verticalLayout);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QStringLiteral("horizontalLayout_6"));
        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_2);

        pushButton = new QPushButton(UARTConfig);
        pushButton->setObjectName(QStringLiteral("pushButton"));

        horizontalLayout_6->addWidget(pushButton);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_3);


        verticalLayout_2->addLayout(horizontalLayout_6);


        gridLayout->addLayout(verticalLayout_2, 0, 0, 1, 1);


        retranslateUi(UARTConfig);

        QMetaObject::connectSlotsByName(UARTConfig);
    } // setupUi

    void retranslateUi(QDialog *UARTConfig)
    {
        UARTConfig->setWindowTitle(QApplication::translate("UARTConfig", "Dialog", 0));
        label->setText(QApplication::translate("UARTConfig", "UART Configuration", 0));
        label1->setText(QApplication::translate("UARTConfig", "TextLabel", 0));
        TIM_PRD->setText(QApplication::translate("UARTConfig", "Word_Length", 0));
        comboBox_2->clear();
        comboBox_2->insertItems(0, QStringList()
         << QApplication::translate("UARTConfig", "8", 0)
        );
        PRES->setText(QApplication::translate("UARTConfig", "Baud Rate", 0));
        comboBox->clear();
        comboBox->insertItems(0, QStringList()
         << QApplication::translate("UARTConfig", "110", 0)
         << QApplication::translate("UARTConfig", "220", 0)
         << QApplication::translate("UARTConfig", "300", 0)
         << QApplication::translate("UARTConfig", "1200", 0)
         << QApplication::translate("UARTConfig", "2400", 0)
         << QApplication::translate("UARTConfig", "4800", 0)
         << QApplication::translate("UARTConfig", "9600", 0)
         << QApplication::translate("UARTConfig", "19200", 0)
         << QApplication::translate("UARTConfig", "38400", 0)
         << QApplication::translate("UARTConfig", "57400", 0)
         << QApplication::translate("UARTConfig", "115200", 0)
        );
        pushButton->setText(QApplication::translate("UARTConfig", "OK", 0));
    } // retranslateUi

};

namespace Ui {
    class UARTConfig: public Ui_UARTConfig {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_UARTCONFIG_H
