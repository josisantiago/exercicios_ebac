#language: pt

Funcionalidade: Login na plataforma EBAC-SHOP
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma  
    Para visualizar meus pedidos

    Cenário: Login bem-sucedido direciona para a tela de checkout
        Dado que estou na página de login
        Quando eu inserir dados de login válidos
        Então devo ser direcionado para a tela de checkout

    Esquema do Cenário: Login com campos inválidos exibe mensagem de alerta
        Dado que estou na página de login
        Quando eu inserir um  "<usuario inválido>" ou uma "<senha invalida>"
        Então devo ver a mensagem de alerta "<Usuário ou senha inválidos>"

        Exemplos: 
        | Usuário          | Senha            | Mensagem de alerta
        | usuario_invalido | senha_valida     | Usuário ou senha inválidos
        | usuario_valido   | senha_invalida   | Usuário ou senha inválidos 
        | usuario_valido   | senha_invalida   | Usuário ou senha inválidos 
        | usuario_invalido | senha_invalida   | Usuário ou senha inválidos
    