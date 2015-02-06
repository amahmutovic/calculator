*** Settings ***
Library           Selenium2Library
Library           ${CURDIR}\\src\\Selenium2LibraryFlexPilot    WITH NAME    Selenium2LibraryFlexPilot

*** Test Cases ***
test
    Set Selenium Speed    2 seconds
    desktop    chrome    38    Windows    XP    1024x768
    desktop    IE    8    Windows    7    1024x768
    desktop    Safari    8.0    OS X    Yosemite    1024x768

*** Keywords ***
Input Query Text
    [Arguments]    ${query}
    Input Text    sb_form_q    ${query}

desktop
    [Arguments]    ${browser_name}    ${browser_version}    ${os}    ${os_ver}    ${resolution}
    Open Browser    http://bing.com    firefox    remote_url=http://ismir1:odnqcPB5DWEusfrfqZHs@hub.browserstack.com/wd/hub    desired_capabilities=browserName:${browser_name},version:${browser_version},os:${os},os_version:${os_ver},screen-resolution:${resolution}
    Capture Page Screenshot
    Maximize Browser Window
    Title Should Be    Bing
    Input Query Text    nba
    Click Element    sb_form_go
    Capture Page Screenshot
    Close Browser
