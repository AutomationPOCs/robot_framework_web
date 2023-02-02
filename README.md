# robot_framework_web

Prerequisite
* Python Installation [https://www.python.org/downloads/]
* Pycharm IDE [https://www.jetbrains.com/pycharm/download/#section=windows]
* Install Selenium [Command: pip install selenium]
* Install Robot Framework [Command: pip install robotframework]
* Install Robot Framework Selenium Library [Command: pip install robotframework-seleniumlibrary]

Plugin
* Intellibot @seleniumlibrary patched
- Click on file and open settings 
- Select plugin option
- Search for intellibot @seleniumlibrary patched
- Click on install and then restart pycharm

Framework Aspect
*** Settings ***    : All libraries are defined in this section
*** Variables ***   : Variables that will be common for all methods are defined in this section
*** Test Cases ***  : The actual test case is defined in this section
*** Keywords ***    : Personalized keywords can be defined in this section

Command to Execute the test case
Command: robot TestcaseFolderName\TcName.robot

Reports
Python reports are auto generated and can be seen in the project framework

