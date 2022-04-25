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

            Esquema do Cenário: Seleção inválida

            Quando eu selecionar a <cor>
            E o <tamanho>
            E a <quantidade>
            E clicar no botão Comprar, o sistema deve retornar a <mensagem>

            Exemplos:
            | cor       | tamanho | quantidade | mensagem                                                |
            | ""        | "XP"    | 1          | "Favor selecionar a cor do produto"                     |
            | "Azul"    | ""      | 2          | "Favor selecionar o tamanho do produto"                 |
            | "Laranja" | "M"     | 11         | "Você pode comprar um máximo de 10 produtos deste item" |

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
            | "Vermelho" | "P"     | 2          |
            | "Laranja"  | "M"     | 3          |

