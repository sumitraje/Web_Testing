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
    Input Text    id=twotabsearchtextbox    thinkpad  
    Click Button    id=nav-search-submit-button      
    Wait Until Page Contains    results for "thinkpad"
    Click Link    xpath=/html/body/div[1]/div[2]/div[1]/div/div[1]/div/span[3]/div[2]/div[4]/div/span/div/div/div[2]/div[2]/div/div[1]/h2/a    
    # Click Link    xpath=/html/body/div[1]/div[2]/div[1]/div/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[2]/div/div[1]/div/div/div/h2/a
    Wait Until Page Contains    Back to results
    Click Button    id=add-to-cart-button    
    Wait Until Page Contains    Added to Cart             
    Close Browser


*** Keywords ***
