Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/12/2022
Var
// Se��o de Declara��es das vari�veis 

   num1, num2, result: inteiro

   temperatura: real
   motorLigado: logico
   

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

    //Entradas
    escreval("Num1:")
    leia(num1)
    
    escreval("Num2:")
    leia(num2)
    
    //Estrutura de sele��o SE
    se num1 <> num2 entao
        escreval("O num1 eh maior que num2...")
        result := num1 * num2
    fimse
    
    //Estrutura de sele��o SE-SENAO
    se num1 = num2 entao
       escreval("Num1 � igual a num2")
    senao
       escreval("Num1 � diferente de num2")
    fimse
    
   //Operadores relacionais
   // = igual
   // <> diferente de
   // > maior que
   // < menor que
   // >= maior ou igual
   // <= menor ou igual
   
   
   
   temperatura := 3.1 //Temperatura lida de um sensor
   
   // Assim que a temperatura passar de 3Graus, ligar compressor
   se temperatura > 3 entao
      motorLigado := verdadeiro
   fimse
   
   // Assim que a temperatura baixar de 2Graus, desliga o compressor
   se temperatura < 2 entao
      motorLigado := falso
   fimse
   
   
   //Estruturas de sele��o compostas
   se  (num1 = 23) ou (num2 = 24) entao
      escreval("Entrou no Se...")
   fimse
   
   //Estrutura de sele��o encadeada
   se num1 > 23 entao
      se num1 = 24 entao
         escreval("Entrou pq o num1 � igual a 24...")
      fimse
   fimse

Fimalgoritmo