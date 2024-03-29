*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTest
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window

    ${rows}     get element count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}     get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    log to console    ${rows}
    log to console    ${cols}

    table column should contain    xpath://table[@name='BookTable']     2   Author
    table row should contain    xpath://table[@name='BookTable']    4   300

    table cell should contain    xpath://table[@name='BookTable']    5  2   Mukesh

    table header should contain    xpath://table[@name='BookTable']    BookName




