#language: pt

    Funcionalidade: Configurar produto
        Como cliente da EBAC-SHOP
        Quero configurar meu produto de acordo com meu tamanho e gosto
        E escolher a quantidade
        Para depois inserir no carrinho

        Contexto: Cliente na plataforma EBAC-SHOP
            Dado que estou logado na minha conta da EBAC-SHOP
            E estou na página de um produto específico

            Cenário: Validar obrigatoriedade de seleções de cor, tamanho e quantidade
                Quando eu tentar adicionar o produto ao carrinho sem selecionar cor, tamanho e quantidade
                Então devo ver mensagens de erro indicando que a seleção de cor,tamanho e quantidade é obrigatória               
                   
            Esquema do Cenário: Restrição de quantidade de 10 produtos por venda
                Dado que estou na página de carrinho de compras
                E adiciono "<quantidade_atual>" ao carrinho
                Quando eu tentar adicionar mais "<quantidade_adicionada>" ao carrinho
                Então devo receber uma "<mensagem de alerta>" informando que excedeu o limite de produtos por venda

                Exemplos: 
                | quantidade_atual  | quantidade_adicionada | mensagem de alerta                   |
                | 10                | 01                    | Limite de produto por venda excedido |
                | 08                | 03                    | Limite de produto por venda excedido | 
                | 05                | 06                    | Limite de produto por venda excedido | 
                | 04                | 08                    | Limite de produto por venda excedido | 

            Cenário: Reverter ao estado original ao clicar no botão "Limpar"
                Dado que estou na página de configurações
                E realizei alterações nos campos
                Quando eu clicar no botão "Limpar"
                Então os campos devem ser revertidos ao estado original
