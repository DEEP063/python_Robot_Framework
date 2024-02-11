*** Settings ***
Library    SeleniumLibrary

Suite Setup     log to console  OPEN BROWSER
Suite Teardown     log to console  CLOSE BROWSER

Test Setup    log to console    LOGINURL
Test Teardown    log to console    LOGOUTURL


*** Test Cases ***
TC1
    log to console    TC1 testcase
TC2
    log to console    TC2 testcase
