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

            Esquema do Cenário: Mensagens de erro

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
            Então deve ser exibida a <mensagem>
            Exemplos:
            | nome    | sobrenome | nomeEmpresa | paisEmpresa | endereco     | cidade          | pais     | cep         | telefone       | email             | mensagem                                                                     |
            | ""      | ""        | ""          | ""          | ""           | "               | "Brasil" | ""          | ""             | ""                | "Campo(s) obrigatório(s) não preenchido(s)"                                  |
            | "João"  | "Silva"   | "EBAC"      | "Brasil"    | "avenida345" | "Florianópolis" | "Brasil" | "87654-321" | (48)99245-6789 | "joaogmail.com"   | "Favor inserir um e-mail válido"                                             |
            | "Maria" | "Santos"  | "EBAC"      | "Brasil"    | "avenida765" | "Florianópolis" | ""       | "34654-757" | (48)99245-6789 | "maria@gmail.com" | "Campos opcionais não preenchidos, deseja finalizar o cadastro mesmo assim?" |


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
            | nome         | sobrenome | nomeEmpresa | paisEmpresa | endereco                       | cidade             | pais     | cep         | telefone       | email              |
            | "Felipe"     | "Flores"  | "EBAC"      | "Brasil"    | "avenida123"                   | "Florianopolis"    | "Brasil" | "12345-678" | (48)99876-5432 | "felipe@gmail.com" |
            | "João Silva" | "Silva"   | "EBAC"      | "BR"        | "avenida345- Florianópolis-SC" | "Florianópolis"    | "Brasil" | "87654-321" | 48992456789    | "joao@gmail.com"   |
            | "M@ria"      | "S1ntos"  | "EBAC"      | "Brasil"    | "av.765"                       | "Florianópolis-SC" | "Brasil" | "34654-757" | 48-99876-3332  | "maria@gmail.com"  |




