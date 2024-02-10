*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Test_Visiblity_enability_title
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds

    select from list by label    continents     Australia
    select from list by index    continents     4


    select from list by label    selenium_commands  Navigation Commands
    select from list by index    selenium_commands  4

    unselect from list by label    selenium_commands    Navigation Commands

    sleep    5

*** Keywords ***
