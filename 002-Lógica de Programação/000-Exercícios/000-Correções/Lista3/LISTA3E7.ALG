Algoritmo "Lista3E7"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/14/2022
Var
// Se��o de Declara��es das vari�veis 

   salarioBruto, salarioLiquido, desconto: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

//Receber salarioBruto
    escreval("Salario Bruto: ")
    leia(salarioBruto)

//descobrir qual � o desconto
// -  at� 600, desconto = 0
// -  acima de 600 at� 1200, desconto = salarioBruto * 0.25
// -  acima de 1200 at� 2000, desconto = salarioBruto * 0.30
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
  escreval("Salario L�quido: ", salarioLiquido)


Fimalgoritmo

//salarioBruto : 1200,00
//salarioLiquido : 900.00
//desconto :  300.00

