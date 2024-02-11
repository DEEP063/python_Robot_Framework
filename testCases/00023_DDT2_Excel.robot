*** Settings ***
Library       SeleniumLibrary
Resource        C:/Users/SAI-PC/Desktop/3rx_party/Vare/python_Robot_Framework/Resources/login_resource.robot
Library    DataDriver   C:/Users/SAI-PC/Desktop/3rx_party/Vare/python_Robot_Framework/testData/Book3.xlsx   sheet_name=Sheet1
Suite Setup     Open my browser
Suite Teardown    Close browsers
Task Template      Invalid Login


*** Test Cases ***
Verify login Excel    ${email}      ${password}



*** Keywords ***
Invalid Login
    [Arguments]    ${email}    ${password}
    Open Login Page
    Enter Email     ${email}
    Enter Password     ${password}
    Click Login Button
    Error Message should be visible
