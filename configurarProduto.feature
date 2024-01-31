            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho


            Contexto:
            Dado que eu configure meu produto de acordo com meu tamanho e gosto e escolher a quantidade

            Cenário: Campos obrigatórios totalmente preenchidos
            Quando eu escolher os campos de cor, tamanho e quantidade 
            E e apertar o botão "Comprar"
            Então deve exibir uma mensagem de alerta "Produto inserido no carrinho"

            Cenário: Qualquer campo obrigatório não preenchido
            Quando eu deixar um dos campos de cor, tamanho ou quantidade sem escolha
            E e apertar o botão "Comprar"
            Então deve exibir uma mensagem de alerta "Campos cor, tamanho e quantidade, são obrigatórios!!!"

            Cenário: Limite de 10 produtos por venda
            Quando eu colocar 10 itens no carrinho
            E escolher mais um produto
            E apertar o botão "Comprar"
            Então deve exibir uma mensagem de alerta "Somente pode ser realizado a compra de 10 produtos por venda!!!"

            Cenário: Limpar formulário de Produto
            Quando eu apertar o botão "Limpar"
            Então o formulário deve colocar todos os seus campos ao estado padrão de quando abriu o produto

