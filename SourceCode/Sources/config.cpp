#include "Headers/config.h"
#include "ui_config.h"
#include <QMessageBox>
#include <QDebug>
#include "Headers/dbconn.h"
#include <QtSql>

void  Output_Data_Collection(QString speed,QString type,QString pupd);


Config::Config(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Config)
{
    ui->setupUi(this);
    QPixmap pi("./ST.jpg");
    int w1 = ui->label1->width();
    int h1 = ui->label1->height();
    ui->label1->setPixmap(pi.scaled(w1,h1,Qt::KeepAspectRatio));





}

Config::~Config()
{
    delete ui;

}



void Config::on_pushButton_clicked()
{
    QString S,T,P;


    S = ui->Speed->currentText();
    T = ui->TYPE->currentText();
    P = ui->Pu_Pd->currentText();

    Output_Data_Collection(S,T,P);



    ui->Speed->setCurrentIndex(0);
    ui->Pu_Pd->setCurrentIndex(0);
    ui->TYPE->setCurrentIndex(0);



    close();
}

void  Output_Data_Collection(QString speed,QString type,QString pupd)
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

        qry.prepare("Delete from GPIO_O where Pin= '"+P+"'");
        if(qry.exec())
        {

            qDebug()<<"deleted from GPIO_O";
        }
        else
        {
            qDebug()<<"Error 1";
        }



    qry.prepare("INSERT into GPIO_O (Board_Pin,Port,Pin,Speed,Output_Type,PushPull) values ('"+P+"','"+port+"','"+pin+"','"+speed+"','"+type+"','"+pupd+"')");
     if (qry.exec())
     {


     }
     else
     {
         qDebug()<<(qry.lastError().text());
     }

    DB.connClose();
}
