Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/12/2022
Var
// Seção de Declarações das variáveis 
    mt, km, hm, dam, dm, cm, mm: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    escreval("Digite uma distância em metros:")
    leia(mt)
    
    km := mt * 0.001
    hm := mt/100
    dam := mt/10
    dm := mt * 10
    cm := mt * 100
    mm := mt * 1000
    
    escreval("A distância de ", mt,"m corresponde a:")
    escreval(km,"Km")
    escreval(hm,"hm")
    escreval(dam,"Dam")
    escreval(dm,"dm")
    escreval(cm,"cm")
    escreval(mm,"mm")


Fimalgoritmo