Algoritmo "OPAritmetica"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/9/2022
Var
// Se��o de Declara��es das vari�veis 

   num1: inteiro
   num2: inteiro
   result1, result2, result3, result4, result5, result6, result7: real
   
   porcentagem: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   num1 := 20
   num2 := 3
   
   //Adicao, Subtra��o, Multiplica��o, Divis�o
   result1 := num1 + num2
   escreval("Resultado Adi��o: ", result1)
   
   result2 := num1 - num2
   escreval("Resultado Subtra��o: ", result2)
   
   result3 := num1 * num2
   escreval("Resultado Multiplica��o: ", result3)
   
   result4 := num1 / num2
   escreval("Resultado Divis�o: ", result4)
   
   //Resto da divis�o
   result5 := num1 % num2
   escreval("Resultado Resto: ", result5)
   
   //Calculo de porcentagem  (3% de 50...)
   porcentagem :=  (3 * 50)/100
   
   porcentagem := 0.03 * 50
   
   //Potencia��o
   result6 := 3^3
   escreval("Resultado Potencia��o: ", result6)


   //Radicia��o de 'n'
   result7 := 27^(1/3)
   escreval("Resultado Radicia��o: ", result7)

Fimalgoritmo