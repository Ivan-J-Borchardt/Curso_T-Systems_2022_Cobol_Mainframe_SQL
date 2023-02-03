
Crie um programa que receba duas datas, a primeira data será uma data de calibragem e a segunda será uma data de referência para a impressão de um calendário. Com base nessa 1ª data calcule o dia da semana para desenhar o calendário que representa a 2ª data. 

~~~
Entradas: 
    a. A data de calibragem (qualquer data válida) e o dia da semana dessa data no seguinte formato:  
 
           AAAAMMDDSS  
             |  | | +--> SS   : dia da semana (01 p/domingo à 07 p/sábado)
             |  | +----> DD   : dia (01 à 31)
             |  +------> MM   : mês (01 à 12)
             +---------> AAAA : ano 

         Exemplo: 2000021503 (perceba, SS = 03 (Terça-feira))    

    b. A data de referência no seguinte formado: 

            AAAAMMDD 
             |  |  +----> DD   : dia (01 à 31)
             |  +-------> MM   : mês (01 à 12)
             +----------> AAAA : ano 

         Exemplo: 20070521     

Saída: 
    A data de refêrencia deverá ser marcada com asteriscos conforme o exemplo abaixo. 

          +----------------------------+
          |      MAIO      - 2007      |
          +----------------------------+
          |  D   S   T   Q   Q   S   S |
          |         01  02  03  04  05 |
          | 06  07  08  09  10  11  12 |
          | 13  14  15  16  17  18  19 |
          | 20 *21* 22  23  24  25  26 |
          | 27  28  29  30  31         |
          +----------------------------+
~~~



 



