*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
screenshots
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    maximize browser window
    sleep    3
    input text    name:username     Admin
    sleep    1
    input text    name:password     admin123
    capture element screenshot    xpath://*[@class="orangehrm-login-branding"]/img      C:\Users\bughu\PycharmProjects\RobotProject\pagelogo.png
    capture page screenshot    C:\Users\bughu\PycharmProjects\RobotProject\completepage.png
    close browser


