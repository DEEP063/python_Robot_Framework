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

Enter Firstname
    [Arguments]    ${firstname}
    input text    ${firstname_input}  ${firstname}

Enter Lastname
    [Arguments]    ${lastname}
    input text    ${lastname_input}  ${lastname}

Enter Phone
    [Arguments]    ${phone}
    input text    ${phone_input}  ${phone}

Enter Email
    [Arguments]    ${email}
    input text    ${username_input}  ${email}

Enter Address
    [Arguments]    ${address}
    input text    ${address_input}  ${address}

Enter City
    [Arguments]    ${city}
    input text    ${city_input}  ${city}

Enter State
    [Arguments]    ${state}
    input text    ${state_input}  ${state}

Enter PostalCode
    [Arguments]    ${postalcode}
    input text    ${postalCode_input}  ${postalcode}

Select Country
    [Arguments]    ${country}
    select from list by label    ${country_input}   ${country}

Enter Username
    [Arguments]    ${username}
    input text    ${email_input}    ${username}

Enter Password
    [Arguments]    ${Password}
    input text    ${password_input}  ${Password}

Enter ConfirmPassword
    [Arguments]    ${confirmPassword}
    input text    ${confirmPasswordinput}  ${confirmPassword}

Click Submit Button
    click element    ${submit_button}

Page Verification
    page should contain    Thank you for registering.

