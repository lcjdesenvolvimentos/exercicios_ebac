            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma  
            Para visualizar meus pedidos


            Contexto:
            Dado que acesse a página de autenicação do EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "luis@ebac.com.br"
            E a senha "senha@123"
            Então deve me direcionar para a tela de checkout

            Cenário: Usuário com usuário ou senha inválidos
            Quando eu digitar o usuário "luis@ebac.com.br"
            E a senha "kjlhjjkhj"
            Então deve exibir uma mensagem de alerta "usuário ou senha inválidos"

