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

            Cenário: Usuário inválido
            Quando eu digitar um usuário inválido
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: senha inválida
            Quando eu digitar uma senha inválida
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando digitar o <usuario>
            E a <senha>
            Então devo ser redirecionado para a página de checkout

            Exemplos:
            | usuario | senha       |
            | "joao"  | "teste@123" |
            | "maria" | "teste@321" |


