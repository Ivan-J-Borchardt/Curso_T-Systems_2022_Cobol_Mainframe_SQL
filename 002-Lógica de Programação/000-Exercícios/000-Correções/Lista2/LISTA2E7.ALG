Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/12/2022
Var
// Se��o de Declara��es das vari�veis 
    mt, km, hm, dam, dm, cm, mm: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

    escreval("Digite uma dist�ncia em metros:")
    leia(mt)
    
    km := mt * 0.001
    hm := mt/100
    dam := mt/10
    dm := mt * 10
    cm := mt * 100
    mm := mt * 1000
    
    escreval("A dist�ncia de ", mt,"m corresponde a:")
    escreval(km,"Km")
    escreval(hm,"hm")
    escreval(dam,"Dam")
    escreval(dm,"dm")
    escreval(cm,"cm")
    escreval(mm,"mm")


Fimalgoritmo