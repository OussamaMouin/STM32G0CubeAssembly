/********************************************************************************
** Form generated from reading UI file 'config.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CONFIG_H
#define UI_CONFIG_H

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

class Ui_Config
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

    void setupUi(QDialog *Config)
    {
        if (Config->objectName().isEmpty())
            Config->setObjectName(QStringLiteral("Config"));
        Config->resize(329, 243);
        QFont font;
        font.setPointSize(8);
        Config->setFont(font);
        gridLayout = new QGridLayout(Config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        label = new QLabel(Config);
        label->setObjectName(QStringLiteral("label"));
        QFont font1;
        font1.setFamily(QStringLiteral("Montserrat Black"));
        font1.setPointSize(12);
        font1.setBold(false);
        font1.setItalic(false);
        font1.setWeight(10);
        label->setFont(font1);
        label->setStyleSheet(QLatin1String("font: 87 12pt \"Montserrat Black\";\n"
"color: rgb(11, 53, 94);"));

        horizontalLayout_5->addWidget(label);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_5->addItem(horizontalSpacer);

        label1 = new QLabel(Config);
        label1->setObjectName(QStringLiteral("label1"));

        horizontalLayout_5->addWidget(label1);


        verticalLayout->addLayout(horizontalLayout_5);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        Lmode = new QLabel(Config);
        Lmode->setObjectName(QStringLiteral("Lmode"));
        Lmode->setEnabled(true);
        QFont font2;
        font2.setFamily(QStringLiteral("Raleway Black"));
        font2.setPointSize(12);
        font2.setBold(true);
        font2.setWeight(75);
        Lmode->setFont(font2);

        horizontalLayout_3->addWidget(Lmode);

        label_2 = new QLabel(Config);
        label_2->setObjectName(QStringLiteral("label_2"));

        horizontalLayout_3->addWidget(label_2);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        Ltype = new QLabel(Config);
        Ltype->setObjectName(QStringLiteral("Ltype"));
        Ltype->setEnabled(true);
        Ltype->setFont(font2);

        horizontalLayout_2->addWidget(Ltype);

        TYPE = new QComboBox(Config);
        TYPE->setObjectName(QStringLiteral("TYPE"));
        TYPE->setEnabled(true);
        TYPE->setCursor(QCursor(Qt::PointingHandCursor));

        horizontalLayout_2->addWidget(TYPE);


        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        Lspeed = new QLabel(Config);
        Lspeed->setObjectName(QStringLiteral("Lspeed"));
        Lspeed->setEnabled(true);
        Lspeed->setFont(font2);

        horizontalLayout->addWidget(Lspeed);

        Speed = new QComboBox(Config);
        Speed->setObjectName(QStringLiteral("Speed"));
        Speed->setEnabled(true);
        Speed->setCursor(QCursor(Qt::PointingHandCursor));

        horizontalLayout->addWidget(Speed);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        Lpu_pd = new QLabel(Config);
        Lpu_pd->setObjectName(QStringLiteral("Lpu_pd"));
        Lpu_pd->setEnabled(true);
        Lpu_pd->setFont(font2);

        horizontalLayout_4->addWidget(Lpu_pd);

        Pu_Pd = new QComboBox(Config);
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

        pushButton = new QPushButton(Config);
        pushButton->setObjectName(QStringLiteral("pushButton"));

        horizontalLayout_6->addWidget(pushButton);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_3);


        verticalLayout_2->addLayout(horizontalLayout_6);


        gridLayout->addLayout(verticalLayout_2, 0, 0, 1, 1);


        retranslateUi(Config);

        QMetaObject::connectSlotsByName(Config);
    } // setupUi

    void retranslateUi(QDialog *Config)
    {
        Config->setWindowTitle(QApplication::translate("Config", "Dialog", 0));
        label->setText(QApplication::translate("Config", "GPIO Configuration", 0));
        label1->setText(QApplication::translate("Config", "TextLabel", 0));
        Lmode->setText(QApplication::translate("Config", "Mode:", 0));
        label_2->setText(QApplication::translate("Config", "Output", 0));
        Ltype->setText(QApplication::translate("Config", "Type ", 0));
        TYPE->clear();
        TYPE->insertItems(0, QStringList()
         << QApplication::translate("Config", "..", 0)
         << QApplication::translate("Config", "Push-Pull", 0)
         << QApplication::translate("Config", "Open Drain", 0)
        );
        Lspeed->setText(QApplication::translate("Config", "Speed", 0));
        Speed->clear();
        Speed->insertItems(0, QStringList()
         << QApplication::translate("Config", "..", 0)
         << QApplication::translate("Config", "Very Low Speed", 0)
         << QApplication::translate("Config", "Low Speed", 0)
         << QApplication::translate("Config", "High Speed", 0)
         << QApplication::translate("Config", "Very High Speed", 0)
        );
        Lpu_pd->setText(QApplication::translate("Config", "Pu_Pd", 0));
        Pu_Pd->clear();
        Pu_Pd->insertItems(0, QStringList()
         << QApplication::translate("Config", "..", 0)
         << QApplication::translate("Config", "No pull up /pull down resistor", 0)
         << QApplication::translate("Config", "pull up ", 0)
         << QApplication::translate("Config", "pull down", 0)
        );
        pushButton->setText(QApplication::translate("Config", "OK", 0));
    } // retranslateUi

};

namespace Ui {
    class Config: public Ui_Config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CONFIG_H
