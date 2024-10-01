#include "uartconfig.h"
#include "ui_uartconfig.h"
#include "dbconn.h"
#include <QtSql>
UARTConfig::UARTConfig(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::UARTConfig)
{
    ui->setupUi(this);
    QPixmap pi("./ST.jpg");
    int w1 = ui->label1->width();
    int h1 = ui->label1->height();
    ui->label1->setPixmap(pi.scaled(w1,h1,Qt::KeepAspectRatio));
    ui->comboBox_2->setCurrentIndex(1);
    ui->comboBox->setCurrentIndex(10);

}

UARTConfig::~UARTConfig()
{
    delete ui;
}



QString clk_act(int PORT)
{
  QString A = "GPIOA_CLK_EN";
  QString B = "GPIOB_CLK_EN";
  QString C = "GPIOC_CLK_EN";
  QString D = "GPIOD_CLK_EN";
  QString F = "GPIOF_CLK_EN";
  QString Code_Line;
  if(PORT == 0)
      Code_Line=" LDR r3,="+A;
  if(PORT == 1)
      Code_Line=" LDR r3,="+B;
  if(PORT == 2)
      Code_Line=" LDR r3,="+C;
  if(PORT == 3)
      Code_Line=" LDR r3,="+D;
  if(PORT == 4)
      Code_Line=" LDR r3,="+F;

  return Code_Line;
}
QString UART_ACT(QString N)
{
    if (N=="1")
    {
        return " BL RCC_APBENR1_USART1EN";
    }
    if (N=="2")
    {
        return " BL RCC_APBENR1_USART2EN";
    }

}
void  Usart_Data_Collection(int BAUDRATE,int wordlength)
{
    DBconn DB;
    DB.connOpen();

    QString P;

   int Frequency = 16000000;
   int B = Frequency / BAUDRATE;


    QString BDRT = QString::number(B, 16);
    QString WORD = QString::number(wordlength);


    QString Type,Port;
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
              Port = qry.value(2).toString();


            }}
        else
        {
            qDebug()<<"Error";
        }

        QString commType,number;

    if (Type == "USART2_TX")
    {
        commType = "2"; number ="2";

    }
    if (Type == "USART1_RX")
    {
        commType = "1"; number ="1";
    }
    if (Type == "USART2_RX")
    {
        commType = "1"; number ="2";
    }
    if (Type == "USART1_TX")
    {
        commType = "2"; number ="1";
    }
    qry.prepare("INSERT into USART (Number, Type, Pin, BAUDRATE, WORDLENGTH,Port) values ('"+number+"','"+commType+"','"+P+"','"+BDRT+"','"+WORD+"','"+Port+"')");
     if (qry.exec())
     {

     }
     else
     {
         qDebug()<<(qry.lastError().text());
     }

    DB.connClose();
}

void UARTConfig::on_pushButton_clicked()
{
    int bdrt,WL;
   bdrt= ui->comboBox->currentText().toInt();
   WL = ui->comboBox_2->currentText().toInt();


    Usart_Data_Collection(bdrt,WL);
    close();
}
