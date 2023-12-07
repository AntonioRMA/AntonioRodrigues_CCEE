*** Settings ***
Resource    ../Resources/Settings.resource
Resource    ../PageObjects/InsurantDataPage.resource

*** Keywords ***
E informo os dados do segurado
    Wait Until Element Is Visible  ${InsurantDataPage.txtFirstName}
    
    ${aleatoryValue}  FakerLibrary.FirstName
    Input Text  ${InsurantDataPage.txtFirstName}  ${aleatoryValue}
    
    ${aleatoryValue}  FakerLibrary.LastName
    Input Text  ${InsurantDataPage.txtLastName}  ${aleatoryValue}
    
    ${aleatoryValue}  FakerLibrary.Date Of Birth  minimum_age=18  maximum_age=70
    ${formattedDate}  Convert Date  ${aleatoryValue} 00:00:00   result_format=%m/%d/%Y
    Input Text  ${InsurantDataPage.txtBirthDate}  ${formattedDate}

    Click Element  ${InsurantDataPage.chkGenderMale} 

    ${aleatoryValue}  FakerLibrary.Address
    Input Text  ${InsurantDataPage.txtStreetAddress}  ${aleatoryValue}
    
    Select From List by Value  ${InsurantDataPage.selCountry}  Brazil

    ${aleatoryValue}  FakerLibrary.Zipcode
    Input Text  ${InsurantDataPage.txtZipCode}  ${aleatoryValue}

    ${aleatoryValue}  FakerLibrary.City
    Input Text  ${InsurantDataPage.txtCity}  ${aleatoryValue}
    
    Select From List by Value  ${InsurantDataPage.selOccupation}  Unemployed

    Click Element  ${InsurantDataPage.chkHobbiesOther}  

    Click Button  ${InsurantDataPage.btnNext}  