*** Settings ***
Library    SeleniumLibrary
Variables    C:/Users/SAI-PC/Desktop/3rx_party/Vare/python_Robot_Framework/PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window

Close browsers
    close all browsers

Open Login Page
    [Arguments]    ${url}
    go to    ${url}

Enter Email
    [Arguments]    ${email}
    input text    ${username_input}  ${email}

Enter Password
    [Arguments]    ${Password}
    input text    ${password_input}  ${Password}

Click Submit Button
    click element    ${submit_button}

Click Logout Button
    click element    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a

Title IS
    title should be    Login: Mercury Tours


