*** Settings ***
Resource    ../Resources/Settings.resource
Resource    ../PageObjects/ProductDataPage.resource

*** Keywords ***
E informo os dados do produto
    Wait Until Element Is Visible  ${ProductDataPage.txtStartDate}

    ${current}    Get Current Date
    ${date}    Add Time To Date    ${current}    33 days  result_format=%m/%d/%Y
    Input Text  ${ProductDataPage.txtStartDate}  ${date}

    Select From List by Value  ${ProductDataPage.selInsuranceSum}  10000000

    Select From List by Value  ${ProductDataPage.selMeritRating}  Malus 10

    Select From List by Value  ${ProductDataPage.selDamageInsurance}  Partial Coverage

    Click Element  ${ProductDataPage.chkOptionalProductsLegalDefenseInsurance} 

    Select From List by Value  ${ProductDataPage.selCourtesyCar}  Yes

    Click Button  ${ProductDataPage.btnNext}