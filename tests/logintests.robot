*** Settings ***
Library            SeleniumLibrary
Library            ScreenCapLibrary    screenshot_directory=./results/videos
Resource          ../resources/keywords/loginkeywords.robot
Resource    ../resources/variables/loginvariables.robot
Test Setup    Start Video Recording  name=${TEST_NAME}+${CURRENT_DATETIME}  monitor=2
Test Teardown    Stop Video Recording

*** Test Cases ***

CT01 - Login bem-sucedido  
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${VALID_USERNAME}    ${VALID_PASSWORD}
    E tira Print      CT01_CredenciaisPreenchidas
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_DASHBOARD_PAGE}
    E tira Print     CT01_DashboardPage
    E fecha Browser

CT02 - Login com senha incorreta
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${VALID_USERNAME}    ${INVALID_PASSWORD}
    E tira Print      CT02_CredenciaisPreenchidas
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter  Invalid credentials
    E tira Print      CT02_MensagemDeErro
    E fecha Browser

CT03 - Login com usuario nao registrado
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    E tira Print      CT03_CredenciaisPreenchidas
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter  Invalid credentials
    E tira Print      CT03_MensagemDeErro
    E fecha Browser

CT04 - Campos obrigatorios nao preenchidos
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${EMPTY_CREDENTIALS}    ${EMPTY_CREDENTIALS}
    E tira Print   CT04_CredenciaisEmBranco
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter    Required
    E tira Print     CT04_MensagemDeErro
    E fecha Browser

CT05 - Acessar pagina "Forgot your password"
    Dado que o usuario esta na pagina de login
    E tira Print    CT05_ForgotPassword
    Quando clicar em "Forgot Password"
    Entao devera estar na pagina   ${URL_RESET_PASSWORD}
    E a pagina devera conter  Reset Password
    E tira Print      CT05_ResetPasswordPage
    E fecha Browser

CT06 - Acessar LinkedIn
    Dado que o usuario esta na pagina de login
    E tira Print    CT06_LinkedIn
    Quando clicar na rede social    ${URL_LINKEDIN}
    Entao devera estar na pagina   ${LINKEDIN_PAGE}
    E tira Print      CT06_LinkedInPage
    E fecha Browser

CT07 - Acessar Youtube
    Dado que o usuario esta na pagina de login
    E tira Print    CT07_Youtube
    Quando clicar na rede social    ${URL_YOUTUBE}
    Entao devera estar na pagina   ${YOUTUBE_PAGE}
    E tira Print      CT07_YoutubeInPage
    E fecha Browser

CT08 - Acessar Facebook
    Dado que o usuario esta na pagina de login
    E tira Print    CT08_Facebook
    Quando clicar na rede social    ${URL_FACEBOOK}
    Entao devera estar na pagina   ${FACEBOOK_PAGE}
    E tira Print      CT08_FacebookPage
    E fecha Browser

CT09 - Acessar Twitter
    Dado que o usuario esta na pagina de login
    E tira Print    CT09_Twitter
    Quando clicar na rede social    ${URL_TWITTER}
    Entao devera estar na pagina   ${TWITTER_PAGE}
    E tira Print      CT09_TwitterPage
    E fecha Browser

CT10 - Acessar OrangeHRM
    Dado que o usuario esta na pagina de login
    E tira Print    CT10_OrangeHRM
    Quando clicar na rede social    ${URL_ORANGEHRM}
    Entao devera estar na pagina   ${ORANGE_PAGE}
    E tira Print      CT10_OrangeHRMPage
    E fecha Browser