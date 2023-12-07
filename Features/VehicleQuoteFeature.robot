*** Settings ***
Resource  ../Steps/InsurantDataSteps.robot
Resource  ../Steps/ProductDataSteps.robot
Resource  ../Steps/SelectPriceOptionSteps.robot
Resource  ../Steps/SendCoteSteps.robot
Resource  ../Steps/VehicleDataSteps.robot

** Test Cases **
# [Tags] CT0001
Cenario 1: Realizando uma cotacao
    Dado que acesso o portal de cotacao veicular
    Quando informo os dados do veiculo
    E informo os dados do segurado
    E informo os dados do produto
    E realizo a selecao do preco
    E envio a cotacao
    Entao verifico se o envio da cotacao foi bem sucedido


