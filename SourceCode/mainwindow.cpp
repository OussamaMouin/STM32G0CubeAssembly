#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "config.h"
#include "configi.h"
#include <QFile>
#include <QPixmap>
#include <QGraphicsPixmapItem>
#include <QGraphicsScene>
#include <QFileDialog>
#include "QDebug"
#include <QVector>
#include "dbconn.h"
#include <QtSql>
#include <QThread>
#include <QMessageBox>
#include <QVector>

QString tim_reform(QString t);
QString Affect_Mode_Register();
QString Affect_Type_Register();
QString Affect_Speed_Register();
QString Affect_PUPD_Register();

QString Pin_Param(QString Pin_number);
QString Mode_Param(int Mode);
QString Adress_Param(int PORT);
QString OTYPE_Param(int type);
QString OSPEED_Param(int speed);
QString PUPD_Param(int pupd);

QString clk_act(int PORT);
QString UART_ACT(QString N);
QString Enable(QString pin,QString Number,QString Type);
QString WORD_LENGTH(QString WL);

void Reset_DB();
void Activated_Pin_Data(int pin);
void Pin_Data_Collection(int pin,QString port,int gpio_pin,QString Type);
void Reset(int pin);

QString extract_type(int pin);
QVector <QString> Fill_Gpio_code(QVector <QString> GPIO_DATA);
QVector <QString> Extract_Data_GPIO(int pin);
QVector <QString> Fill_Timer_Code(int pin);
QVector <QString> Fill_Adc_Code(int pin);
QVector <QString> Fill_UART_code(int i);
QVector <QString> Alternate_Function_config(int pin);
QVector <QString> Fill_Gpio_code(int pin);
QVector <QString> Extract_Data_UART(int pin);
QVector <QString> Fill_RCC_code();
QVector <QString> Code;
QString fileName="";


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    QPixmap pix("./LOGO.png");
    int w = ui->label->width();
    int h = ui->label->height();
    ui->label->setPixmap(pix.scaled(w,h,Qt::KeepAspectRatio));
    QPixmap pi("./ST.jpg");
    int w1 = ui->label1->width();
    int h1 = ui->label1->height();
    ui->label1->setPixmap(pi.scaled(w1,h1,Qt::KeepAspectRatio));
    QString buttonStyleSheetAfter = "QPushButton { background-color: green;color: white; font: 10pt ""Montserrat"";}";
    QString buttonStyleSheet = "QPushButton { background-color: rgb(185, 185, 185);color: black; font: 10pt ""Montserrat"";}";
    Reset_DB();
    CFI = new configI(this);
    CF = new Config(this);
    TC = new Timerconfig(this);
    UC = new UARTConfig(this);


    //PIN1
    QMenu *PC14 = new QMenu("PC14",this);
    QMenu *PB7 = new QMenu("PB7",this);
    QMenu *PB8 = new QMenu("PB8",this);
    QMenu *PB9 = new QMenu("PB9",this);
    QMenu *pin1 = new QMenu(this);

    PC14->addAction("Reset_State");
    PC14->addAction("GPIO_Input");
    PC14->addAction("GPIO_Output");

    PB7->addAction("Reset_State");
    PB7->addAction("GPIO_Input");
    PB7->addAction("GPIO_Output");
    PB7->addAction("TIM17_CH1N");
    PB7->addAction("ADC1_IN11");
    PB7->addAction("USART1_RX");

    PB8->addAction("Reset_State");
    PB8->addAction("GPIO_Input");
    PB8->addAction("GPIO_Output");
    PB8->addAction("TIM16_CH1");

    PB9->addAction("Reset_State");
    PB9->addAction("GPIO_Input");
    PB9->addAction("GPIO_Output");

    PB9->addAction("TIM17_CH1");

    pin1->addMenu(PB7);
    pin1->addMenu(PB8);
    pin1->addMenu(PB9);
    pin1->addMenu(PC14);

    //PIN4
    QMenu *PF2 = new QMenu("PF2",this);
    QMenu *PA0 = new QMenu("PA0",this);
    QMenu *PA1 = new QMenu("PA1",this);
    QMenu *PA2 = new QMenu("PA2",this);
    QMenu *pin4 = new QMenu(this);

    PF2->addAction("Reset_State");
    PF2->addAction("GPIO_Input");
    PF2->addAction("GPIO_Output");

    PA0->addAction("Reset_State");
    PA0->addAction("GPIO_Input");
    PA0->addAction("GPIO_Output");
    PA0->addAction("TIM2_CH1");
    PA0->addAction("ADC1_IN0");

    PA1->addAction("Reset_State");
    PA1->addAction("GPIO_Input");
    PA1->addAction("GPIO_Output");
    PA1->addAction("TIM2_CH2");
    PA1->addAction("ADC1_IN1");

    PA2->addAction("Reset_State");
    PA2->addAction("GPIO_Input");
    PA2->addAction("GPIO_Output");
    PA2->addAction("TIM2_CH3");
    PA2->addAction("ADC1_IN2");
    PA2->addAction("USART2_TX");

    pin4->addMenu(PA0);
    pin4->addMenu(PA1);
    pin4->addMenu(PA2);
    pin4->addMenu(PF2);

    //PIN7
    QMenu *PA13 = new QMenu("PA13",this);
    QMenu *pin7 = new QMenu(this);

    PA13->addAction("Reset_State");
    PA13->addAction("GPIO_Input");
    PA13->addAction("GPIO_Output");
    PA13->addAction("ADC1_IN17");

    pin7->addMenu(PA13);

    //PIN6
    QMenu *PA12= new QMenu("PA12",this);
    QMenu *pin6 = new QMenu(this);

    PA12->addAction("Reset_State");
    PA12->addAction("GPIO_Input");
    PA12->addAction("GPIO_Output");
    PA12->addAction("ADC1_IN16");

    pin6->addMenu(PA12);

    //PIN8
    QMenu *PA14 = new QMenu("PA14",this);
    QMenu *PA15 = new QMenu("PA15",this);
    QMenu *PB5 = new QMenu("PB5",this);
    QMenu *PB6 = new QMenu("PB6",this);
    QMenu *pin8 = new QMenu(this);

    PA14->addAction("Reset_State");
    PA14->addAction("GPIO_Input");
    PA14->addAction("GPIO_Output");
    PA14->addAction("USART2_TX");
    PA14->addAction("ADC1_IN18");

    PA15->addAction("Reset_State");
    PA15->addAction("GPIO_Input");
    PA15->addAction("GPIO_Output");
    PA15->addAction("TIM2_CH1");
    PA15->addAction("USART2_RX");

    PB5->addAction("Reset_State");
    PB5->addAction("GPIO_Input");
    PB5->addAction("GPIO_Output");
    PB5->addAction("TIM3_CH2");

    PB6->addAction("Reset_State");
    PB6->addAction("GPIO_Input");
    PB6->addAction("GPIO_Output");
    PB6->addAction("USART1_TX");
    PB6->addAction("TIM1_CH3");

    pin8->addMenu(PA14);
    pin8->addMenu(PA15);
    pin8->addMenu(PB5);
    pin8->addMenu(PB6);

    //PIN5
    QMenu *PB0 = new QMenu("PB0",this);
    QMenu *PB1 = new QMenu("PB1",this);
    QMenu *PA8 = new QMenu("PA8",this);
    QMenu *PA11 = new QMenu("PA11",this);
    QMenu *pin5 = new QMenu(this);

    PB0->addAction("Reset_State");
    PB0->addAction("GPIO_Input");
    PB0->addAction("GPIO_Output");
    PB0->addAction("TIM3_CH3");
    PB0->addAction("ADC1_IN8");

    PB1->addAction("Reset_State");
    PB1->addAction("GPIO_Input");
    PB1->addAction("GPIO_Output");
    PB1->addAction("TIM14_CH1");
    PB1->addAction("TIM1_CH3N");
    PB1->addAction("TIM3_CH4");
    PB1->addAction("ADC1_IN9");

    PA8->addAction("Reset_State");
    PA8->addAction("GPIO_Input");
    PA8->addAction("GPIO_Output");
    PA8->addAction("TIM1_CH1");

    PA11->addAction("Reset_State");
    PA11->addAction("GPIO_Input");
    PA11->addAction("GPIO_Output");
    PA11->addAction("ADC1_IN15");
    PA11->addAction("TIM1_CH4");

    pin5->addMenu(PB0);
    pin5->addMenu(PB1);
    pin5->addMenu(PA8);
    pin5->addMenu(PA11);
    //PIN5
    connect(ui->pin5, &QPushButton::clicked, this, [=]() {
        pin5->exec(ui->pin5->mapToGlobal(QPoint(0, ui->pin1->height())));
        connect(PB0->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin5->setStyleSheet(buttonStyleSheet);
            ui->pin5->setText("Pin5");
            ui->label_10->setText("");
            Reset(5);

        });
        connect(PB0->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB0");
            ui->label_10->setText("GPIO_INPUT");
            Pin_Data_Collection(5,"B",0,"INPUT");
            Activated_Pin_Data(5);

        });

        connect(PB0->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB0");
            ui->label_10->setText("GPIO_OUTPUT");
            Pin_Data_Collection(5,"B",0,"OUTPUT");
            Activated_Pin_Data(5);

        });
        connect(PB0->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB0");
            ui->label_10->setText("TIM3_CH3");
            Pin_Data_Collection(5,"B",0,"TIM3_CH3");
            Activated_Pin_Data(5);

        });
        connect(PB0->actions().at(4), &QAction::triggered, this, [=]() {
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB0");
            ui->label_10->setText("ADC1_IN8");
            Pin_Data_Collection(5,"B",0,"ADC1_IN8");
            Activated_Pin_Data(5);

        });




        connect(PB1->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin5->setStyleSheet(buttonStyleSheet);
            ui->pin5->setText("Pin5");
            ui->label_10->setText("");
            Reset(5);

        });
        connect(PB1->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB1");
            ui->label_10->setText("GPIO_INPUT");
            Pin_Data_Collection(5,"B",1,"INPUT");
            Activated_Pin_Data(5);

        });

        connect(PB1->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB1");
            ui->label_10->setText("GPIO_OUTPUT");
            Pin_Data_Collection(5,"B",1,"OUTPUT");
            Activated_Pin_Data(5);

        });
        connect(PB1->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB1");
            ui->label_10->setText("TIM14_CH1");
            Pin_Data_Collection(5,"B",1,"TIM14_CH1");
            Activated_Pin_Data(5);

        });
        connect(PB1->actions().at(4), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB1");
            ui->label_10->setText("TIM1_CH3N");
            Pin_Data_Collection(5,"B",1,"TIM1_CH3N");
            Activated_Pin_Data(5);

        });
        connect(PB1->actions().at(5), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB1");
            ui->label_10->setText("TIM3_CH4");
            Pin_Data_Collection(5,"B",1,"TIM3_CH4");
            Activated_Pin_Data(5);

        });
        connect(PB1->actions().at(6), &QAction::triggered, this, [=]() {
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PB1");
            ui->label_10->setText("ADC1_IN9");
            Pin_Data_Collection(5,"B",1,"ADC1_IN9");
            Activated_Pin_Data(5);

        });
        connect(PA8->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin5->setStyleSheet(buttonStyleSheet);
            ui->pin5->setText("Pin5");
            ui->label_10->setText("");
            Reset(5);

        });
        connect(PA8->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PA8");
            ui->label_10->setText("GPIO_INPUT");
            Pin_Data_Collection(5,"A",8,"INPUT");
            Activated_Pin_Data(5);

        });

        connect(PA8->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PA8");
            ui->label_10->setText("GPIO_OUTPUT");
            Pin_Data_Collection(5,"A",8,"OUTPUT");
            Activated_Pin_Data(5);

        });
        connect(PA8->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PA8");
            ui->label_10->setText("TIM1_CH1");
            Pin_Data_Collection(5,"A",8,"TIM1_CH1");
            Activated_Pin_Data(5);

        });
        connect(PA11->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin5->setStyleSheet(buttonStyleSheet);
            ui->pin5->setText("Pin5");
            ui->label_10->setText("");
            Reset(5);

        });
        connect(PA11->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PA11");
            ui->label_10->setText("GPIO_INPUT");
            Pin_Data_Collection(5,"A",11,"INPUT");
            Activated_Pin_Data(5);

        });

        connect(PA11->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PA11");
            ui->label_10->setText("GPIO_OUTPUT");
            Pin_Data_Collection(5,"A",11,"OUTPUT");
            Activated_Pin_Data(5);

        });
        connect(PA11->actions().at(3), &QAction::triggered, this, [=]() {
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PA11");
            ui->label_10->setText("ADC1_IN15");
            Pin_Data_Collection(5,"A",11,"ADC1_IN15");
            Activated_Pin_Data(5);

        });
        connect(PA11->actions().at(4), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin5->setStyleSheet(buttonStyleSheetAfter);
            ui->pin5->setText("PA11");
            ui->label_10->setText("TIM1_CH4");
            Pin_Data_Collection(5,"A",11,"TIM1_CH4");
            Activated_Pin_Data(5);

        });





    });

    //PIN1
    connect(ui->pin1, &QPushButton::clicked, this, [=]() {
        pin1->exec(ui->pin1->mapToGlobal(QPoint(0, ui->pin1->height())));
        connect(PC14->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin1->setStyleSheet(buttonStyleSheet);
            ui->pin1->setText("Pin1");
            ui->label_5->setText("");
            Reset(1);

        });
        connect(PC14->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PC14");
            ui->label_5->setText("GPIO_INPUT");
            Pin_Data_Collection(1,"C",14,"INPUT");
            Activated_Pin_Data(1);

        });

        connect(PC14->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PC14");
            ui->label_5->setText("GPIO_OUTPUT");
            Pin_Data_Collection(1,"C",14,"OUTPUT");
            Activated_Pin_Data(1);

        });






        connect(PB7->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin1->setStyleSheet(buttonStyleSheet);
            ui->pin1->setText("Pin1");
            ui->label_5->setText("");
            Reset(1);
        });
        connect(PB7->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB7");
            ui->label_5->setText("GPIO_INPUT");
            Pin_Data_Collection(1,"B",7,"INPUT");
            Activated_Pin_Data(1);

        });
        connect(PB7->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB7");
            ui->label_5->setText("GPIO_OUTPUT");
            Pin_Data_Collection(1,"B",7,"OUTPUT");
            Activated_Pin_Data(1);

        });

        connect(PB7->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB7");
            ui->label_5->setText("TIM1_CH1N");
            Pin_Data_Collection(1,"B",7,"TIM1_CH1N");
            Activated_Pin_Data(1);

        });

        connect(PB7->actions().at(4), &QAction::triggered, this, [=]() {
            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB7");
            ui->label_5->setText("ADC1_IN11");
            Pin_Data_Collection(1,"B",7,"ADC_IN11");
            Activated_Pin_Data(1);


        });

        connect(PB7->actions().at(5), &QAction::triggered, this, [=]() {
            UC->show();
            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB7");
            ui->label_5->setText("USART1_RX");
            Pin_Data_Collection(1,"B",7,"USART1_RX");
            Activated_Pin_Data(1);
        });



        connect(PB8->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin1->setStyleSheet(buttonStyleSheet);
            ui->pin1->setText("Pin1");
            ui->label_5->setText("");
            Reset(1);

        });
        connect(PB8->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB8");
            ui->label_5->setText("GPIO_INPUT");
            Pin_Data_Collection(1,"B",8,"INPUT");
            Activated_Pin_Data(1);
        });

        connect(PB8->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB8");
            ui->label_5->setText("GPIO_OUTPUT");
            Pin_Data_Collection(1,"B",8,"OUTPUT");
            Activated_Pin_Data(1);
        });

        connect(PB8->actions().at(2), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB8");
            ui->label_5->setText("TIM16_CH1");
            Pin_Data_Collection(1,"B",8,"TIM16_CH1");
            Activated_Pin_Data(1);
        });




        connect(PB9->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin1->setStyleSheet(buttonStyleSheet);
            ui->pin1->setText("Pin1");
            ui->label_5->setText("");
            Reset(1);

        });
        connect(PB9->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB9");
            ui->label_5->setText("GPIO_INPUT");
            Pin_Data_Collection(1,"B",9,"INPUT");
            Activated_Pin_Data(1);
        });
        connect(PB9->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB9");
            ui->label_5->setText("GPIO_OUTPUT");
            Pin_Data_Collection(1,"B",9,"OUTPUT");
            Activated_Pin_Data(1);
        });

        connect(PB9->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin1->setStyleSheet(buttonStyleSheetAfter);
            ui->pin1->setText("PB9");
            ui->label_5->setText("TIM17_CH1");
            Pin_Data_Collection(1,"B",9,"TIM17_CH1");
            Activated_Pin_Data(1);
        });




    });

    //PIN4
    connect(ui->pin4, &QPushButton::clicked, this, [=]() {
        pin4->exec(ui->pin4->mapToGlobal(QPoint(0, ui->pin4->height())));
        connect(PF2->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin4->setStyleSheet(buttonStyleSheet);
            ui->pin4->setText("pin4");
            ui->label_6->setText("");
            Reset(4);

        });
        connect(PF2->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PF2");
            ui->label_6->setText("GPIO_INPUT");
            Pin_Data_Collection(4,"F",2,"INPUT");
            Activated_Pin_Data(4);
        });
        connect(PF2->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PF2");
            ui->label_6->setText("GPIO_OUTPUT");
            Pin_Data_Collection(4,"F",2,"OUTPUT");
            Activated_Pin_Data(4);
        });






        connect(PA0->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin4->setStyleSheet(buttonStyleSheet);
            ui->pin4->setText("Pin4");
            ui->label_6->setText("");

        });

        connect(PA0->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA0");
            ui->label_6->setText("GPIO_INPUT");
            Pin_Data_Collection(4,"A",0,"INPUT");
            Activated_Pin_Data(4);
        });
        connect(PA0->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA0");
            ui->label_6->setText("GPIO_OUTPUT");
            Pin_Data_Collection(4,"A",0,"OUTPUT");
            Activated_Pin_Data(4);
        });


        connect(PA0->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA0");
            ui->label_6->setText("TIM2_CH1");
            Pin_Data_Collection(4,"A",0,"TIM2_CH1");
            Activated_Pin_Data(4);
        });

        connect(PA0->actions().at(4), &QAction::triggered, this, [=]() {
            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA0");
            ui->label_6->setText("ADC1_IN0");
            Pin_Data_Collection(4,"A",0,"ADC1_IN0");
            Activated_Pin_Data(4);
        });




        connect(PA1->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin4->setStyleSheet(buttonStyleSheet);
            ui->pin4->setText("Pin4");
            ui->label_6->setText("");
            Reset(4);

        });
        connect(PA1->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA1");
            ui->label_6->setText("GPIO_INPUT");
            Pin_Data_Collection(4,"A",1,"INPUT");
            Activated_Pin_Data(4);
        });

        connect(PA1->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA1");
            ui->label_6->setText("GPIO_OUTPUT");
            Pin_Data_Collection(4,"A",1,"OUTPUT");
            Activated_Pin_Data(4);
        });

        connect(PA1->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA1");
            ui->label_6->setText("TIM2_CH2");
            Pin_Data_Collection(4,"A",1,"TIM2_CH2");
            Activated_Pin_Data(4);

        });

        connect(PA1->actions().at(4), &QAction::triggered, this, [=]() {
            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA1");
            ui->label_6->setText("ADC1_IN1");
            Pin_Data_Collection(4,"A",1,"ADC1_IN1");
            Activated_Pin_Data(4);
        });


        connect(PA2->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin4->setStyleSheet(buttonStyleSheet);
            ui->pin4->setText("Pin4");
            ui->label_6->setText("");
            Reset(4);

        });
        connect(PA2->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA2");
            ui->label_6->setText("GPIO_INPUT");
            Pin_Data_Collection(4,"A",2,"INPUT");
            Activated_Pin_Data(4);
        });
        connect(PA2->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA2");
            ui->label_6->setText("GPIO_OUTPUT");
            Pin_Data_Collection(4,"A",2,"OUTPUT");
            Activated_Pin_Data(4);
        });


        connect(PA2->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA2");
            ui->label_6->setText("TIM2_CH3");
            Pin_Data_Collection(4,"A",2,"TIM2_CH3");
            Activated_Pin_Data(4);
        });


        connect(PA2->actions().at(4), &QAction::triggered, this, [=]() {
            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA2");
            ui->label_6->setText("ADC1_IN2");
            Pin_Data_Collection(4,"A",2,"ADC1_IN2");
            Activated_Pin_Data(4);

        });
        connect(PA2->actions().at(5), &QAction::triggered, this, [=]() {
            UC->show();
            ui->pin4->setStyleSheet(buttonStyleSheetAfter);
            ui->pin4->setText("PA2");
            ui->label_6->setText("USART2_TX");
            Pin_Data_Collection(4,"A",2,"USART2_TX");
            Activated_Pin_Data(4);

        });


    });

    //PIN6
    connect(ui->pin6, &QPushButton::clicked, this, [=]() {
        pin6->exec(ui->pin6->mapToGlobal(QPoint(0, ui->pin1->height())));
        connect(PA12->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin6->setStyleSheet(buttonStyleSheet);
            ui->pin6->setText("Pin6");
            ui->label_9->setText("");
            Reset(6);

        });
        connect(PA12->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin6->setStyleSheet(buttonStyleSheetAfter);
            ui->pin6->setText("PA12");
            ui->label_9->setText("GPIO_INPUT");
            Pin_Data_Collection(6,"A",12,"INPUT");
            Activated_Pin_Data(6);
        });
        connect(PA12->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin6->setStyleSheet(buttonStyleSheetAfter);
            ui->pin6->setText("PA12");
            ui->label_9->setText("GPIO_OUTPUT");
            Pin_Data_Collection(6,"A",12,"OUTPUT");
            Activated_Pin_Data(6);
        });

        connect(PA12->actions().at(3), &QAction::triggered, this, [=]() {
            ui->pin6->setStyleSheet(buttonStyleSheetAfter);
            ui->pin6->setText("PA12");
            ui->label_9->setText("ADC1_IN16");
            Pin_Data_Collection(6,"A",12,"ADC1_IN16");
            Activated_Pin_Data(6);
        });



    });
    //PIN7
    connect(ui->pin7, &QPushButton::clicked, this, [=]() {
        pin7->exec(ui->pin7->mapToGlobal(QPoint(0, ui->pin7->height())));
        connect(PA13->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin7->setStyleSheet(buttonStyleSheet);
            ui->pin7->setText("pin7");
            ui->label_8->setText("");
            Reset(7);


        });
        connect(PA13->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin7->setStyleSheet(buttonStyleSheetAfter);
            ui->pin7->setText("PA13");
            ui->label_8->setText("GPIO_INPUT");
            Pin_Data_Collection(7,"A",13,"OUTPUT");
            Activated_Pin_Data(7);


        });
        connect(PA13->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin7->setStyleSheet(buttonStyleSheetAfter);
            ui->pin7->setText("PA13");
            ui->label_8->setText("GPIO_OUTPUT");
            Pin_Data_Collection(7,"A",13,"OUTPUT");
            Activated_Pin_Data(7);


        });

        connect(PA13->actions().at(3), &QAction::triggered, this, [=]() {
            ui->pin7->setStyleSheet(buttonStyleSheetAfter);
            ui->pin7->setText("PA13");
            ui->label_8->setText("ADC1_IN17");
            Pin_Data_Collection(7,"A",13,"ADC1_IN17");
            Activated_Pin_Data(7);

        });



    });
    //PIN8
    connect(ui->pin8, &QPushButton::clicked, this, [=]() {
        pin8->exec(ui->pin8->mapToGlobal(QPoint(0, ui->pin8->height())));
        connect(PA14->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin8->setStyleSheet(buttonStyleSheet);
            ui->pin8->setText("Pin8");
            ui->label_7->setText("");
            Reset(8);

        });
        connect(PA14->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PA14");
            ui->label_7->setText("GPIO_INPUT");
            Pin_Data_Collection(8,"A",14,"INPUT");
            Activated_Pin_Data(8);

        });

        connect(PA14->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PA14");
            ui->label_7->setText("GPIO_OUTPUT");
            Pin_Data_Collection(8,"A",14,"OUTPUT");
            Activated_Pin_Data(8);

        });
        connect(PA14->actions().at(3), &QAction::triggered, this, [=]() {
            UC->show();
            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PA14");
            ui->label_7->setText("USART2_TX");
            Pin_Data_Collection(8,"A",14,"USART2_TX");
            Activated_Pin_Data(8);

        });
        connect(PA14->actions().at(4), &QAction::triggered, this, [=]() {
            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PA14");
            ui->label_7->setText("ADC1_IN18");
            Pin_Data_Collection(8,"A",14,"ADC1_IN18");
            Activated_Pin_Data(8);

        });






        connect(PA15->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin8->setStyleSheet(buttonStyleSheet);
            ui->pin8->setText("Pin8");
            ui->label_7->setText("");
            Reset(8);
        });
        connect(PA15->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PA15");
            ui->label_7->setText("GPIO_INPUT");
            Pin_Data_Collection(8,"A",15,"INPUT");
            Activated_Pin_Data(8);

        });
        connect(PA15->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PA15");
            ui->label_7->setText("GPIO_OUTPUT");
            Pin_Data_Collection(8,"A",15,"OUTPUT");
            Activated_Pin_Data(8);

        });

        connect(PA15->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PA15");
            ui->label_7->setText("TIM2_CH1");
            Pin_Data_Collection(8,"A",15,"TIM2_CH1");
            Activated_Pin_Data(8);

        });

        connect(PA15->actions().at(4), &QAction::triggered, this, [=]() {
            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PA15");
            ui->label_7->setText("USART2_RX");
            Pin_Data_Collection(8,"A",15,"USART2_RX");
            Activated_Pin_Data(8);


        });


        connect(PB5->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin8->setStyleSheet(buttonStyleSheet);
            ui->pin8->setText("Pin8");
            ui->label_7->setText("");
            Reset(8);

        });
        connect(PB5->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PB5");
            ui->label_7->setText("GPIO_INPUT");
            Pin_Data_Collection(8,"B",5,"INPUT");
            Activated_Pin_Data(8);
        });

        connect(PB5->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PB5");
            ui->label_7->setText("GPIO_OUTPUT");
            Pin_Data_Collection(8,"A",5,"OUTPUT");
            Activated_Pin_Data(8);
        });

        connect(PB5->actions().at(3), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PB5");
            ui->label_7->setText("TIM3_CH2");
            Pin_Data_Collection(8,"B",8,"TIM3_CH2");
            Activated_Pin_Data(8);
        });




        connect(PB6->actions().at(0), &QAction::triggered, this, [=]() {
            ui->pin8->setStyleSheet(buttonStyleSheet);
            ui->pin8->setText("Pin8");
            ui->label_7->setText("");
            Reset(8);

        });
        connect(PB6->actions().at(1), &QAction::triggered, this, [=]() {

            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PB6");
            ui->label_7->setText("GPIO_INPUT");
            Pin_Data_Collection(8,"B",9,"INPUT");
            Activated_Pin_Data(8);
        });
        connect(PB6->actions().at(2), &QAction::triggered, this, [=]() {

            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PB6");
            ui->label_7->setText("GPIO_OUTPUT");
            Pin_Data_Collection(8,"B",6,"OUTPUT");
            Activated_Pin_Data(8);
        });

        connect(PB6->actions().at(3), &QAction::triggered, this, [=]() {
            UC->show();
            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PB6");
            ui->label_7->setText("USART1_TX");
            Pin_Data_Collection(8,"B",6,"USART1_TX");
            Activated_Pin_Data(8);
        });

        connect(PB6->actions().at(4), &QAction::triggered, this, [=]() {
            TC->show();
            ui->pin8->setStyleSheet(buttonStyleSheetAfter);
            ui->pin8->setText("PB6");
            ui->label_7->setText("TIM1_CH3");
            Pin_Data_Collection(8,"B",6,"TIM1_CH3");
            Activated_Pin_Data(8);
        });




    });



}
MainWindow::~MainWindow()
{
    delete ui;
}
void MainWindow::on_GenerateButton_clicked()
{
    Code={""};
    //Begin_Code(Code);
    Code.push_back(";----Includes BEGIN");
    Code.push_back("");
    Code.push_back(" INCLUDE stm32G0_constants.s");
    Code.push_back(" INCLUDE core_cm0_plus_constants.s");
    Code.push_back("");
    Code.push_back(";----Includes END");
    Code.push_back(" AREA main,Code,READONLY");
    Code.push_back(" EXPORT __main");
    Code.push_back(" ENTRY");
    Code.push_back("__main PROC");
    Code.push_back(";USER CODE BEGIN 1");
    QVector <QString> A,B,C,D;
    Code.push_back("");
    Code.push_back("");
    D=Fill_RCC_code();
    Code.push_back(" BL "+D[0].mid(0,D[0].length()-5));
    // pin 1
    if((extract_type(1)=="OUTPUT") or (extract_type(1)=="INPUT"))
    {
        C = Fill_Gpio_code(1);
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
    }

    else if(extract_type(1).mid(0,5)=="USART")
    {
        C = Fill_UART_code(1);
        B = Alternate_Function_config(1);
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
        Code.push_back(" BL "+B[0].mid(0,B[0].length()-5));

    }
    else if(extract_type(1).mid(0,3)=="TIM")
    {
        A=Fill_Timer_Code(1);
        Code.push_back(" BL "+A[0].mid(0,A[0].length()-5));
    }
    else if(extract_type(1).mid(0,3)=="ADC")
    {
        A=Fill_Adc_Code(1);
        Code.push_back(" BL "+A[1].mid(0,A[1].length()-5));

    }
    // pin 4
    if((extract_type(4)=="OUTPUT") or (extract_type(4)=="INPUT"))
    {

        C = Fill_Gpio_code(4);
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
    }
    else if(extract_type(4).mid(0,3)=="TIM")
    {
        A=Fill_Timer_Code(4);
        Code.push_back(" BL "+A[0].mid(0,A[0].length()-5));

    }
    else if(extract_type(4).mid(0,5)=="USART")
    {
        C = Fill_UART_code(4);
        B = Alternate_Function_config(4);
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
        Code.push_back(" BL "+B[0].mid(0,B[0].length()-5));
    }
    else if(extract_type(4).mid(0,3)=="ADC")
    {
        A=Fill_Adc_Code(4);
        Code.push_back(" BL "+A[1].mid(0,A[1].length()-5));
    }

    // pin 5

    if((extract_type(5)=="OUTPUT") or (extract_type(5)=="INPUT"))
    {

        C = Fill_Gpio_code(5);
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
    }
    else if(extract_type(5).mid(0,3)=="TIM")
    {
        A=Fill_Timer_Code(5);
        Code.push_back(" BL "+A[0].mid(0,A[0].length()-5));


    }
    else if(extract_type(5).mid(0,3)=="ADC")
    {
        A=Fill_Adc_Code(5);
        Code.push_back(" BL "+A[1].mid(0,A[1].length()-5));
    }
    // pin 6
    if((extract_type(6)=="OUTPUT") or (extract_type(6)=="INPUT"))
    {


        C = Fill_Gpio_code(6);
        Code.push_back("");
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
    }
    else if(extract_type(6).mid(0,3)=="TIM")
    {
        A=Fill_Timer_Code(6);
        Code.push_back("");
        Code.push_back(" BL "+A[0].mid(0,A[0].length()-5));

    }
    else if(extract_type(6).mid(0,3)=="ADC")
    {
        A=Fill_Adc_Code(6);
        Code.push_back("");
        Code.push_back(" BL "+A[1].mid(0,A[1].length()-5));
    }

    // pin 7
    if((extract_type(7)=="OUTPUT") or (extract_type(7)=="INPUT"))
    {


        C = Fill_Gpio_code(7);
        Code.push_back("");
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
    }
    else if(extract_type(7).mid(0,3)=="TIM")
    {
        A=Fill_Timer_Code(7);
        Code.push_back(" BL "+A[0].mid(0,A[0].length()-5));

    }
    else if(extract_type(7).mid(0,3)=="ADC")
    {
        A=Fill_Adc_Code(7);
        Code.push_back(" BL "+A[1].mid(0,A[1].length()-5));
    }

    // pin 8
    if((extract_type(8)=="OUTPUT") or (extract_type(8)=="INPUT"))
    {

        C = Fill_Gpio_code(8);
        Code.push_back("");
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
    }
    else if(extract_type(8).mid(0,3)=="TIM")
    {
        A=Fill_Timer_Code(8);
        Code.push_back("");
        Code.push_back(" BL "+A[0].mid(0,A[0].length()-5));

    }
    else if(extract_type(8).mid(0,5)=="USART")
    {
        C = Fill_UART_code(8);
        B = Alternate_Function_config(8);
        Code.push_back(" BL "+C[0].mid(0,C[0].length()-5));
        Code.push_back(" BL "+B[0].mid(0,B[0].length()-5));
    }
    else if(extract_type(8).mid(0,3)=="ADC")
    {
        A=Fill_Adc_Code(8);
        Code.push_back(" BL "+A[1].mid(0,A[1].length()-5));
    }


    Code.push_back("");
    Code.push_back(";USER CODE END 1");
    Code.push_back(";While loop begin");
    Code.push_back("loop");
    Code.push_back(";USER CODE BEGIN 2");
    Code.push_back("");
    Code.push_back(";USER CODE END 2");
    Code.push_back(" B loop");
    Code.push_back(" ENDP");

    // GENERATE FUNCTIONS TO CALL IN MAIN
    Code = Code + Fill_RCC_code();

    if((extract_type(1)=="OUTPUT") or (extract_type(1)=="INPUT"))
    {
        Code.push_back("");

        C = Fill_Gpio_code(1);
        Code = Code +C;
    }
    else if(extract_type(1).mid(0,3)=="TIM")
    {Code.push_back("");
        Code = Code + Fill_Timer_Code(1);

    }
    else if(extract_type(1).mid(0,5)=="USART")
    {
        Code.push_back("");
        Code.push_back("");
        C = Fill_UART_code(1);
        B = Alternate_Function_config(1);
        Code = Code +C + B;

    }
    else if(extract_type(1).mid(0,3)=="ADC")
    {Code.push_back("");
        A = Fill_Adc_Code(1);
        Code = Code +A;

    }
    // pin 4
    if((extract_type(4)=="OUTPUT") or (extract_type(4)=="INPUT"))
    {
        Code.push_back("");
        C = Fill_Gpio_code(4);
        Code = Code +C;
    }
    else if(extract_type(4).mid(0,3)=="TIM")
    {Code.push_back("");
        Code = Code + Fill_Timer_Code(4);

    }
    else if(extract_type(4).mid(0,5)=="USART")
    {Code.push_back("");
        Code.push_back("");
        Code.push_back("");
        C = Fill_UART_code(4);
        B = Alternate_Function_config(4);
        Code = Code +C;
        Code = Code +B;
    }
    else if(extract_type(4).mid(0,3)=="ADC")
    {
        Code.push_back(""); A = Fill_Adc_Code(4);
        Code = Code +A;

    }

    // pin 5

    if((extract_type(5)=="OUTPUT") or (extract_type(5)=="INPUT"))
    {
        Code.push_back("");
        C = Fill_Gpio_code(5);
        Code = Code +C;
    }
    else if(extract_type(5).mid(0,3)=="TIM")
    {
        Code.push_back("");
        Code = Code + Fill_Timer_Code(5);

    }
    else if(extract_type(5).mid(0,3)=="ADC")
    {
        Code.push_back("");
        A = Fill_Adc_Code(5);
        Code = Code +A;
    }
    // pin 6
    if((extract_type(6)=="OUTPUT") or (extract_type(6)=="INPUT"))
    {
        Code.push_back("");
        C = Fill_Gpio_code(6);
        Code = Code +C;
    }
    else if(extract_type(6).mid(0,3)=="TIM")
    {
        Code.push_back("");
        Code = Code + Fill_Timer_Code(6);

    }
    else if(extract_type(6).mid(0,3)=="ADC")
    {
        Code.push_back("");
        A = Fill_Adc_Code(6);
        Code = Code +A;
    }

    // pin 7
    if((extract_type(7)=="OUTPUT") or (extract_type(7)=="INPUT"))
    {

        Code.push_back("");
        C = Fill_Gpio_code(7);
        Code = Code +C;
    }
    else if(extract_type(7).mid(0,3)=="TIM")
    {Code.push_back("");
        Code = Code + Fill_Timer_Code(7);

    }
    else if(extract_type(7).mid(0,3)=="ADC")
    {Code.push_back("");
        A = Fill_Adc_Code(7);
        Code = Code +A;
    }

    // pin 8
    if((extract_type(8)=="OUTPUT") or (extract_type(8)=="INPUT"))
    {Code.push_back("");
        C = Fill_Gpio_code(8);
        Code = Code +C;
    }
    else if(extract_type(8).mid(0,3)=="TIM")
    {Code.push_back("");
        Code = Code + Fill_Timer_Code(8);

    }
    else if(extract_type(8).mid(0,5)=="USART")
    {
        Code.push_back("");
        Code.push_back("");
        C = Fill_UART_code(8);
        B = Alternate_Function_config(8);
        Code = Code +C;
        Code = Code +B;
    }
    else if(extract_type(8).mid(0,3)=="ADC")
    {Code.push_back("");
        A = Fill_Adc_Code(8);
        Code = Code +A;
    }

    Code.push_back(" ALIGN 4");
    Code.push_back(" END");

    //End_Code(Code);



    QFile File (fileName);
    {
        if (File.open(QIODevice::WriteOnly)){
            for (int iter=0;iter<Code.size();iter++)
            {

                QTextStream stream(&File);
                stream << Code[iter]<<endl;
                stream.flush();

            }
            File.close();
        }


        QMessageBox ::information(this,"Error","Code have been writen succesfully");
    }


}
void MainWindow::on_Browse_clicked()
{
    fileName = QFileDialog::getSaveFileName(this, tr("Save File"),
                                            "/home",tr("Assembly Files (*.s)"));
    if (!fileName.isNull())
    {
        ui->path->setText(fileName);
    }
    if (ui->path->text() != "")
    {
        ui->GenerateButton->setEnabled(1);
    }
}
void Reset(int pin)
{
    DBconn DB;
    DB.connOpen();

    QString P = QString::number(pin);
    QSqlQuery querry;
    querry.prepare("Delete from Pin_Config WHERE  Pin ='"+P+"' ");
    if (querry.exec())
    {
        qDebug()<<"old data deleted of pin"<< pin;

    }
    else
    {
        qDebug()<<"Error";
    }
}
void Pin_Data_Collection(int pin,QString port,int gpio_pin,QString Type)
{
    DBconn DB;
    DB.connOpen();

    QString P = QString::number(pin);
    QString Gp = QString::number(gpio_pin);
    QSqlQuery querry;
    querry.prepare("Delete from Pin_Config WHERE  Pin ='"+P+"' ");
    if (querry.exec())
    {
        qDebug()<<"old data deleted of pin"<< pin;

    }
    else
    {
        qDebug()<<"Error";
    }

    querry.prepare("INSERT into Pin_Config (Pin,Port,Gpio_pin,Type) values ('"+P+"','"+port+"','"+Gp+"','"+Type+"')");
    if (querry.exec())
    {
        qDebug()<<"data colected on pin"<< pin;

    }
    else
    {
        qDebug()<<"Error";
    }

    DB.connClose();
}
void Activated_Pin_Data(int pin)
{
    DBconn DB;
    DB.connOpen();

    QString P = QString::number(pin);

    QSqlQuery querry;
    querry.prepare("Delete from Activated_Pin");
    if (querry.exec())
    {
        qDebug()<<"No Pin is on";
    }
    else
    {
        qDebug()<<"Error";
    }

    querry.prepare("INSERT into Activated_Pin (Pin) values ('"+P+"')");
    if (querry.exec())
    {
        qDebug()<<"pin"<< pin<<" is activated";

    }
    else
    {
        qDebug()<<"Error";
    }

    DB.connClose();
}
void Reset_DB()
{
    DBconn DB;
    DB.connOpen();
    QSqlQuery querry;

    querry.prepare("DELETE FROM GPIO_O");
    querry.exec();

    querry.prepare("DELETE FROM GPIO_I");
    querry.exec();
    querry.prepare("DELETE FROM TIMER");
    querry.exec();
    querry.prepare("DELETE FROM USART");
    querry.exec();
    querry.prepare("DELETE  FROM Pin_Config");
    querry.exec();
    querry.prepare("DELETE FROM Pin_Config");
    querry.exec();
    qDebug()<<"Reset";


    DB.connClose();
}
QString extract_type(int pin)
{
    DBconn DB;
    DB.connOpen();
    QString t;
    QString P = QString::number(pin);
    QSqlQuery qry;
    qry.prepare("Select * from Pin_Config where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            t = qry.value(4).toString();


        }}
    else
    {
        qDebug()<<"Error 3";
    }
    DB.connClose();

    return t;
}
QVector <QString> Fill_Timer_Code(int pin)
{
    DBconn DB;
    DB.connOpen();
    QString P=QString::number(pin); qDebug()<<P;
    QString t_number,TimePeriod , mode ,t_channel, Prescaler;

    QString TimerName,gpin,gport,AF,AF_num,AF_Type,CCMR_num;

    QVector <QString> C;
    QSqlQuery qry;


    qry.prepare("Select * from TIMER where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            t_number = qry.value(0).toString();

            t_channel = qry.value(2).toString();

            Prescaler = qry.value(3).toString();

            TimePeriod = qry.value(4).toString();

            mode = qry.value(5).toString();

        }}
    else
    {
        qDebug()<<"Error 2";
    }

    qry.prepare("Select * from Pin_Config where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {

            TimerName =  qry.value(4).toString();
            gpin =  qry.value(3).toString();
            gport = qry.value(2).toString();
        }}
    else
    {
        qDebug()<<"Error 2";
    }
    QString PPP= "P"+gport+gpin;

    qry.prepare("Select * from G0316JM6_TIMER_ALTERNATE_FUNCTION_MAPPING where TIMER_NAME = '"+TimerName+"' and PORT ='"+PPP+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            AF = qry.value(2).toString();
        }}
    else
    {
        qDebug()<<"Error 2";
    }

    qDebug()<<"UGDUGAUGUDAGUAGDAUGDAUGDUDAG --> "<<TimerName;

    qDebug()<<"UGDUGAUGUDAGUAGDAUGDAUGDUDAG --> "<<PPP;
    qDebug()<<"UGDUGAUGUDAGUAGDAUGDAUGDUDAG --> "<<AF;
    if(gpin.toInt()>7)
    {
        AF_num ="1";
        AF_Type ="H";
    }
    else
    {   AF_Type ="L";
        AF_num="0";}


    if((t_channel =="1") or(t_channel =="2"))
        CCMR_num = "1";
    else
        CCMR_num = "2";

    C.push_back(TimerName+"_Config PROC");
    C.push_back(" PUSH{LR}");
    C.push_back(";Config of GPIO PORT AS ALternate Function");
    C.push_back(" LDR r0,=GPIO"+gport+"_BASE");
    C.push_back(" LDR r1,[r0,#GPIO_MODER]");
    C.push_back(" LDR r2,=GPIO_MODER_MODE"+gpin);
    C.push_back(" BICS r1,r1,r2");
    C.push_back(" LDR r2,=GPIO_MODER_MODE"+gpin+"_1");
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0,#GPIO_MODER]");


    C.push_back(" LDR r1,[r0,#GPIO_AFR"+AF_num+"]");
    C.push_back(" LDR r2,=GPIO_AFR"+AF_Type+"_AFSEL"+gpin);
    C.push_back(" BICS r1,r1,r2");

    if(AF == "AF1")
    {C.push_back(" LDR r2,=GPIO_AFR"+AF_Type+"_AFSEL"+gpin+"_0");
     C.push_back(" ORRS r1,r1,r2");}
    if(AF == "AF2")
    {C.push_back(" LDR r2,=GPIO_AFR"+AF_Type+"_AFSEL"+gpin+"_1");
        C.push_back(" ORRS r1,r1,r2");}


    C.push_back(" STR r1,[r0,#GPIO_AFR"+AF_num+"]");


    C.push_back(" LDR r0,=TIM"+t_number+"_BASE");

    C.push_back(" LDR r1,[r0,#TIM_PSC]");
    C.push_back(" LDR r2,=0xFFFF");
    C.push_back(" BICS r1,r1,r2");
    C.push_back(" LDR r2,="+Prescaler);
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0,#TIM_PSC]");

    C.push_back(" LDR r1,[r0,#TIM_ARR]");
    C.push_back(" LDR r2,=0xFFFF");
    C.push_back(" BICS r1,r1,r2");
    C.push_back(" LDR r2,="+TimePeriod);
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0,#TIM_ARR]");

    if(mode == "PWM_Mode")
    {
        C.push_back(" ;PWM MODE CONFIG");

        C.push_back(" LDR r1,[r0,#TIM_CCER]");
        C.push_back(" LDR r2,=TIM_CCER_CC"+t_channel+"E");
        C.push_back(" BICS r1,r1,r2");
        C.push_back(" STR r1,[r0,#TIM_CCER]");

        C.push_back(" LDR r1,[r0,#TIM_CCMR"+CCMR_num+"]");
        C.push_back(" LDR r2,=TIM_CCMR"+CCMR_num+"_CC"+t_channel+"S");
        C.push_back(" BICS r1,r1,r2");
        C.push_back(" STR r1,[r0,#TIM_CCMR"+CCMR_num+"]");

        C.push_back(" LDR r1,[r0,#TIM_CCMR"+CCMR_num+"]");
        C.push_back(" LDR r2,=TIM_CCMR"+CCMR_num+"_OC"+t_channel+"M");
        C.push_back(" BICS r1,r1,r2");
        C.push_back(" LDR r2,=TIM_CCMR"+CCMR_num+"_OC"+t_channel+"M_1");
        C.push_back(" ORRS r1,r1,r2");
        C.push_back(" LDR r2,=TIM_CCMR"+CCMR_num+"_OC"+t_channel+"M_2");
        C.push_back(" ORRS r1,r1,r2");
        C.push_back(" STR r1,[r0,#TIM_CCMR"+CCMR_num+"]");

        C.push_back(" LDR r1,[r0,#TIM_CCER]");
        C.push_back(" LDR r2,= TIM_CCER_CC"+t_channel+"E");
        C.push_back(" BICS r1,r1,r2");
        C.push_back(" LDR r2,= TIM_CCER_CC"+t_channel+"E");
        C.push_back(" ORRS r1,r1,r2");
        C.push_back(" STR r1,[r0,#TIM_CCER]");

    }

    C.push_back(" ;Counter ENABLE");
    C.push_back(" LDR r1,[r0,#TIM_CR1]");
    C.push_back(" LDR r2,=TIM_CR1_CEN");
    C.push_back(" BICS r1,r1,r2");
    C.push_back(" LDR r2,=TIM_CR1_CEN");
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0,#TIM_CR1]");





    C.push_back(" POP{PC}");
    C.push_back(" ENDP");

    return C;
}
QVector <QString> Fill_Adc_Code(int pin)
{
    DBconn DB;
    DB.connOpen();
    QString P=QString::number(pin); qDebug()<<P;
    QVector <QString> C;
    QSqlQuery qry;
    QString Channel,adcp,port,Gpin;
    qry.prepare("Select * from Pin_Config where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            adcp=qry.value(4).toString();
            port=qry.value(2).toString();
            Gpin=qry.value(3).toString();
        }
    }
    else
    {
        qDebug()<<"Error 2";
    }

    C.push_back("");
    Channel=adcp.mid(6);
    qDebug()<<"this is spartaaaaaaaaaaaaaa"<<Channel;
    C.push_back(adcp+"_Config PROC");
    C.push_back(" PUSH{LR}");
    C.push_back(" LDR r0, =GPIO"+port+"_BASE");
    C.push_back(" LDR r1, [r0, #GPIO_MODER]");
    C.push_back(" LDR r2, =GPIO_MODER_MODE"+Gpin+" ;3<<2*"+Gpin);
    C.push_back(" BICS r1, r1, r2");
    C.push_back(" LDR r2, =GPIO_MODER_MODE"+Gpin+"_0  ;3<<2*"+Gpin);
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" LDR r2, =GPIO_MODER_MODE"+Gpin+"_1  ;3<<2*"+Gpin);
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1, [r0, #GPIO_MODER]");
    C.push_back(" LDR r0,=ADC1_BASE");
    C.push_back(" LDR r1,[r0, #ADC_CFGR1]");
    C.push_back(" LDR r2,=ADC_CFGR1_CONT");
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0, #ADC_CFGR1]");
    C.push_back(" LDR r1,[r0, #ADC_CHSELR]");
    C.push_back(" LDR r2,=ADC_CHSELR_CHSEL"+Channel);
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0, #ADC_CHSELR]");
    C.push_back(" LDR r1,[r0, #ADC_CR]");
    C.push_back(" LDR r2,=ADC_CR_ADEN");
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0, #ADC_CR]");
    C.push_back(" LDR r1,[r0, #ADC_CR]");
    C.push_back(" LDR r2,=ADC_CR_ADSTART");
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0, #ADC_CR]");
    C.push_back(" POP{PC}");
    C.push_back(" ENDP");
    return C;
}
QVector <QString> Fill_UART_code(int pin)
{
    QVector <QString> C;
    DBconn DB;
    DB.connOpen();
    QSqlQuery qry;
    QString P=QString::number(pin); qDebug()<<P;
    QString Type;
    QString WL ;
    QString BD;
    QString number;

    qry.prepare("Select * from USART where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            BD = qry.value(3).toString();
            number=qry.value(0).toString();
        }
    }

    qry.prepare("Select * from Pin_Config where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            Type=qry.value(4).toString();
        }
    }
    else
    {
        qDebug()<<"Error 2";
    }
    QString RT=Type.mid(7,1);
    C.push_back(Type+"_Config PROC");
    C.push_back(" PUSH{LR}");
    C.push_back("USART"+number+"_Baudrate_DIV          EQU 0x"+BD);
    C.push_back(" LDR r0,=USART"+number+"_BASE");
    C.push_back(";Disabling USART");
    C.push_back(" LDR r1,[r0]");
    C.push_back(" LDR r2,=USART_CR1_UE");
    C.push_back(" BICS r1,r1,r2");
    C.push_back(" STR r1,[r0]");
    C.push_back(";Selecting Baud Rate");
    C.push_back(" LDR r1,[r0,#USART_BRR]");
    C.push_back(" LDR r2,=USART_BRR_BRR");
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" LDR r2,=USART"+number+"_Baudrate_DIV");
    C.push_back(" ANDS r1,r1,r2");
    C.push_back(" STR r1,[r0,#USART_BRR]");
    if (RT=="R")
    {
        C.push_back(";Reception_Enable");
        C.push_back("LDR r1,[r0]");
        C.push_back("LDR r2,=USART_CR1_RE");
        C.push_back("ORRS r1,r1,r2");
        C.push_back("STR r1,[r0]");
    }
    if (RT=="T")
    {
        C.push_back(";Transmition_Enable");
        C.push_back(" LDR r1,[r0]");
        C.push_back(" LDR r2,=USART_CR1_TE");
        C.push_back(" ORRS r1,r1,r2");
        C.push_back(" STR r1,[r0]");
    }
    C.push_back(";Enabling USART");
    C.push_back(" LDR r1,[r0]");
    C.push_back(" LDR r2,=USART_CR1_UE");
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0]");
    C.push_back(" POP{PC}");
    C.push_back(" ENDP");
    return C;
}
QVector <QString> Alternate_Function_config(int pin)
{
    QVector <QString> C;
    DBconn DB;
    DB.connOpen();
    QSqlQuery qry;
    QString P=QString::number(pin); qDebug()<<P;
    QString gpin,number,Type,port;
    qry.prepare("Select * from USART where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            number=qry.value(0).toString();
        }
    }

    qry.prepare("Select * from Pin_Config where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            Type=qry.value(4).toString();
            gpin= qry.value(3).toString();
            port=qry.value(2).toString();
        }
    }

    QString RT=Type.mid(7,1);
    C.push_back(Type+"_AF PROC");
    C.push_back(" PUSH{LR}");
    C.push_back(" LDR r0,=GPIO"+port+"_BASE");
    C.push_back(" LDR r1,[r0, #GPIO_MODER]");
    C.push_back(" LDR r2,=GPIO_MODER_MODE"+gpin+"_1 ;3<<2*7");
    C.push_back(" BICS r1,r1,r2");
    C.push_back(" LDR r2,=GPIO_MODER_MODE"+gpin+"_1");
    C.push_back(" ORRS r1,r1,r2");
    C.push_back(" STR r1,[r0,#GPIO_MODER]");
    if(gpin.toInt()<=7)
    {
        C.push_back(" LDR r1,[r0,#GPIO_AFRL]");
        if (number=="1")
        {
            C.push_back(" LDR r2,=GPIO_AFRL_AFSEL"+gpin);
        }
        else if (number=="2")
        {
            C.push_back(" LDR r2,=GPIO_AFRL_AFSEL"+gpin+"_0");
        }
        C.push_back(" ORRS r1,r1,r2");
        C.push_back(" STR r1,[r0,#GPIO_AFRL]");
    }
    // ANCIEN CODE   else if (gpin>7)
    if(gpin.toInt()>7)
    {
        C.push_back(" LDR r1,[r0,#GPIO_AFRH]");
        if (number=="1")
        {
            C.push_back(" LDR r2,=GPIO_AFRH_AFSEL"+gpin);
        }
        else if (number=="2")
        {
            C.push_back(" LDR r2,=GPIO_AFRH_AFSEL"+gpin+"_0");
        }
        C.push_back(" ORRS r1,r1,r2");
        C.push_back(" STR r1,[r0,#GPIO_AFRH]");
    }
    C.push_back(" POP{PC}");
    C.push_back(" ENDP");
    return C;


}
QVector <QString> Fill_Gpio_code(int pin)
{
    DBconn DB;
    DB.connOpen();
    QString P=QString::number(pin); qDebug()<<P;
    QString port,Gpin;
    QString TYPE;
    QVector <QString> C;
    QSqlQuery qry;

    qry.prepare("Select * from Pin_Config where Pin= '"+P+"'");
    if(qry.exec())
    {
        while(qry.next())
        {
            TYPE = qry.value(4).toString();
            Gpin =qry.value(3).toString();
            port =qry.value(2).toString();


        }}
    else
    {
        qDebug()<<"Error 2";
    }



    C.push_back("GPIO"+port+Gpin+"_Config PROC");
    C.push_back(" PUSH{LR}");
    C.push_back(" LDR r0, =GPIO"+port+"_BASE");
    C.push_back(" LDR r1, [r0, #GPIO_MODER]");
    C.push_back(" LDR r2, =GPIO_MODER_MODE"+Gpin+" ;3<<2*"+Gpin);
    C.push_back(" BICS r1, r1, r2");
    if(TYPE == "OUTPUT")
    {
        C.push_back(" LDR r2, =GPIO_MODER_MODE"+Gpin+"_0   ;1<<2*12");
        C.push_back(" ORRS r1, r1, r2");
    }
    if(TYPE =="INPUT")
    {
        C.push_back(" LDR r2, =GPIO_MODER_MODE"+Gpin+"  ;3<<2*"+Gpin);
        C.push_back(" BICS r1, r1, r2              ;NOT(3<<2*"+Gpin);
    }
    C.push_back(" STR r1, [r0, #GPIO_MODER]");
    C.push_back(" POP{PC}");
    C.push_back(" ENDP");
    return C;


}
QVector <QString> Fill_RCC_code()
{
    DBconn DB;
    DB.connOpen();

    QString port,Gpin;
    QString TYPE,number;
    QVector <QString> C,PortTABLE,TypeTable,NumberTable;
    QVector <QString> Tim_numberrr = {"1","2","3","14","16","17"},Tim_num = {"TIM1","TIM2","TIM3","TIM14","TIM16","TIM17"} ,Rcc_tim_num = {"2","1","1","2","2","2"} ;
    QSqlQuery qry;
    NumberTable.push_back(0);


    qry.prepare("Select * from Pin_Config");
    if(qry.exec())
    {
        while(qry.next())
        {
            PortTABLE.push_back(qry.value(2).toString());

            TypeTable.push_back(qry.value(4).toString());

        }
    }
    qry.prepare("Select * from USART ");
    if(qry.exec())
    {
        while(qry.next())
        {
            NumberTable.push_back(qry.value(0).toString());
        }
    }

    else
    {
        qDebug()<<"Error 3";
    }


    C.push_back("RCC_CONFIG PROC");
    C.push_back(" PUSH{LR}");
    int tim_index;
    int j=0,f=0,p=0,o=0,r=0,a=0,b=0,z=0;
    for(int i=0 ;i<PortTABLE.length();i++)
    {
        if ((TypeTable[i].mid(0,3)=="TIM"))
        {

            C.push_back(" LDR r0,=RCC_BASE");
            tim_index = Tim_num.indexOf(tim_reform(TypeTable[i]));
            C.push_back(" LDR r1,[r0, #RCC_APBENR"+Rcc_tim_num[i]+"]");
            C.push_back(" LDR r2,=RCC_APBENR"+Rcc_tim_num[tim_index]+"_TIM"+Tim_numberrr[tim_index]+"EN");
            C.push_back(" ORRS r1,r1,r2");
            C.push_back(" STR r1, [r0,#RCC_APBENR"+Rcc_tim_num[i]+"]");
        }
        if ((TypeTable[i].mid(0,3)=="ADC") && (z==0))
        {
            z++;
            C.push_back(" LDR r0,=RCC_BASE");
            C.push_back(" LDR r1,[r0, #RCC_APBENR2]");
            C.push_back(" LDR r2,=RCC_APBENR2_ADCEN");
            C.push_back(" ORRS r1,r1,r2");
            C.push_back(" STR r1, [r0,#RCC_APBENR2]");
        }
        if (TypeTable[i].mid(0,5)=="USART")
        {
            if ((NumberTable[i]=="2") && (b==0))
            {
                b++;
                C.push_back(" LDR r0,=RCC_BASE");
                C.push_back(" LDR r1,[r0, #RCC_APBENR1]");
                C.push_back(" LDR r2,=RCC_APBENR1_USART2EN");
                C.push_back(" ORRS r1,r1,r2");
                C.push_back(" STR r1, [r0,#RCC_APBENR1]");
            }
        }
        if ((PortTABLE[i]=="A") && (j==0))
        {

            C.push_back(" LDR r0,=RCC_BASE");
            C.push_back(" LDR r1,[r0, #RCC_IOPENR]");
            C.push_back(" LDR r2,=RCC_IOPENR_GPIO"+PortTABLE[i]+"EN");
            C.push_back(" ORRS r1,r1,r2");
            C.push_back(" STR r1, [r0,#RCC_IOPENR]");
            j++;
        }
        if ((PortTABLE[i]=="B") && (f==0))
        {

            C.push_back(" LDR r0, =RCC_BASE");
            C.push_back(" LDR r1, [r0, #RCC_IOPENR]");
            C.push_back(" LDR r2, =RCC_IOPENR_GPIO"+PortTABLE[i]+"EN");
            C.push_back(" ORRS r1, r1, r2");
            C.push_back(" STR r1, [r0, #RCC_IOPENR]");
            f++;
        }
        if ((PortTABLE[i]=="C") && (p==0))
        {

            C.push_back(" LDR r0, =RCC_BASE");
            C.push_back(" LDR r1, [r0, #RCC_IOPENR]");
            C.push_back(" LDR r2, =RCC_IOPENR_GPIO"+PortTABLE[i]+"EN");
            C.push_back(" ORRS r1, r1, r2");
            C.push_back(" STR r1, [r0, #RCC_IOPENR]");
            p++;
        }
        if ((PortTABLE[i]=="D") && (r==0))
        {

            C.push_back(" LDR r0, =RCC_BASE");
            C.push_back(" LDR r1, [r0, #RCC_IOPENR]");
            C.push_back(" LDR r2, =RCC_IOPENR_GPIO"+PortTABLE[i]+"EN");
            C.push_back(" ORRS r1, r1, r2");
            C.push_back(" STR r1, [r0, #RCC_IOPENR]");
            r++;
        }
        if ((PortTABLE[i]=="F") && (o==0))
        {

            C.push_back(" LDR r0, =RCC_BASE");
            C.push_back(" LDR r1, [r0, #RCC_IOPENR]");
            C.push_back(" LDR r2, =RCC_IOPENR_GPIO"+PortTABLE[i]+"EN");
            C.push_back(" ORRS r1, r1, r2");
            C.push_back(" STR r1, [r0, #RCC_IOPENR]");
            o++;
        }
    }

    C.push_back(" POP{PC}");
    C.push_back(" ENDP");

    return C;


}
QString tim_reform(QString t)
{
    if(t.mid(4,1) !="_")
        return t.mid(0,5);
    return t.mid(0,4);
}

