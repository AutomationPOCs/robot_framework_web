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
    title should be    nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    ${"email_field"}     set variable    id:Email
    element should be visible    ${"email_field"}
    element should be enabled    ${"email_field"}
    input text    ${"email_field"}   amit.verma001144@mailinator.com
    sleep    5
    clear element text    ${"email_field"}
    sleep    3
    close browser


*** Keywords ***

