            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu entre na página do produto

            Cenário: Seleção válida

            Quando eu clicar no botão Comprar
            E a cor do produto estiver selecionada
            E o tamanho do produto estiver selecionado
            E a quantidade de produtos for menor ou igual a 10
            Então devo ser redirecionado para a página do carrinho

            Cenário: Cor não escolhida

            Quando eu clicar no botão Comprar
            E a cor do produto não estiver selecionada
            Então deve exibir uma mensagem de alerta "Favor selecionar a cor do produto"

            Cenário: Tamanho não escolhido

            Quando eu clicar no botão Comprar
            E o tamanho do produto não estiver selecionado
            Então deve exibir uma mensagem de alerta "Favor selecionar o tamanho do produto"

            Cenário: Limite de produtos atingido

            Quando eu clicar no botão Comprar
            E a quantidade de produtos for maior que 10
            Então deve exibir uma mensagem de alerta "Você pode comprar um máximo de 10 produtos deste item"

            Cenário: Limpar seleção
            Quando eu clicar no botão Limpar
            E alguma seleção de cor, tamanho ou quantidade estiver selecionada
            Então a tela deve voltar ao estado original

            Cenário: Manter tela
            Quando eu clicar no botão Limpar
            E a tela estiver em seu estado original
            Então a tela deve se manter no estado original

            Esquema do Cenário: Autenticar múltiplos produtos
            Quando eu escolher a <cor>
            E o <tamanho>
            E a quantidade for <quantidade>
            Então devo ser redirecionado para a página do carrinho

            Exemplos:
            | cor        | tamanho | quantidade |
            | "Azul"     | "XP"    | 1          |
            | "Azul"     | "P"     | 1          |
            | "Azul"     | "M"     | 1          |
            | "Azul"     | "G"     | 1          |
            | "Azul"     | "XG"    | 1          |
            | "Vermelho" | "XP"    | 1          |
            | "Vermelho" | "P"     | 1          |
            | "Vermelho" | "M"     | 1          |
            | "Vermelho" | "G"     | 1          |
            | "Vermelho" | "XG"    | 1          |
            | "Laranja"  | "XP"    | 1          |
            | "Laranja"  | "P"     | 1          |
            | "Laranja"  | "M"     | 1          |
            | "Laranja"  | "G"     | 1          |
            | "Laranja"  | "XG"    | 1          |
            | "Azul"     | "XP"    | 2          |
            | "Azul"     | "P"     | 2          |
            | "Azul"     | "M"     | 2          |
            | "Azul"     | "G"     | 2          |
            | "Azul"     | "XG"    | 2          |
            | "Vermelho" | "XP"    | 2          |
            | "Vermelho" | "P"     | 2          |
            | "Vermelho" | "M"     | 2          |
            | "Vermelho" | "G"     | 2          |
            | "Vermelho" | "XG"    | 2          |
            | "Laranja"  | "XP"    | 2          |
            | "Laranja"  | "P"     | 2          |
            | "Laranja"  | "M"     | 2          |
            | "Laranja"  | "G"     | 2          |
            | "Laranja"  | "XG"    | 2          |


