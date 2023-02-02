*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}   ${Browser}
    open browser    ${SiteUrl}   ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]     ${username}
    Input Text     ${username_input_field}     ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${password_input_filed}       ${password}

Click Submit Button
    click button    ${submit_button}

Verify successful login
    title should be     Login: Mercury Tours

Close my browser
    close all browsers