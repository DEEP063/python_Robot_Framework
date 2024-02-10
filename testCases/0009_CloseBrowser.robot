*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  edge
${url1}     https://demo.nopcommerce.com/register?returnUrl=%2F
${url2}     https://demowebshop.tricentis.com/register

*** Test Cases ***
TesingBrowsers
    open browser    ${url1}     ${browser}
    maximize browser window

    open browser    ${url2}     ${browser}
    maximize browser window

#    close browser
    close all browsers