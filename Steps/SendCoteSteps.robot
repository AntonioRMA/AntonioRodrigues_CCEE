*** Settings ***
Resource    ../Resources/Settings.resource
Resource    ../PageObjects/SendCotePage.resource

*** Keywords ***
E envio a cotacao
    Wait Until Element Is Visible  ${SendCotePage.txtEmail}
    
    ${aleatoryValue}  FakerLibrary.Email
    Input Text  ${SendCotePage.txtEmail}  ${aleatoryValue}


    ${aleatoryValue}  FakerLibrary.Random Number  digits=9
    Input Text  ${SendCotePage.txtPhone}  ${aleatoryValue}
    
    ${aleatoryValue}  FakerLibrary.User Name
    Input Text  ${SendCotePage.txtUsername}  ${aleatoryValue}


    Input Text  ${SendCotePage.txtPassword}  Abc@123
    Input Text  ${SendCotePage.txtConfirmPassword}  Abc@123

    Click Button  ${SendCotePage.btnSend} 

Entao verifico se o envio da cotacao foi bem sucedido
    Wait Until Element Is Visible  ${SendCotePage.lblMensagemConclusao}  15s

    ${mensagem sucesso}  Get Text  ${SendCotePage.lblMensagemConclusao}
    Should Be Equal As Strings  ${mensagem sucesso}  Sending e-mail success!


