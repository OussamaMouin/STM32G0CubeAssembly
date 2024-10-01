#ifndef DBCONN_H
#define DBCONN_H
#include "QtSql/QSqlDatabase"
class DBconn
{
private:
    QSqlDatabase myDb;
public:

    DBconn();
    void connClose();

    bool connOpen();

    QSqlDatabase getMYDB();



};

#endif // DBCONN_H
