*** Settings ***
Resource    ../Resources/Settings.resource
Resource    ../PageObjects/SelectPriceOptionPage.resource

*** Keywords ***
E realizo a selecao do preco
    Wait Until Element Is Visible  ${SelectPriceOptionPage.chksGold}
    Click Element  ${SelectPriceOptionPage.chksGold}
    
    Wait Until Element Is Visible  ${SelectPriceOptionPage.btnnNext}
    Click Button  ${SelectPriceOptionPage.btnnNext}