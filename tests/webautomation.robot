*** Settings ***
Documentation  Aqui estarão presentes os primeiros testes automatizados Web.

Resource        ../resources/keywords/kws_webautomation.robot
Task Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente 
     [Tags]            PESQUISAR
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02: Pesquisar produto não existente
     [Tags]            PROCURAR
     Acessar a página home do site Automation Practice
     Digitar o nome do produto "item não existente" no campo de pesquisa
      Clicar no botão pesquisar
     Conferir mensagem "item nao existente"

Caso de Teste 03: Listar produto
      [Tags]        SELECIONAR
      Acessar a página home do site Automation Practice        
      Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
     Clicar na sub-categoria "Summer Dresses"
     Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na pagina

Caso de Teste 04: Adicionar Cliente
      [Tags]        ADICIONAR
     Acessar a página home do site Automation Practice        
     Clicar em "Sign in"
     Infomar um e-mail válido 
     Clicar em "Create an account"
     Preencher os dados obrigatórios 
     Submeter cadastro 
     Conferir se o cadastro foi efetuado com sucesso



     



    