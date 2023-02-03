# Cifra de César

Em criptografia, a **Cifra de César**, também conhecida como **cifra de troca**, **código de César** ou **troca de César**, é uma das mais simples e conhecidas técnicas de criptografia. É um tipo de cifra de substituição na qual cada letra do texto é substituída por outra, que se apresenta no alfabeto abaixo dela um número fixo de vezes. Por exemplo, com uma troca de três posições, A seria substituído por D, B se tornaria E, e assim por diante. O nome do método é em homenagem a Júlio César, que o usou para se comunicar com seus generais. 

O processo de criptografia de uma cifra de César é frequentemente incorporado como parte de esquemas mais complexos, como a cifra de Vigenère, e continua tendo aplicações modernas, como no sistema ROT13. Como todas as cifras de substituição monoalfabéticas, a cifra de César é facilmente decifrada e na prática não oferece essencialmente nenhuma segurança na comunicação. 

A transformação pode ser representada alinhando-se dois alfabetos; o alfabeto cifrado e o alfabeto normal rotacionado à direita ou esquerda por um número de posições. Por exemplo, aqui está uma cifra de César usando uma rotação à esquerda de três posições (o parâmetro de troca, três neste caso, é usado como chave).

**Exemplos:** 
~~~
Normal:  ABCDEFGHIJKLMNOPQRSTUVWXYZ
Cifrado: DEFGHIJKLMNOPQRSTUVWXYZABC

Normal:  a ligeira raposa marrom saltou sobre o cachorro cansado
Cifrado: D OLJHLUD UDSRVD PDUURP VDOWRX VREUH R FDFKRUUR FDQVDGR
~~~

## O Desafio

Crie um programa que receba uma mensagem e a cifra de césar(quantidade de posições a deslocar). O programa deverá cifrar a mensagem e gravá-la num arquivo sequencial. 
O programa deverá implementar um menu no qual se possa escolher entre salvar uma nova mensagem ou ler uma mensagem a partir de um arquivo cifrado. 

Obs. O arquivo deverá respeitar o sequinte layout: 

~~~
01  mensagem. 
    05  cifra             pic x(01). 
    05  texto             pic x(4999). 
~~~