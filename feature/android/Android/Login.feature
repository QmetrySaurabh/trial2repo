Feature: Android

Scenario Outline: Login

  When sendKeys "Bob" into "email"
  And sendKeys "Bob" into "password"
  And click on "sign.in"
  And click on "transacations"
  And sendKeys "100" into "enter.amount"
  And click on "credit"
  And click on "transacations"
  And sendKeys "100" into "enter.amount"
  And click on "debit"
  And click on ".more.options"
  And click on "com.qmetry.bank.bankingapplication.id.content"
  And click on "android.id.text1"
  Then verify "sign.in" is present


Examples:
    |username|pass|
    |Bob|Bob|
    |Sarah|Sarah|

