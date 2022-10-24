
----------------

para i = 0 ate i = 9, i++ faca 
    trocou = falso
    se A(i) > A(i + 1) entao  
       temp = A(i)
       A(i) = A(i + 1)  
       A(i + 1) = temp 
       trocou = Verdadeiro 
       
       faca de j = i, j--  ate que j = 0 ou trocou = Falso
      
            trocou = falso 
            se A(j) < A(j-1) entao 
                temp = A(j)
                A(j) = A(j - 1)  
                 A(j - 1) = temp 

                 trocou = verdadeiro
            fim-se
  
       fim-faca 

    fim-se

fim-para

---------------
Teste de mesa: 

i = 9
j = 5
temp = 6
trocou = F

A0   A1    A2    A3    A4    A5     A6     A7     A8     A9 
0    1     2     3     4     5       6      7     8      9   

