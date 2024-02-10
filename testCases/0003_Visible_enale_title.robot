*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com
*** Test Cases ***
Test_Visiblity_enability_title
    open browser    ${url}  ${browser}
    maximize browser window
    click link    xpath://a[text()='Log in']
    title should be    nopCommerce demo store. Login

#    creating and storing element
    ${"email_element"}  set variable    id:Email
    element should be visible    ${"email_element"}
    element should be enabled    ${"email_element"}

    input text    ${"email_element"}    abcdefghij
    clear element text    ${"email_element"}

    close browser
*** Keywords ***
