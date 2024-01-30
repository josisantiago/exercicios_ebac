#language: pt

Funcionalidade: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto: Cliente na página de cadastro da Tela de cadastro - Checkout
        Dado que estou na tela de cadastroda EBAC-SHOP

        Cenário: Cadastro e autenticação do usuário 
            Quando eu preencher todos os campos obrigatórios marcados com asteriscos
            Então devo ser cadastrado com sucesso

        Esquema do Cenário: Tentativa de cadastro com e-mail inválido
            Quando eu preencher o campo de "<E-mail>" com um formato inválido
            Então devo ver uma "<Mensagem de erro>" indicando formato de e-mail inválido

            Exemplos:
            | E-mail               | Mensagem de Erro                 |
            | email_invalido.com   | Formato de e-mail inválido       |
            | usuario@dominio      | Formato de e-mail inválido       |
            | email@dominio..com   | Formato de e-mail inválido       |

        Cenário: Tentativa de cadastro com campos vazios
            Quando eu tentar cadastrar com campos vazios
            Então devo ver uma mensagem de alerta indicando "Todos os campos obrigatórios devem ser preenchidos"
