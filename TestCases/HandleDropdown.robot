*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds
    close browser

*** Keywords ***

