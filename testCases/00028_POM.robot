*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/SAI-PC/Desktop/3rx_party/Vare/python_Robot_Framework/Resources/registrationKeyword_POM.robot

*** Variables ***

${url}      https://demo.guru99.com/test/newtours/
${register_url}      https://demo.guru99.com/test/newtours/register.php
${bowser}    chrome

*** Test Cases ***
LoginTest
    Open my browser    ${url}    ${bowser}

    open login page    ${register_url}
    Enter Firstname    kunal
    Enter Lastname    patel
    Enter Phone    987654321
    Enter Email    kunal@yopmail.com
    Enter Address    melbrook
    Enter City    seattle
    Enter State    Boston
    Select Country    FRANCE
    enter username    KunalCool
    enter password    12345678
    enter confirmpassword    12345678
    click submit button
    Page Verification

    close browsers
