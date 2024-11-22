*** Settings ***
Library    DateTime
Library    FakerLibrary    locale=pt_BR
*** Variables ***
${URL_LOGIN_PAGE}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${URL_DASHBOARD_PAGE}    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${USERNAME_FIELD}        name=username
${PASSWORD_FIELD}        name=password
${FORM_CLASS}            class:oxd-form
${FORGOT_CLASS}          class:orangehrm-login-forgot-header
${CSV_FILE}            logins_senhas.csv
${VALID_USERNAME}       Admin
${VALID_PASSWORD}       admin123
${INVALID_PASSWORD}     FakerLibrary.Password
${INVALID_USERNAME}     FakerLibrary.First Name
${EMPTY_CREDENTIALS}    ${EMPTY}
${URL_RESET_PASSWORD}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/requestPasswordResetCode
${URL_LINKEDIN}    https://www.linkedin.com/company/orangehrm/mycompany/
${URL_YOUTUBE}    https://www.youtube.com/c/OrangeHRMInc
${URL_FACEBOOK}    https://www.facebook.com/OrangeHRM/
${URL_TWITTER}    https://twitter.com/orangehrm?lang=en
${URL_ORANGEHRM}    http://www.orangehrm.com
${LINKEDIN_PAGE}    https://br.linkedin.com/company/orangehrm
${YOUTUBE_PAGE}    https://www.youtube.com/c/OrangeHRMInc
${FACEBOOK_PAGE}    https://www.facebook.com/OrangeHRM/
${TWITTER_PAGE}    https://x.com/orangehrm?lang=en
${ORANGE_PAGE}    https://www.orangehrm.com/
${CURRENT_DATETIME}    Get Current Date    result_format=%Y-%m-%d