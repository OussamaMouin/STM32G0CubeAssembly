#ifndef CONFIGI_H
#define CONFIGI_H

#include <QDialog>

namespace Ui {
class configI;
}

class configI : public QDialog
{
    Q_OBJECT

public:
    explicit configI(QWidget *parent = 0);
    ~configI();

private slots:
    void on_pushButton_clicked();

private:
    Ui::configI *ui;
};

#endif // CONFIGI_H
