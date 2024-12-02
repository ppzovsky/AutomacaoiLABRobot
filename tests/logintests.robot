*** Settings ***
Library            SeleniumLibrary
Resource          ../resources/keywords/loginkeywords.robot
Resource            ../resources/variables/loginvariables.robot
Test Setup          Comeca a Gravar a Tela
Test Teardown        E fecha Browser   

*** Test Cases ***

CT01_ValidarLoginComCredenciaisValidas
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${VALID_USERNAME}    ${VALID_PASSWORD}
    E tira Print      CT01_CredenciaisPreenchidas    
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_DASHBOARD_PAGE}
    Sleep    2s
    E tira Print     CT01_DashboardPage    

CT02_ValidarLoginComSenhaIncorreta
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${VALID_USERNAME}    ${INVALID_PASSWORD}
    E tira Print      CT02_CredenciaisPreenchidas    
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter  Invalid credentials
    E tira Print      CT02_MensagemDeErro    

CT03_ValidarLoginComUsuarioNaoRegistrado
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    E tira Print      CT03_CredenciaisPreenchidas 
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter  Invalid credentials
    E tira Print      CT03_MensagemDeErro    

CT04_ValidarCamposObrigatoriosNaoPreenchidos
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${EMPTY_CREDENTIALS}    ${EMPTY_CREDENTIALS}
    E tira Print   CT04_CredenciaisEmBranco
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter    Required
    E tira Print     CT04_MensagemDeErro

CT05_ValidarAcessoPaginaForgotYourPassword
    Dado que o usuario esta na pagina de login
    E tira Print    CT05_ForgotPassword
    Quando clicar em "Forgot Password"
    Entao devera estar na pagina   ${URL_RESET_PASSWORD}
    E a pagina devera conter  Reset Password
    E tira Print      CT05_ResetPasswordPage

CT06_ValidarAcessoLinkedIn
    Dado que o usuario esta na pagina de login
    E tira Print    CT06_LinkedIn
    Quando clicar na rede social    ${URL_LINKEDIN}
    Entao devera estar na pagina   ${LINKEDIN_PAGE}
    E tira Print      CT06_LinkedInPage

CT07_ValidarAcessoYoutube
    Dado que o usuario esta na pagina de login
    E tira Print    CT07_Youtube
    Quando clicar na rede social    ${URL_YOUTUBE}
    Entao devera estar na pagina   ${YOUTUBE_PAGE}
    E tira Print      CT07_YoutubeInPage

CT08_ValidarAcessoFacebook
    Dado que o usuario esta na pagina de login
    E tira Print    CT08_Facebook
    Quando clicar na rede social    ${URL_FACEBOOK}
    Entao devera estar na pagina   ${FACEBOOK_PAGE}
    E tira Print      CT08_FacebookPage

CT09_ValidarAcessoTwitter
    Dado que o usuario esta na pagina de login
    E tira Print    CT09_Twitter
    Quando clicar na rede social    ${URL_TWITTER}
    Entao devera estar na pagina   ${TWITTER_PAGE}
    E tira Print      CT09_TwitterPage

CT10_ValidarAcessoOrangeHRM
    Dado que o usuario esta na pagina de login
    E tira Print    CT10_OrangeHRM
    Quando clicar na rede social    ${URL_ORANGEHRM}
    Entao devera estar na pagina   ${ORANGE_PAGE}
    E tira Print      CT10_OrangeHRMPage