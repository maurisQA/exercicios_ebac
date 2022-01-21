#language:pt
            
            
            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuário>
            E a <senha>
            Então deve exibir <mensagem> de sucesso e ir para a tela de checkout

            Exemplos:
            | usuário               | senha       | mensagem       |
            | "arthur@ebac.com.br"  | "senha@123" | "olá Arthur!"  |
            | "maria@ebac.com.br"   | "senha@123" | "olá Maria!"   |
            | "roberto@ebac.com.br" | "senha@123" | "olá Roberto!" |

            Cenário: Identificação senha inválida
            Quando eu digitar o usuário "joão@ebac.com.br"
            E a senha "QA@123"
            Então deve exibir uma mensagem de alerta "senha inválida"