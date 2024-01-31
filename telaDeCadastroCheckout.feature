            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que acesse a página de autenicação do portal EBAC

            Cenário: Preenchimento correto
            Quando eu preencher todos os campos obrigatórios com asterisco
            E a pressionar o botão "Finalizar Compra"
            Então deve finalizar a compra e colocar a mensagem "Compra finalizada"

            Cenário: Preenchimento incompleto
            Quando eu deixar algum campo obrigatório com asterisco sem preencher
            E a pressionar o botão "Finalizar Compra"
            Então deve permanecer na mesma página não permitindo a finalização da compra, colocar a mensagem "Campos obrigatórios faltantes!!!"

            Cenário: Preenchimento de e-mail incorreto
            Quando eu digitar o e-mail "luis.ebac.com.br"
            E a sair com o cursor do campo de e-mail
            Então deve alertar com a mensagem "E-mail com formato incorreto!!!"


            Esquema do Cenário: Multiplos Checkouts
            Quando eu digitar o <nome>
            E digitar <sobrenome>
            E escolher o <pais>
            E digitar <endereco>
            E digitar <cidade>
            E digitar <cep>
            E digitar <telefone>
            E digitar <email>
            Então deve exibir a <mensagem>

            Exemplos:
            | nome   | sobrenome | pais     | endereco        | cidade      | cep         | telefone        | email              | mensagem                           |
            | "Luis" | "Claudio" | "Brasil" | "Rua dos Bobos" | "São Paulo" | "04297-000" | "11 9999-99999" | "luis@ebac.com.br" | "Compra finalizada"                |
            | "Luis" | ""        | "Brasil" | "Rua dos Bobos" | "São Paulo" | "04297-000" | "11 9999-99999" | "luis@ebac.com.br" | "Campos obrigatórios faltantes!!!" |
            | "Luis" | "Claudio" | "Brasil" | "Rua dos Bobos" | "São Paulo" | "04297-000" | "11 9999-99999" | "luis#ebac.com.br" | "E-mail com formato incorreto!!!"  |
