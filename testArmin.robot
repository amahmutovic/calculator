*** Settings ***
Library           Selenium2Library

*** Test Cases ***
testCircle
    Open Browser    http://bing.com    firefox
    Click Button    sb_form_go
