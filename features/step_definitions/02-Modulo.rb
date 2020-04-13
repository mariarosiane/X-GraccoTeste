
Quando("clico no módulo Gestão de Processo") do
    sleep(1)
    find(:class, 'app gestao-processos').click  
end

Entao("verifico se estou na página esperada") do
    find(:class, 'fa menuIcon-gestao-processos-dashboard')
end