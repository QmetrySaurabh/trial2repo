Feature: Website Login

Scenario Outline: Login

  Given get "https://qas.qmetry.com/bank"
  When  clear "text.txtusername"
  And sendKeys "${username}" into "text.txtusername"
  And  clear "password.txtpassword"
  And sendKeys "${pass}" into "password.txtpassword"
  And click on "button.btnlogin"
  And  clear "number.enteramountforcredit"
  And sendKeys "100" into "number.enteramountforcredit"
  And click on "button.button11"
  And  clear "number.enteramountfordebit"
  And sendKeys "100" into "number.enteramountfordebit"
  And click on "button.button1"
  And click on "button.button"
  Then assert "button.btnlogin" is present


Examples:
    |username|pass|
    |Bob|Bob|
    |Sarah|Sarah|

