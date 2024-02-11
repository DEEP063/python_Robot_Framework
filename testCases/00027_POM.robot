*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/SAI-PC/Desktop/3rx_party/Vare/python_Robot_Framework/Resources/loginKeyword_POM.robot

*** Variables ***

${url}      https://demo.guru99.com/test/newtours/
${bowser}    chrome

*** Test Cases ***
LoginTest
    Open my browser    ${url}    ${bowser}

    open login page    ${url}
    Enter Email    admin
    Enter Password    admin
    Click Submit Button
    Title IS

    Close browsers


