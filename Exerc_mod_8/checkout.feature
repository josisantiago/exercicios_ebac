#language: pt

Funcionalidade: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Cenário: Cadastro com dados obrigatórios
        Dado que estou na página de cadastro
        Quando eu preencher todos os campos obrigatórios marcados com asteriscos
        Então devo ser cadastrado com sucesso

     Esquema do Cenário: Tentativa de cadastro com e-mail inválido
        Dado que estou na página de cadastro
        Quando eu preencher o campo de e-mail com um formato inválido
        Então devo ver uma mensagem de erro indicando "Formato de e-mail inválido"

        Exemplos: 
            | Nome       | Email               | Senha          |
            | João Silva | email_invalido.com  | senha_segura   |
            | Maria Lima | usuario@dominio.com |               |
            |            | outro@exemplo.com   | senha123       |

    Esquema do Cenário: Tentativa de cadastro com campos vazios
        Dado que estou na página de cadastro
        Quando eu tentar cadastrar com "<campo>" vazio
        Então devo ver uma mensagem de alerta indicando "Todos os campos obrigatórios devem ser preenchidos"

        Exemplos: 
            | Nome       | Email               | Senha          |
            |            |                     |                |
            |            | usuario@dominio.com | senha_segura   |
            | João Silva |                     | senha123       |
            | Maria Lima | outro@exemplo.com   |                |
