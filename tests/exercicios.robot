*** Settings ***
Documentation  Neste arquivo estarão presentes todos os exercicios de automação do curso da Prime 
Library    Collections
Library    String

*** Variables ***
# Minha primeira variavel do tipo dicionario 
&{PESSOA}
...     nome=Helder
...     sobrenome=Fernandes
...     idade=28 anos
...     cpf= 1234456789899
...     profissao= analista
...     carro= palio

@{FRUTAS}  Banana  Abacaxi Limao  Jabuticaba

*** Test Cases ***
Cenario: Imprimindo 6 informações de uma pessoa
    log to console  ${PESSOA.nome}
    log to console  ${PESSOA.sobrenome}
    log to console  ${PESSOA.idade}
    log to console  ${PESSOA.cpf}
    log to console  ${PESSOA.profissao}
    log to console  ${PESSOA.carro}

Cenario: Imprimindo uma lista de frutas 
    [tags]                 LISTA     
    Log To Console       ${FRUTAS}
    log to console       ${FRUTAS[0]}
    log to console       ${FRUTAS[3]}

Cenario: Somando dois numeros 
    [Tags]               SOMAR 
Somar dois numeros        10     10  

Cenario: Contando de 0 a 9
    [Tags]         CONTAR 
    FOR  ${COUNT}  IN RANGE  0    9
        Log To Console    ${COUNT}
    END



     IN    @{LIST}
    Log    ${COUNT}
 
 Cenario: Percorrendo lista de frutas
     [Tags]           FRUTAS
     Percorrer itens se uma lista
    
Cenario: Numeros de 0 a 10
    [Tags]       Numero
    Numero de 0 a 10

END

    F}    IN    @{LIST}
        L}
        
    END
}   
    F}    IN    @{LIST}
        L}
        
    END IN    @{LIST}
    }
        
    END
*** Keywords ***
Somar dois numeros    
    [Arguments]         ${NUM_A}  ${NUM_B}
    ${SOMA}             Evaluate    ${NUM_A}+${NUM_B}
    [Return]            ${SOMA}

Somar os numeros "${NUM_A}" e"${NUM_B}" 
    ${SOMA}    Evaluate      ${NUM_A}+{NUM_B}
    [Return]    ${SOMA}



*** Keywords ***
&{PESSOA}  
...     nome=caroline 
...     sobrenome=santos
...     idade=25anos 

[Arguments]   ${NOME} ${SOBRENOME} {IDADE}
    ${NOME}_{SOBRENOME}_{IDADE}@robot.com

Contar de 0 a 9
    FOR     ${COUNT}    IN RANGE
        Log To Console    ${COUNT}
    END

Percorrer itens de uma lista 
    @{FRUSTAS}    Create List     Banana    Abacaxi    Limao
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log To Console        ${FRUTA}
        END

Numero de 0 a 10
    For    ${COUNT} IN RANGE 0    9
        Log To Console    Estou no numero ${COUNT}
    END      
