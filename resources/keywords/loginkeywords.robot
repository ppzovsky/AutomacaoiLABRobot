*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/loginvariables.robot

*** Keywords ***
Dado que o usuario esta na pagina de login
    Open Browser    ${URL_LOGIN_PAGE}    Chrome
    Sleep    3s

E Preencha o formulario com os dados    
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}

Quando clicar no botao "Login"
    Submit Form    ${FORM_CLASS}

Quando clicar em "Forgot Password"
    Click Element    ${FORGOT_CLASS}

Quando clicar na rede social 
    [Arguments]    ${social}
    ${original_handles}=    Get Window Handles
    ${numero_abas_inicial}=    Get Length    ${original_handles}
    Click Element    css=a[href="${social}"]
    Sleep    2s
    ${new_handles}=    Get Window Handles
    ${numero_abas_final}=    Get Length    ${new_handles}
    Should Be True    ${numero_abas_final} > ${numero_abas_inicial}
    Switch Window    ${new_handles}[-1]

Entao devera estar na pagina     
    [Arguments]    ${expected_url}
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${expected_url}

E tira Print   
    [Arguments]    ${name}
    Sleep    1.5s
    Capture Page Screenshot    ../results/screenshots/${name}.png

E a pagina devera conter
    [Arguments]    ${text}
    Sleep    1.5s
    Page Should Contain    ${text}

E fecha Browser
    Close Browser
