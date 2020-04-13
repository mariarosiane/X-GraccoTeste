Quando("clico em Processos") do    
    find(:class,"fa menuIcon-gestao-processos-processos").click()  
end

Entao("espero estar na aba de Processo|Pesquisa") do
    find(:xpath, "//li[@data-controller='/processopesquisa']")
end