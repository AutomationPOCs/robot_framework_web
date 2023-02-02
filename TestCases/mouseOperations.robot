*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
   #right_click
   open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
   maximize browser window
   #keyword to right click
   open context menu    xpath://span[@class="context-menu-one btn btn-neutral"]
   sleep    2
   #double_click
   go to    https://testautomationpractice.blogspot.com/
   maximize browser window
   double click element    xpath://button[contains(text(),'Copy Text')]
   sleep    2

   #drag_drop
   drag and drop    id:draggable    id:droppable
   sleep    6



   close browser
