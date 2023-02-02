*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://demo.guru99.com/test/newtours/
${user}     tutorial
${pass}     tutorial

*** Test Cases ***
loginTest
    Open my Browser    ${SiteUrl}   ${browser}
    Enter Username    ${user}
    Enter Password    ${pass}
    click submit button
    sleep   3
    verify successful login
    close my browser


