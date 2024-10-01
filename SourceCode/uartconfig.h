#ifndef UARTCONFIG_H
#define UARTCONFIG_H

#include <QDialog>

namespace Ui {
class UARTConfig;
}

class UARTConfig : public QDialog
{
    Q_OBJECT

public:
    explicit UARTConfig(QWidget *parent = nullptr);
    ~UARTConfig();

private slots:
    void on_pushButton_clicked();

private:
    Ui::UARTConfig *ui;
};

#endif // UARTCONFIG_H
