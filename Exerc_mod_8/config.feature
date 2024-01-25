#language: pt

    Funcionalidade: Configurar produto
        Como cliente da EBAC-SHOP
        Quero configurar meu produto de acordo com meu tamanho e gosto
        E escolher a quantidade
        Para depois inserir no carrinho

        Contexto: Cliente na plataforma EBAC-SHOP
            Dado que estou logado na minha conta da EBAC-SHOP
            E estou na página de um produto específico

            Esquema do Cenário: Validar obrigatoriedade de seleções de cor, tamanho e quantidade
                Quando eu tentar adicionar o produto ao carrinho sem selecionar "<cor>" ou "<tamanho>" ou "<quantidade>"
                Então devo ver mensagens de erro indicando que a seleção de cor ou tamanho ou quantidade é obrigatória
                E o produto não deve ser adicionado ao carrinho

                Exemplos:
                    | Cor      | Tamanho | Quantidade | Mensagem de Erro                         |
                    | Laranja  | Médio   |            | "A seleção de cor é obrigatória."        |
                    | Azul     |         | 2          | "A seleção de tamanho é obrigatória."    |
                    | Vermelho | Médio   |            | "A seleção de quantidade é obrigatória." |
                    | Laranja  | Grande  | 5          | "A seleção de quantidade é obrigatória." |
                    | Amarelo  | Pequeno | 0          | "A seleção de quantidade é obrigatória." |

            Cenário: Restrição de quantidade de 10 produtos por venda
                Dado que estou na página de carrinho de compras
                E já adicionei 10 produtos ao carrinho
                Quando eu tentar adicionar mais um produto ao carrinho
                Então devo receber uma mensagem informando que excedeu o limite de produtos por venda
                E a quantidade de produtos no carrinho não deve ser alterada

            Cenário: Reverter ao estado original ao clicar no botão "Limpar"
                Dado que estou na página de configurações
                E realizei alterações nos campos
                Quando eu clicar no botão "Limpar"
                Então os campos devem ser revertidos ao estado original
