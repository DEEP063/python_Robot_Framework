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

    capture element screenshot    xpath:/html/body/div[6]/div[1]/div[2]/div[1]/a/img    C:/Users/SAI-PC/Desktop/3rx_party/Vare/python_Robot_Framework/Screenshots/Elment.png
    capture page screenshot    C:/Users/SAI-PC/Desktop/3rx_party/Vare/python_Robot_Framework/Screenshots/logo.png