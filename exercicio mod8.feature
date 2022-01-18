            #language:pt


            Funcionalidade: Cadastro de produto no carrinho
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Cadastro de produtos Válido
            Dado que a seleção de cores tamanho e quantidade são obrigatórios
            Quando eu escolho as cores o tamanho e a quantidade e salvo
            Então deve adicionar os produtos ao cadastro
            Cenário: Cadastro de produtos Inválido
            Dado que a seleção de cores tamanho e quantidade são obrigatórios
            Quando eu escolho as somente cores e tento salvar
            Então deve adicionar aparecer uma mensagem de erro avisando que os "campos não preenchidos são obrigatórios"


            Funcionalidade: Venda máxima de produtos por vez
            Como cliente da EBAC-SHOP
            Quero adicionar varios produtos ao meu carrinho
            Para depois comprar todos de uma unica vez

            Cenário: Venda máxima de produtos por vez Válido
            Dado que o numero máximo de produtos no carrinho seja 10 unidades por venda
            Quando eu escolho 10 produtos
            Então deve deixar eu terminar a compra
            Cenário: Venda máxima de produtos por vez Inválido
            Dado que o numero máximo de produtos no carrinho seja 10 unidadespor venda
            Quando eu escolho 12 produtos
            Então não deve deixar eu terminar a compra


            Funcionalidade: Botão limpar
            Como cliente da EBAC-SHOP
            Quero limpar os campos de produtos do meu carrinho
            Para deixar todos os campos em branco

            Cenário: Limpar os campos com o botão "limpar"
            Dado que já tenho itens adicionados no meu carrinho
            Quando clico no botão limpar
            Então deve apagar todos as informações e produtos selecionados


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

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro   
            Para finalizar minha compra

            Cenário: Cadastro de usuário válido
            Dado que o cadastro com todos os dados com asterisco são obrigatórios
            Quando eu preencho todos 
            Então deve concluir o cadastro

            Cenário: Cadastro de produtos Inválido
            Dado que o cadastro com todos os dados com asterisco são obrigatórios
            Quando eu deixo algum dado faltando
            Então deve aparecer uma mensagem de erro avisando que os "campos não preenchidos são obrigatórios"

            Cenário: Cadastro de email inválido
            Dado que eu coloque um email inválido
            Quando eu tento proceguir 
            Então deve aparecer uma mensagem de erro "email inválido"