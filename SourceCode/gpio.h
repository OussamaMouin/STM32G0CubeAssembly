#ifndef GPIO_H
#define GPIO_H

#include <QDialog>

namespace Ui {
class GPIO;
}

class GPIO : public QDialog
{
    Q_OBJECT

public:
    explicit GPIO(QWidget *parent = nullptr);
    ~GPIO();

private:
    Ui::GPIO *ui;
};

#endif // GPIO_H
