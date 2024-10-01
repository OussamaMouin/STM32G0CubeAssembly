#include "Headers/timerconfig.h"
#include "ui_timerconfig.h"
#include "Headers/dbconn.h"
#include <QDebug>
#include <QtSql>
void  Timer_Data_Collection(int presc,int timeperiod,QString mode);
Timerconfig::Timerconfig(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Timerconfig)
{
    ui->setupUi(this);
    QPixmap pi("./ST.jpg");
    int w1 = ui->label1->width();
    int h1 = ui->label1->height();
    ui->label1->setPixmap(pi.scaled(w1,h1,Qt::KeepAspectRatio));
}

Timerconfig::~Timerconfig()
{
    delete ui;
}

void Timerconfig::on_pushButton_clicked()
{
   int Pr,TP;
   QString Mode;
    Pr = ui->TIM_PERIODE->text().toInt();
    TP = ui->PRESCALER->text().toInt();
    Mode = ui->comboBox->currentText();
    Timer_Data_Collection(Pr,TP,Mode);
    close();
}
void  Timer_Data_Collection(int presc,int timeperiod,QString mode)
{
    DBconn DB;
    DB.connOpen();

    QString P;

    QString Pr = QString::number(presc);
    QString TimP = QString::number(timeperiod);


    QString Type ="";
    QSqlQuery qry;
   qry.prepare("Select * from Activated_Pin");
    if(qry.exec())
    {
        while(qry.next())
        {
           P = qry.value(0).toString();

        }}
    else
    {
        qDebug()<<"Error";
    }

        qry.prepare("Select * from Pin_Config where Pin= '"+P+"'");
        if(qry.exec())
        {
            while(qry.next())
            {
              Type = qry.value(4).toString();


            }}
        else
        {
            qDebug()<<"Error";
        }

        QString ch,number;


       if (Type[Type.length()-1]!='N') ch = Type[Type.length()-1];
       if(Type[4]=='_') number = Type[3];
           else number = Type.mid(3,2);

    qry.prepare("INSERT into TIMER (Number, Pin, Channel, TIMPERIOD, PRESC,Mode) values ('"+number+"','"+P+"','"+ch+"','"+TimP+"','"+Pr+"','"+mode+"')");

     if (qry.exec())
     {


     }
     else
     {
         qDebug()<<(qry.lastError().text());
     }

    DB.connClose();
}
