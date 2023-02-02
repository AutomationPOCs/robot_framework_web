#https://testautomationpractice.blogspot.com/
*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    click element    xpath://*[@id="HTML9"]/div[1]/button
    #three options - accept the alert, dismiss the alert, leave the alert as it is
    #close alert using ok button
    sleep    3
#    handle alert    accept
    #close alert using cancel button
#    handle alert    dismiss
#   Leave the alert as it is
#    handle alert    leave
#    Verify something in alert
     alert should be present    Press a button!


*** Keywords ***

