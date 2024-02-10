*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com    chrome
    maximize browser window
    click link    xpath://a[text()='Log in']
    input text    id:Email  deepak.kona815@gmail.com
    input text    id:Password   999aakash
    click button    xpath://button[text()='Log in']
    close browser

*** Keywords ***
