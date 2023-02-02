*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
LoginTest
#    create webdriver    chrome  executable_path="D:\driver\chromedriver.exe"
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium implicit wait    10 seconds
    set selenium speed    1 seconds
    registerOnApplication
    close browser

*** Keywords ***
registerOnApplication
    click link    xpath://a[@class='ico-register']
    select radio button    Gender   M
    input text    id:FirstName  Amit
    input text    id:LastName   Verma
    sleep    2
    select from list by index    DateOfBirthDay    1
    sleep    2
    select from list by index    DateOfBirthMonth   12
    sleep    2
    select from list by index    DateOfBirthYear    15
    ${"email_field"}     set variable    id:Email
    input text    ${"email_field"}      test1252@mailinator.com
    sleep    2
    ${"password_field"}     set variable        id:Password
    input text    ${"password_field"}       Lucky@02
    ${"confirmPassword_field"}     set variable    id:ConfirmPassword
    input text    ${"confirmPassword_field"}       Lucky@02
    click element    id:register-button
    sleep    3
    wait until element contains    xpath://div[@class='result']     Your registration completed
#    assert page contains    Your registration completed

