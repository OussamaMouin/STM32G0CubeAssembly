/********************************************************************************
** Form generated from reading UI file 'configi.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CONFIGI_H
#define UI_CONFIGI_H

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

class Ui_configI
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
    QLabel *Lmode;
    QLabel *label_2;
    QHBoxLayout *horizontalLayout_2;
    QLabel *Ltype;
    QComboBox *TYPE;
    QHBoxLayout *horizontalLayout;
    QLabel *Lspeed;
    QComboBox *Speed;
    QHBoxLayout *horizontalLayout_4;
    QLabel *Lpu_pd;
    QComboBox *Pu_Pd;
    QHBoxLayout *horizontalLayout_6;
    QSpacerItem *horizontalSpacer_2;
    QPushButton *pushButton;
    QSpacerItem *horizontalSpacer_3;

    void setupUi(QDialog *configI)
    {
        if (configI->objectName().isEmpty())
            configI->setObjectName(QStringLiteral("configI"));
        configI->resize(346, 226);
        gridLayout = new QGridLayout(configI);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        label = new QLabel(configI);
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

        label1 = new QLabel(configI);
        label1->setObjectName(QStringLiteral("label1"));

        horizontalLayout_5->addWidget(label1);


        verticalLayout->addLayout(horizontalLayout_5);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        Lmode = new QLabel(configI);
        Lmode->setObjectName(QStringLiteral("Lmode"));
        Lmode->setEnabled(true);
        QFont font1;
        font1.setFamily(QStringLiteral("Raleway Black"));
        font1.setPointSize(12);
        font1.setBold(true);
        font1.setWeight(75);
        Lmode->setFont(font1);

        horizontalLayout_3->addWidget(Lmode);

        label_2 = new QLabel(configI);
        label_2->setObjectName(QStringLiteral("label_2"));

        horizontalLayout_3->addWidget(label_2);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        Ltype = new QLabel(configI);
        Ltype->setObjectName(QStringLiteral("Ltype"));
        Ltype->setEnabled(false);
        Ltype->setFont(font1);

        horizontalLayout_2->addWidget(Ltype);

        TYPE = new QComboBox(configI);
        TYPE->setObjectName(QStringLiteral("TYPE"));
        TYPE->setEnabled(false);
        TYPE->setCursor(QCursor(Qt::PointingHandCursor));

        horizontalLayout_2->addWidget(TYPE);


        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        Lspeed = new QLabel(configI);
        Lspeed->setObjectName(QStringLiteral("Lspeed"));
        Lspeed->setEnabled(false);
        Lspeed->setFont(font1);

        horizontalLayout->addWidget(Lspeed);

        Speed = new QComboBox(configI);
        Speed->setObjectName(QStringLiteral("Speed"));
        Speed->setEnabled(false);
        Speed->setCursor(QCursor(Qt::PointingHandCursor));

        horizontalLayout->addWidget(Speed);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        Lpu_pd = new QLabel(configI);
        Lpu_pd->setObjectName(QStringLiteral("Lpu_pd"));
        Lpu_pd->setEnabled(true);
        Lpu_pd->setFont(font1);

        horizontalLayout_4->addWidget(Lpu_pd);

        Pu_Pd = new QComboBox(configI);
        Pu_Pd->setObjectName(QStringLiteral("Pu_Pd"));
        Pu_Pd->setEnabled(true);
        Pu_Pd->setCursor(QCursor(Qt::PointingHandCursor));

        horizontalLayout_4->addWidget(Pu_Pd);


        verticalLayout->addLayout(horizontalLayout_4);


        verticalLayout_2->addLayout(verticalLayout);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QStringLiteral("horizontalLayout_6"));
        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_2);

        pushButton = new QPushButton(configI);
        pushButton->setObjectName(QStringLiteral("pushButton"));

        horizontalLayout_6->addWidget(pushButton);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_3);


        verticalLayout_2->addLayout(horizontalLayout_6);


        gridLayout->addLayout(verticalLayout_2, 0, 0, 1, 1);


        retranslateUi(configI);

        QMetaObject::connectSlotsByName(configI);
    } // setupUi

    void retranslateUi(QDialog *configI)
    {
        configI->setWindowTitle(QApplication::translate("configI", "Dialog", 0));
        label->setText(QApplication::translate("configI", "GPIO Configuration", 0));
        label1->setText(QApplication::translate("configI", "TextLabel", 0));
        Lmode->setText(QApplication::translate("configI", "Mode:", 0));
        label_2->setText(QApplication::translate("configI", "Input", 0));
        Ltype->setText(QApplication::translate("configI", "Type ", 0));
        TYPE->clear();
        TYPE->insertItems(0, QStringList()
         << QApplication::translate("configI", "..", 0)
         << QApplication::translate("configI", "Push-Pull", 0)
         << QApplication::translate("configI", "Open Drain", 0)
        );
        Lspeed->setText(QApplication::translate("configI", "Speed", 0));
        Speed->clear();
        Speed->insertItems(0, QStringList()
         << QApplication::translate("configI", "..", 0)
         << QApplication::translate("configI", "Very Low Speed", 0)
         << QApplication::translate("configI", "Low Speed", 0)
         << QApplication::translate("configI", "High Speed", 0)
         << QApplication::translate("configI", "Very High Speed", 0)
        );
        Lpu_pd->setText(QApplication::translate("configI", "Pu_Pd", 0));
        Pu_Pd->clear();
        Pu_Pd->insertItems(0, QStringList()
         << QApplication::translate("configI", "..", 0)
         << QApplication::translate("configI", "No pull up /pull down resistor", 0)
         << QApplication::translate("configI", "pull up ", 0)
         << QApplication::translate("configI", "pull down", 0)
        );
        pushButton->setText(QApplication::translate("configI", "OK", 0));
    } // retranslateUi

};

namespace Ui {
    class configI: public Ui_configI {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CONFIGI_H
