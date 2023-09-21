*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    edge
${username}=    Admin
${password}=    admin123
*** Test Cases ***
tc01 Login Test 
    Open Browser    ${url}    ${browser} 
    Maximize Browser Window
    Sleep    3
    Input Text    name:username    ${username}
    Input Password    name:password    ${password}
    Click Button    class:oxd-button
    Sleep    3
    Element Text Should Be    xpath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[1]/span/h6    Dashboard
    Sleep    3
    Click Element    xpath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span/p
    Sleep    3
    Click Element    Link:Logout
    Sleep    3
    Element Should Be Visible    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button 
    Close Browser
*** Keywords ***
