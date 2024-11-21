*** Settings ***
Library            SeleniumLibrary
Library            ScreenCapLibrary    screenshot_directory=./results/videos
Resource          ../resources/keywords/loginkeywords.robot
Resource    ../resources/variables/loginvariables.robot

*** Test Cases ***

CT01 - Login bem-sucedido
    Start Video Recording    name=CT01 - Login bem-sucedido   monitor=2
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${VALID_USERNAME}    ${VALID_PASSWORD}
    E tira Print      CT01_CredenciaisPreenchidas
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_DASHBOARD_PAGE}
    E tira Print     CT01_DashboardPage
    E fecha Browser
    Stop Video Recording

CT02 - Login com senha incorreta
    Start Video Recording    name=CT02 - Login com senha incorreta    monitor=2
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${VALID_USERNAME}    ${INVALID_PASSWORD}
    E tira Print      CT02_CredenciaisPreenchidas
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter  Invalid credentials
    E tira Print      CT02_MensagemDeErro
    E fecha Browser
    Stop Video Recording

CT03 - Login com usuario nao registrado
    Start Video Recording    name=CT03 - Login com usuario nao registrado    monitor=2
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${INVALID_USERNAME}    ${INVALID_PASSWORD}
    E tira Print      CT03_CredenciaisPreenchidas
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter  Invalid credentials
    E tira Print      CT03_MensagemDeErro
    E fecha Browser
    Stop Video Recording

CT04 - Campos obrigatorios nao preenchidos
    Start Video Recording    name=CT04 - Campos obrigatorios nao preenchidos   monitor=2
    Dado que o usuario esta na pagina de login
    E Preencha o formulario com os dados    ${EMPTY_CREDENTIALS}    ${EMPTY_CREDENTIALS}
    E tira Print   CT04_CredenciaisEmBranco
    Quando clicar no botao "Login"
    Entao devera estar na pagina   ${URL_LOGIN_PAGE}
    E a pagina devera conter    Required
    E tira Print     CT04_MensagemDeErro
    E fecha Browser
    Stop Video Recording

CT05 - Acessar pagina "Forgot your password"
    Start Video Recording    name=CT05 - Acessar pagina "Forgot your password"   monitor=2
    Dado que o usuario esta na pagina de login
    E tira Print    CT05_ForgotPassword
    Quando clicar em "Forgot Password"
    Entao devera estar na pagina   ${URL_RESET_PASSWORD}
    E a pagina devera conter  Reset Password
    E tira Print      CT05_ResetPasswordPage
    E fecha Browser
    Stop Video Recording

CT06 - Acessar LinkedIn
    Start Video Recording    name=CT06 - Acessar LinkedIn   monitor=2
    Dado que o usuario esta na pagina de login
    E tira Print    CT06_LinkedIn
    Quando clicar na rede social    ${URL_LINKEDIN}
    Entao devera estar na pagina   ${LINKEDIN_PAGE}
    E tira Print      CT06_LinkedInPage
    E fecha Browser
    Stop Video Recording

CT07 - Acessar Youtube
    Start Video Recording    name=CT07 - Acessar Youtube   monitor=2
    Dado que o usuario esta na pagina de login
    E tira Print    CT07_Youtube
    Quando clicar na rede social    ${URL_YOUTUBE}
    Entao devera estar na pagina   ${YOUTUBE_PAGE}
    E tira Print      CT07_YoutubeInPage
    E fecha Browser
    Stop Video Recording

CT08 - Acessar Facebook
    Start Video Recording    name=CT08 - Acessar Facebook   monitor=2
    Dado que o usuario esta na pagina de login
    E tira Print    CT08_Facebook
    Quando clicar na rede social    ${URL_FACEBOOK}
    Entao devera estar na pagina   ${FACEBOOK_PAGE}
    E tira Print      CT08_FacebookPage
    E fecha Browser
    Stop Video Recording

CT09 - Acessar Twitter
    Start Video Recording    name=CT09 - Acessar Twitter  monitor=2
    Dado que o usuario esta na pagina de login
    E tira Print    CT09_Twitter
    Quando clicar na rede social    ${URL_TWITTER}
    Entao devera estar na pagina   ${TWITTER_PAGE}
    E tira Print      CT09_TwitterPage
    E fecha Browser
    Stop Video Recording

CT10 - Acessar OrangeHRM
    Start Video Recording    name=CT10 - Acessar OrangeHRM   monitor=2
    Dado que o usuario esta na pagina de login
    E tira Print    CT10_OrangeHRM
    Quando clicar na rede social    ${URL_ORANGEHRM}
    Entao devera estar na pagina   ${ORANGE_PAGE}
    E tira Print      CT10_OrangeHRMPage
    E fecha Browser
    Stop Video Recording