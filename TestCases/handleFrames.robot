*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
HnadlingFrames
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    maximize browser window


    select frame    packageListFrame    #id, name, xpath
    click link    org.openqa.selenium.bidi
    unselect frame
    sleep    2

    select frame    packageFrame
    click link    Command
    unselect frame
    sleep    2

    select frame    classFrame
    click link    Help
    unselect frame
    sleep    2

    close browser
