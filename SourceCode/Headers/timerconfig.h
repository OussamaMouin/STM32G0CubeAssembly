#ifndef TIMERCONFIG_H
#define TIMERCONFIG_H

#include <QDialog>

namespace Ui {
class Timerconfig;
}

class Timerconfig : public QDialog
{
    Q_OBJECT

public:
    explicit Timerconfig(QWidget *parent = nullptr);
    ~Timerconfig();

private slots:
    void on_pushButton_clicked();

private:
    Ui::Timerconfig *ui;
};

#endif // TIMERCONFIG_H
