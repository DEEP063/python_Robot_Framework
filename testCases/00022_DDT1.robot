*** Settings ***
Library       SeleniumLibrary
Resource        C:/Users/SAI-PC/Desktop/3rx_party/Vare/python_Robot_Framework/Resources/login_resource.robot
#Resource    ../Resources/login_resource.robot
Suite Setup     Open my browser
Suite Teardown    Close browsers
Task Template   Invalid Login

#*** Test Cases ***      Email       Password
#Right email wrong password      criloifoufoubrei-6480@yopmail.com       ${EMPTY}

*** Test Cases ***
REEP    criloifoufoubrei-6480@yopmail.com   ${EMPTY}
WERP    criloifoufoubrei-6480@yopmail.com   12345678
REWP    crileoifoufouwbrei-6480@yopmail.com   1234w57

*** Keywords ***
Invalid Login
    [Arguments]    ${email}    ${password}
    Open Login Page
    Enter Email     ${email}
    Enter Password     ${password}
    Click Login Button
    Error Message should be visible
