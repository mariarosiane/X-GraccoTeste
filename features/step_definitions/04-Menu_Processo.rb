Quando("clico em um processo na listagem apresentada") do
   find(:xpath, "//table[@id='tableProcessos']/tbody/tr[1]").click
end
  
Entao("deve ser aberta a aba do processo com seus dados.") do
    find(:xpath, "//li[@data-controller='/processocadastro']").click
    find(:xpath, "//li[@id='dadosBasicos']")
end
  
Quando("clico no item Parte") do
    find(:xpath, "//li[@id='parte']").click
end

Entao("Devo vizualizar as pessoas cadastradas na aba partes do processo") do
    first(:xpath, "//span[@class='procPartes']")
end