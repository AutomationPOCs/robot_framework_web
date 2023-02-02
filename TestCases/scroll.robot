*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
screenshots
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    sleep    2
    #scroll page with axes
#    execute javascript    window.scrollTo(0,1500)

    #scroll page upto some element
#    scroll element into view    xpath://*[text()='GitHub']

    #scroll till table footer
    execute javascript    window.scrollTo(0,document.body.scrollHeight)     #end of page
    sleep    4
    execute javascript    window.scrollTo(0,document.body.scrollHeight)     #top of page

    sleep    10