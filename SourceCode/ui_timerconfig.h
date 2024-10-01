/********************************************************************************
** Form generated from reading UI file 'timerconfig.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TIMERCONFIG_H
#define UI_TIMERCONFIG_H

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
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_Timerconfig
{
public:
    QGridLayout *gridLayout;
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label;
    QSpacerItem *horizontalSpacer;
    QLabel *label1;
    QVBoxLayout *verticalLayout_4;
    QLabel *label_2;
    QComboBox *comboBox;
    QHBoxLayout *horizontalLayout_3;
    QLabel *TIM_PRD;
    QSpacerItem *horizontalSpacer_4;
    QLineEdit *TIM_PERIODE;
    QHBoxLayout *horizontalLayout_2;
    QLabel *PRES;
    QSpacerItem *horizontalSpacer_5;
    QLineEdit *PRESCALER;
    QHBoxLayout *horizontalLayout_6;
    QSpacerItem *horizontalSpacer_2;
    QPushButton *pushButton;
    QSpacerItem *horizontalSpacer_3;

    void setupUi(QDialog *Timerconfig)
    {
        if (Timerconfig->objectName().isEmpty())
            Timerconfig->setObjectName(QStringLiteral("Timerconfig"));
        Timerconfig->resize(515, 286);
        gridLayout = new QGridLayout(Timerconfig);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        label = new QLabel(Timerconfig);
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

        label1 = new QLabel(Timerconfig);
        label1->setObjectName(QStringLiteral("label1"));

        horizontalLayout_5->addWidget(label1);


        verticalLayout->addLayout(horizontalLayout_5);

        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setObjectName(QStringLiteral("verticalLayout_4"));
        label_2 = new QLabel(Timerconfig);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font1;
        font1.setPointSize(12);
        font1.setBold(true);
        font1.setWeight(75);
        label_2->setFont(font1);

        verticalLayout_4->addWidget(label_2);

        comboBox = new QComboBox(Timerconfig);
        comboBox->setObjectName(QStringLiteral("comboBox"));

        verticalLayout_4->addWidget(comboBox);


        verticalLayout->addLayout(verticalLayout_4);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        TIM_PRD = new QLabel(Timerconfig);
        TIM_PRD->setObjectName(QStringLiteral("TIM_PRD"));
        TIM_PRD->setEnabled(true);
        QFont font2;
        font2.setFamily(QStringLiteral("Raleway Black"));
        font2.setPointSize(12);
        font2.setBold(true);
        font2.setWeight(75);
        TIM_PRD->setFont(font2);

        horizontalLayout_3->addWidget(TIM_PRD);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_4);

        TIM_PERIODE = new QLineEdit(Timerconfig);
        TIM_PERIODE->setObjectName(QStringLiteral("TIM_PERIODE"));

        horizontalLayout_3->addWidget(TIM_PERIODE);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        PRES = new QLabel(Timerconfig);
        PRES->setObjectName(QStringLiteral("PRES"));
        PRES->setEnabled(true);
        PRES->setFont(font2);

        horizontalLayout_2->addWidget(PRES);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_5);

        PRESCALER = new QLineEdit(Timerconfig);
        PRESCALER->setObjectName(QStringLiteral("PRESCALER"));

        horizontalLayout_2->addWidget(PRESCALER);


        verticalLayout->addLayout(horizontalLayout_2);


        verticalLayout_2->addLayout(verticalLayout);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QStringLiteral("horizontalLayout_6"));
        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_2);

        pushButton = new QPushButton(Timerconfig);
        pushButton->setObjectName(QStringLiteral("pushButton"));

        horizontalLayout_6->addWidget(pushButton);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_3);


        verticalLayout_2->addLayout(horizontalLayout_6);


        gridLayout->addLayout(verticalLayout_2, 0, 0, 1, 1);


        retranslateUi(Timerconfig);

        QMetaObject::connectSlotsByName(Timerconfig);
    } // setupUi

    void retranslateUi(QDialog *Timerconfig)
    {
        Timerconfig->setWindowTitle(QApplication::translate("Timerconfig", "Dialog", 0));
        label->setText(QApplication::translate("Timerconfig", "TIMER Configuration", 0));
        label1->setText(QApplication::translate("Timerconfig", "TextLabel", 0));
        label_2->setText(QApplication::translate("Timerconfig", "MODE", 0));
        comboBox->clear();
        comboBox->insertItems(0, QStringList()
         << QApplication::translate("Timerconfig", "Timer Base", 0)
         << QApplication::translate("Timerconfig", "PWM_Mode", 0)
        );
        TIM_PRD->setText(QApplication::translate("Timerconfig", "TIM_PERIODE", 0));
        PRES->setText(QApplication::translate("Timerconfig", "PRESCALER", 0));
        pushButton->setText(QApplication::translate("Timerconfig", "OK", 0));
    } // retranslateUi

};

namespace Ui {
    class Timerconfig: public Ui_Timerconfig {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TIMERCONFIG_H
