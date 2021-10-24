*** Settings ***
Documentation    Aqui estarão presentes todas as keywords dos testes web.

Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            http://automationpractice.com/index.php

*** Keywords ***
Abrir navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar navegador    
    Capture Page Screenshot
    Close Browser

Acessar a página home do site Automation Practice
    Go To    ${URL}
    Title Should Be    My Store
    Wait Until Element Is Visible     Xpath=//*[@id="block_top_menu"]/ul


Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text       id=search_query_top        ${PRODUTO}


Clicar no botão pesquisar
    Click Element    name=submit_search



Conferir se o produto "${PRODUTO}" foi listado no site
    Page Should Contain Image        xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Title Should Be                   Search - My Store
Conferir mensagem "${PRODUTO}"
    Element Should Be Visible              xpath=//*[contains(text(), 'No results were found for your search')]

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
   Mouse Over        xpath=//*[@id="block_top_menu"]/ul/li[1]/a               


Clicar na sub-categoria "Summer Dresses"
    Click Element    xpath=//*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na pagina
    Page Should Contain Element           xpath=//*[@id="center_column"]/div[1]/div/div/span



 Clicar em "Sign in"
    Click Element        xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Capture Page Screenshot
			
Infomar um e-mail válido 
    Input Text            xpath=//*[@id='create-account_form']/div/div[2]/input        carolinee@gmail.com

Clicar em "Create an account"
    Click Element        xpath=//*[@id="SubmitCreate"]/span

Preencher os dados obrigatórios 
    Wait Until Element Is Visible            xpath=//*[@id='id_gender2']            30
    Click Element                            xpath=//*[@id='id_gender2']           
    Input Text                               xpath=//*[@id="customer_firstname"]       Caroline
    Input Text                               xpath=//*[@id="customer_lastname"]        Santos
    Input Text                               xpath=//*[@id="email"]       carolinee@gmail.com
    Input Text                               xpath=//*[@id="passwd"]        123456    
    Select From List By Value                xpath=//*[@id="days"]        9
    Select From List By Value                xpath=//*[@id="months"]        5
    Select From List By Value                xpath=//*[@id="years"]        1996
    Input Text                               xpath=//*[@id="firstname"]        Caroline
    Input Text                               xpath=//*[@id="lastname"]        Santos
    Input Text                               xpath=//*[@id="company"]        Prime
    Input Text                               xpath=//*[@id="address1"]        Avenida 
    Input Text                               xpath=//*[@id="address2"]        Rua
    Input Text                               xpath=//*[@id="city"]        Sao Paulo
    Select From List By Value                xpath=//*[@id="id_state"]            9
    Input Text                               xpath=//*[@id="postcode"]        00000
    Select From List By Value                xpath=//*[@id="id_country"]        21
    Input Text                               xpath=//*[@id="other"]        00000000
    Input Text                               xpath=//*[@id="phone"]        0000-0000
    Input Text                               xpath=//*[@id="phone_mobile"]        000000000
    Input Text                               xpath=//*[@id="alias"]        Avenida Paulista
 

Submeter cadastro                         
    Page Should Contain Element               xpath=//*[@id="page"]/div[2]
    Click Element                             xpath=//*[@id="submitAccount"]/span
Conferir se o cadastro foi efetuado com sucesso
    Capture Page Screenshot                           
                            
            

       