#include "dbconn.h"
#include "QDebug"

DBconn:: DBconn()
{
    myDb =QSqlDatabase::addDatabase("QSQLITE");
    myDb.setDatabaseName("./CodeGenDB.db");
}
QSqlDatabase DBconn::getMYDB()
{
    return myDb;
}
void  DBconn::connClose()
{
    myDb.close();
    myDb.removeDatabase(QSqlDatabase::defaultConnection);
}

bool DBconn::connOpen()
{


    if(!myDb.open())
     {
        qDebug()<<"Failed to open the datatbase";
        return false;
     }
    else
    {
        qDebug()<<"Connected ...";
        return true;
    }
}

