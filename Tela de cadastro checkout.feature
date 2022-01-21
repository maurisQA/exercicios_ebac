#language:pt

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