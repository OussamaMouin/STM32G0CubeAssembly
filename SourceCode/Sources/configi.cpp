#include "Headers/configi.h"
#include "ui_configi.h"
#include "Headers/dbconn.h"
#include <QtSql>
configI::configI(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::configI)
{
    ui->setupUi(this);
    QPixmap pi("./ST.jpg");
    int w1 = ui->label1->width();
    int h1 = ui->label1->height();
    ui->label1->setPixmap(pi.scaled(w1,h1,Qt::KeepAspectRatio));

}

configI::~configI()
{
    delete ui;
}
void  Input_Data_Collection(QString pupd)
{
    DBconn DB;
    DB.connOpen();

    QString P ;
    QString port;
    QString pin;
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

               port = qry.value(2).toString();
               pin = qry.value(3).toString();
               qDebug()<<port;
               qDebug()<<pin;
            }}
        else
        {
            qDebug()<<"Error";
        }

        qry.prepare("Delete from GPIO_I where Pin= '"+P+"'");
        if(qry.exec())
        {

            qDebug()<<"deleted from GPIO_I";
        }
            else
        {
            qDebug()<<"Error 1";
        }



    qry.prepare("INSERT into GPIO_I (Board_Pin,Port,Pin,PushPull) values ('"+P+"','"+port+"','"+pin+"','"+pupd+"')");
     if (qry.exec())
     {

     }
     else
     {
         qDebug()<<(qry.lastError().text());
     }

    DB.connClose();
}

void configI::on_pushButton_clicked()
{
    QString P;



    P = ui->Pu_Pd->currentText();

    Input_Data_Collection(P);



    ui->Speed->setCurrentIndex(0);
    ui->Pu_Pd->setCurrentIndex(0);
    ui->TYPE->setCurrentIndex(0);



    close();
}
