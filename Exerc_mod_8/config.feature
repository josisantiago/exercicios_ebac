#language: pt

Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto: Cliente na EBAC-SHOP
        Dado que estou logado na minha conta da EBAC-SHOP
        E estou na página de um produto específico

    Esquema do Cenário: Configurar produto com tamanho e cor personalizados
        Quando eu selecionar o tamanho "<Tamanho>"
        E eu escolher a cor "<Cor>"
        Então a página deve refletir as configurações personalizadas

        Exemplos:
            | Tamanho | Cor      |
            | Pequeno | Azul     |
            | Médio   | Laranja  |
            | Grande  | Vermelho |

    Cenário: Escolher quantidade do produto
        Quando eu inserir a quantidade desejada como "3"
        Então a quantidade selecionada deve ser exibida corretamente

    Cenário: Adicionar produto ao carrinho
        Quando eu clicar no botão "Adicionar ao Carrinho"
        Então o produto personalizado e a quantidade escolhida devem ser adicionados ao meu carrinho

    Cenário: Validar carrinho após adição do produto
        Quando eu acessar meu carrinho de compras
        Então o produto personalizado com a quantidade correta deve estar listado no carrinho