*** Settings ***


*** Test Cases ***
LoginTest
    [Tags]    sanity
    log to console    LoginTes testcase
    log to console    LoginTest completed

LogoutTest
    [Tags]    sanity
    log to console    Logout testcase
    log to console    logout completed

RegisterUserTest
    [Tags]    regression
    log to console    registration user testcase
    log to console    registration user completed

UserSettingTest
    [Tags]    regression
    log to console    user setting testcase
    log to console    user settingcompleted



#     robot --include=sanity  .\testCases\00026_Tags.robot
#robot --include=regression  .\testCases\00026_Tags.robot
#robot -i sanity -i regression .\testCases\00026_Tags.robot
#robot -e sanity -i regression .\testCases\00026_Tags.robot
