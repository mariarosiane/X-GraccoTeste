#language: pt
#encoding: utf-8

Funcionalidade: Realizar Login
    Testar a Funcionalidade login no X-Gracco
    Ao informar um dado incorreto o sistema deve apresentar uma mensagem de erro
    Informando os dados corretos o login deve ser efetuado com sucesso.

Cenario: Acessar sistema X-Gracco
Quando acesso a url
Entao eu verifico se estou na pagina de login

Cenario: Verifica mensagem de erro para login incorreto
Quando informo usuario e senha incorreto
E clico no botão entrar
Entao o sistema deve apresentar mensagem de erro

Cenario: Verificar se o login é feito com sucesso
Quando informo usuario e senha corretos
E clico no botão entrar
Entao verifico se o login foi efetuado com sucesso

