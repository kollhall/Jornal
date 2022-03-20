def report(more_old, average_wage_woman, amount_thousand)
    puts "Jornal Online"
    puts "Relatório Estatístico"
    puts "Idade do Leitor Mais Velho: #{more_old}"
    puts "Média da Salário das Mulheres: R$ #{average_wage_woman.round(2)}"
    puts "Quantidade de salários maiores que mil: #{amount_thousand}"
end

more_old = 0
average_wage_woman = 0
number_woman = 0
amount_thousand = 0

loop do
    puts "Jornal da Cidade"
    puts "Dados do Leitor" 

    puts "Idade: "
    age = gets.to_i

    puts "Sexo (1 - Fem/ 2 - Masc): "
    sex = gets.to_i

    puts "Salário: "
    wage = gets.to_f

    puts "Servico (1 - VIP / 2 - Normal)"
    service = gets.to_i
   
   if service == 1
    serv_value = 20    
   elsif service == 2
    serv_value = 15     
   else
    puts "Opção Inválida"
    srv_value = 0    
   end

   if age > more_old
       more_old = age
   end

   if sex == 1
       average_wage_woman += wage
       number_woman += 1
   end

   if wage > 1000
       amount_thousand += 1
   end 
    
    puts "------------------------"
    puts "Valor do serviço: #{serv_value}"
    puts "------------------------"

 

    puts "Cadastrar outro (1 - Sim / 0 - Não)"
    opc = gets.to_i 

    break if opc != 1
end

average_wage_woman = average_wage_woman / number_woman
report(more_old, average_wage_woman, amount_thousand)



