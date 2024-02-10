*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
Test_Registration
    ${speed}    get selenium speed
    log to console    ${speed}

    set selenium speed    1 seconds

    open browser    ${url}  ${browser}
    maximize browser window
    select radio button    Gender   M
    input text    id:FirstName  Raghav
    input text    id:LastName  pal
    input text    id:Email  raghav@yopmail.com
    input text    id:Password  12345678
    input text    id:ConfirmPassword  12345678

    ${speed}    get selenium speed
    log to console    ${speed}

    sleep    7


