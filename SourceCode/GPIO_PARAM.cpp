#include <QString>
#include <QList>

QString Pin_Param(QString Pin_number)
{
    QString Code_Line;
    Code_Line=" MOVS r2,#"+Pin_number;
    return Code_Line;
}
QString Adress_Param(int PORT)
{
  QString A = "GPIOA_base_adress";
  QString B = "GPIOB_base_adress";
  QString C = "GPIOC_base_adress";
  QString D = "GPIOD_base_adress";
  QString F = "GPIOF_base_adress";
  QString Code_Line;
  if(PORT == 0)
      Code_Line=" LDR r0,="+A;
  if(PORT == 1)
      Code_Line=" LDR r0,="+B;
  if(PORT == 2)
      Code_Line=" LDR r0,="+C;
  if(PORT == 3)
      Code_Line=" LDR r0,="+D;
  if(PORT == 4)
      Code_Line=" LDR r0,="+F;

  return Code_Line;
}


QString Mode_Param(int Mode)
{
    QString Code_Line;
    QString IN = "GPIO_INPUT_MODE";
    QString OUT = "GPIO_OUTPUT_MODE";
    QString AF = "GPIO_AF_MODE";
    QString AN = "GPIO_AN_MODE";

    if(Mode == 0)
        Code_Line=" MOVS r3,#"+IN;
    if(Mode == 1 )
        Code_Line=" MOVS r3,#"+OUT;

     return Code_Line;
}


QString OTYPE_Param(int type)
{
    QString Code_Line;
    QString PP = "GPIO_OUT_PP";
    QString OD = "GPIO_OUT_OD";
   if(type == 0)
       Code_Line=" MOVS r3,#"+PP;
   if(type == 1)
       Code_Line=" MOVS r3,#"+OD;


    return Code_Line;
}


QString OSPEED_Param(int speed)
{
    QString Code_Line;
    QString VLS = "GPIO_OUT_VeryLowSpeed";
    QString LS= "GPIO_OUT_LowSpeed";
    QString HS = "GPIO_OUT_HighSpeed ";
    QString VHS= "GPIO_OUT_VeryHighSpeed";
    if(speed == 0)
        Code_Line=" MOVS r3,#"+VLS;
    if(speed == 1)
        Code_Line=" MOVS r3,#"+LS;
    if(speed == 2)
        Code_Line=" MOVS r3,#"+HS;
    if(speed == 3)
        Code_Line=" MOVS r3,#"+VHS;


    return Code_Line;
}

QString PUPD_Param(int pupd)
{
    QString Code_Line;
    QString NPud = "GPIO_No_Pu_Pd";
    QString Pu= "GPIO_Pu";
    QString Pd = "GPIO_Pd" ;
    if(pupd == 0)
        Code_Line=" MOVS r3,#"+NPud;
    if(pupd == 1)
        Code_Line=" MOVS r3,#"+Pu;
    if(pupd == 2)
        Code_Line=" MOVS r3,#"+Pd;



    return Code_Line;
}



QString Affect_Mode_Register()
{
    return " BL GPIOx_MODDER";
}
QString Affect_Type_Register()
{
    return " BL GPIOx_OTYPER";
}
QString Affect_Speed_Register()
{
    return " BL GPIOx_OSPEEDR";
}
QString Affect_PUPD_Register()
{
    return " BL GPIOx_PUPDR";
}







