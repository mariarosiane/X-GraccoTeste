Quando("acesso a url") do
  visit('/login')
end

Entao("eu verifico se estou na pagina de login") do
    find_by_id('login')
    find_by_id('passw')
    find_button(class: 'button btnEntrar')
    end

Quando("informo usuario e senha incorreto") do
    find_by_id('login').set('mariarosiane')
    find_by_id('passw').set('123mudarqe')          
end

Quando("clico no botão entrar") do
    find_button(class: 'button btnEntrar').click  
end

Entao("o sistema deve apresentar mensagem de erro") do  
    find(:class,'message messageLogin error') 
end

Quando("informo usuario e senha corretos") do
    find_by_id('login').set('mariarosiane')
    find_by_id('passw').set('123mudarqa') 
end


Entao("verifico se o login foi efetuado com sucesso") do
    find(:class, 'appSair')
    
end