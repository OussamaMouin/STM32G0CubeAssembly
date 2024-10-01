#include "gpio.h"
#include "ui_gpio.h"

GPIO::GPIO(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::GPIO)
{
    ui->setupUi(this);
}

GPIO::~GPIO()
{
    delete ui;
}
