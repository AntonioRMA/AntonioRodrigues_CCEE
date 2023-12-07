*** Settings ***
Resource    ../Resources/Settings.resource
Resource    ../PageObjects/VehicleDataPage.resource

*** Keywords ***
Dado que acesso o portal de cotacao veicular    
    Open Browser    ${URL}  ${BROWSER} 

Quando informo os dados do veiculo
    Wait Until Element Is Visible  ${VehicleDataPage.selMake}

    Select From List by Value  ${VehicleDataPage.selMake}   Skoda
    Select From List by Value  ${VehicleDataPage.selModel}  Scooter
    
    ${aleatoryNumber}  FakerLibrary.Random Number  digits=2
    Input Text  ${VehicleDataPage.txtCylinderCapacity}  ${aleatoryNumber}

    ${aleatoryNumber}  FakerLibrary.Random Number  digits=3
    Input Text  ${VehicleDataPage.txtEnginePerformance}  ${aleatoryNumber}

    ${date}    FakerLibrary.Date    pattern=%m/%d/%Y
    Input Text  ${VehicleDataPage.txtDateManufacture}  ${date}

     ${aleatoryNumber}  FakerLibrary.Random Int  min=1  max=9
    Select From List by Value  ${VehicleDataPage.selNumberSeats1}  ${aleatoryNumber}

     ${aleatoryNumber}  FakerLibrary.Random Int  min=1  max=3
    Select From List by Value  ${VehicleDataPage.selNumberSeats2}  ${aleatoryNumber}

    Select From List by Value  ${VehicleDataPage.selFuelType}  Diesel

    ${aleatoryNumber}  FakerLibrary.Random Number  digits=3
    Input Text  ${VehicleDataPage.txtPayload}  ${aleatoryNumber}
    
    Input Text  ${VehicleDataPage.txtTotalWeight}  ${aleatoryNumber}

    ${aleatoryNumber}  FakerLibrary.Random Int  min=500  max=100000
    Input Text  ${VehicleDataPage.txtListPrice}  ${aleatoryNumber}

    ${aleatoryNumber}  FakerLibrary.Random Number  digits=7
    Input Text  ${VehicleDataPage.txtLicensePlateNumber}  ${aleatoryNumber}

    ${aleatoryNumber}  FakerLibrary.Random Number  digits=4
    Input Text  ${VehicleDataPage.txtAnnualMileage}  ${aleatoryNumber}

    Click Button  ${VehicleDataPage.btnNext}