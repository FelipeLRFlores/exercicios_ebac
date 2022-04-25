            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login

            Cenário: Autenticação válida
            Quando eu digitar um usuário válido
            E uma senha válida
            Então devo ser redirecionado para a página de checkout

            Esquema do Cenário: Mensagens de erro
            Quando eu digitar um <usuario>
            E uma <senha>
            Então deve exibir uma <mensagem>

            Exemplos:
            | usuario | senha       | mensagem            |
            | "jp"    | "teste@123" | "Usuário inválido!" |
            | "maria" | "12"        | "Senha inválida!"   |

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando digitar o <usuario>
            E a <senha>
            Então devo ser redirecionado para a página de checkout

            Exemplos:
            | usuario | senha             |
            | "joao"  | "Testeumdoistres" |
            | "maria" | "teste@321"       |


