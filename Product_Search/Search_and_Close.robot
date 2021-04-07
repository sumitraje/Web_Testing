*** Settings ***
Documentation    User searches for a product, search result page loads and then browser is closed.
Library    SeleniumLibrary    



*** Variables ***



*** Test Cases ***
User must sign in to check out
    [Documentation]    User searches for a product
    ...    The search result page should load
    [Tags]    Smoke
    Open Browser    https://www.amazon.com    ff
    Close Browser


*** Keywords ***
