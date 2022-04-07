            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout

            Cenário: Cadastro válido
            Quando eu clicar no botão de finalizar cadastro
            E todos os campos estiverem todos preenchidos
            E o e-mail estiver em formato válido
            Então minha compra deve ser finalizada

            Cenário: Dados incompletos
            Quando eu clicar no botão de finalizar cadastro
            E um ou mais campos obrigatórios não estiverem preenchidos
            Então deve exibir uma mensagem de alerta "Campo(s) obrigatório(s) não preenchido(s)"

            Cenário: E-mail incorreto
            Quando eu clicar no botão de finalizar cadastro
            E o campo e-mail estiver preenchido de forma inválida
            Então deve exibir uma mensagem de alerta "Favor inserir um e-mail válido"

            Cenário: Campos vazios
            Quando eu clicar no botão de finalizar cadastro
            E todos os campos estiverem todos preenchidos
            E um ou mais campos opcionais não estiverem preenchidos
            Então deve exibir uma mensagem de alerta "Campos opcionais não preenchidos, deseja finalizar o cadastro mesmo assim?"

            Esquema do Cenário: Autenticar múltiplos cadastros
            Quando eu digitar o <nome>
            E o <sobrenome>
            E o <nomeEmpresa>
            E o <paisEmpresa>
            E o <endereco>
            E o <cidade>
            E o <pais>
            E o <cep>
            E o <telefone>
            E o <email>
            Então minha compra deve ser finalizada

            Exemplos:
            | nome     | sobrenome | nomeEmpresa | paisEmpresa | endereco     | cidade          | pais     | cep         | telefone  | email              |
            | "Felipe" | "Flores"  | "EBAC"      | "Brasil"    | "avenida123" | "Florianópolis" | "Brasil" | "12345-678" | 998765432 | "felipe@gmail.com" |
            | "João"   | "Silva"   | "EBAC"      | "Brasil"    | "avenida345" | "Florianópolis" | "Brasil" | "87654-321" | 992456789 | "joao@gmail.com"   |
            | "Maria"  | "Santos"  | "EBAC"      | "Brasil"    | "avenida765" | "Florianópolis" | "Brasil" | "34654-757" | 998763332 | "maria@gmail.com"  |




