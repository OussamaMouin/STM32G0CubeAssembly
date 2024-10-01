/********************************************************************************
** Form generated from reading UI file 'gpio.ui'
**
** Created by: Qt User Interface Compiler version 5.2.0
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_GPIO_H
#define UI_GPIO_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_GPIO
{
public:
    QWidget *layoutWidget;
    QVBoxLayout *verticalLayout_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label;
    QSpacerItem *horizontalSpacer;
    QLabel *label1;
    QHBoxLayout *horizontalLayout_3;
    QLabel *Lmode;
    QComboBox *TYPE;
    QHBoxLayout *horizontalLayout_2;
    QHBoxLayout *horizontalLayout;
    QHBoxLayout *horizontalLayout_4;
    QHBoxLayout *horizontalLayout_6;
    QSpacerItem *horizontalSpacer_2;
    QPushButton *pushButton;
    QSpacerItem *horizontalSpacer_3;

    void setupUi(QDialog *GPIO)
    {
        if (GPIO->objectName().isEmpty())
            GPIO->setObjectName(QStringLiteral("GPIO"));
        GPIO->resize(400, 300);
        layoutWidget = new QWidget(GPIO);
        layoutWidget->setObjectName(QStringLiteral("layoutWidget"));
        layoutWidget->setGeometry(QRect(50, 40, 275, 173));
        verticalLayout_2 = new QVBoxLayout(layoutWidget);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout_2->setContentsMargins(0, 0, 0, 0);
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        label = new QLabel(layoutWidget);
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

        label1 = new QLabel(layoutWidget);
        label1->setObjectName(QStringLiteral("label1"));

        horizontalLayout_5->addWidget(label1);


        verticalLayout->addLayout(horizontalLayout_5);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        Lmode = new QLabel(layoutWidget);
        Lmode->setObjectName(QStringLiteral("Lmode"));
        Lmode->setEnabled(true);
        QFont font1;
        font1.setFamily(QStringLiteral("Raleway Black"));
        font1.setPointSize(12);
        font1.setBold(true);
        font1.setWeight(75);
        Lmode->setFont(font1);

        horizontalLayout_3->addWidget(Lmode);

        TYPE = new QComboBox(layoutWidget);
        TYPE->setObjectName(QStringLiteral("TYPE"));
        TYPE->setEnabled(true);
        TYPE->setCursor(QCursor(Qt::PointingHandCursor));

        horizontalLayout_3->addWidget(TYPE);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));

        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));

        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));

        verticalLayout->addLayout(horizontalLayout_4);


        verticalLayout_2->addLayout(verticalLayout);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QStringLiteral("horizontalLayout_6"));
        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_2);

        pushButton = new QPushButton(layoutWidget);
        pushButton->setObjectName(QStringLiteral("pushButton"));

        horizontalLayout_6->addWidget(pushButton);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_3);


        verticalLayout_2->addLayout(horizontalLayout_6);


        retranslateUi(GPIO);

        QMetaObject::connectSlotsByName(GPIO);
    } // setupUi

    void retranslateUi(QDialog *GPIO)
    {
        GPIO->setWindowTitle(QApplication::translate("GPIO", "Dialog", 0));
        label->setText(QApplication::translate("GPIO", "GPIO Configuration", 0));
        label1->setText(QApplication::translate("GPIO", "TextLabel", 0));
        Lmode->setText(QApplication::translate("GPIO", "Mode:", 0));
        TYPE->clear();
        TYPE->insertItems(0, QStringList()
         << QApplication::translate("GPIO", "..", 0)
         << QApplication::translate("GPIO", "Output", 0)
         << QApplication::translate("GPIO", "Input", 0)
        );
        pushButton->setText(QApplication::translate("GPIO", "OK", 0));
    } // retranslateUi

};

namespace Ui {
    class GPIO: public Ui_GPIO {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_GPIO_H
