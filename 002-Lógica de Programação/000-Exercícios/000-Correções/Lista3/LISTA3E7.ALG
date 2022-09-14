Algoritmo "Lista3E7"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/14/2022
Var
// Seção de Declarações das variáveis 

   salarioBruto, salarioLiquido, desconto: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

//Receber salarioBruto
    escreval("Salario Bruto: ")
    leia(salarioBruto)

//descobrir qual é o desconto
// -  até 600, desconto = 0
// -  acima de 600 até 1200, desconto = salarioBruto * 0.25
// -  acima de 1200 até 2000, desconto = salarioBruto * 0.30
// -  acima de 2000, desconto = salarioBruto * 0.35

   se(salarioBruto <= 600.00)entao
      desconto := 0
   senao
      se(salarioBruto > 600.00) e (salarioBruto <= 1200.00) entao
         desconto := salarioBruto * 0.25
      senao
         se(salarioBruto > 1200.00) e (salarioBruto <= 2000.00)entao
            desconto := salarioBruto * 0.30
         senao
            desconto := salarioBruto * 0.35
         fimse
      fimse
   fimse


//Calcular o salario liquido:
  salarioLiquido := salarioBruto - desconto
  
//Exibir salarioLiquido
  escreval("Salario Líquido: ", salarioLiquido)


Fimalgoritmo

//salarioBruto : 1200,00
//salarioLiquido : 900.00
//desconto :  300.00

