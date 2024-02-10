*** Settings ***
Library    SeleniumLibrary

#declaring variables
*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com

*** Test Cases ***
LoginTest
#    using variables
    open browser    ${url}    ${browser}
    maximize browser window
    click link    xpath://a[text()='Log in']

#    using keywords
    loginintotheapplication
    close browser

*** Keywords ***
#creating keywords
loginIntoTheApplication
        input text    id:Email  deepak.kona815@gmail.com
        input text    id:Password   999aakash
        click button    xpath://button[text()='Log in']