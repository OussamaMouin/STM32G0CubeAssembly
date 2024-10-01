#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include "config.h"
#include <QMainWindow>
#include "timerconfig.h"
#include "uartconfig.h"
#include "configi.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:

    void on_Browse_clicked();
    void on_GenerateButton_clicked();


private:
    Ui::MainWindow *ui;
    Config *CF;
    Timerconfig *TC;
    UARTConfig *UC;
    configI *CFI;

};
#endif // MAINWINDOW_H
