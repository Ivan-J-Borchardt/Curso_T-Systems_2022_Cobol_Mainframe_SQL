Baixe todos os resultados dos sorteios da mega-sena e salve em um arquivo CSV. Crie um programa que receba uma aposta e verifique se os números apostados já foram sorteados alguma vez. 

- O programa deve ser capaz de receber a aposta via teclado/tela e via leitura de um arquivo sequencial (O Programa deve permitir as duas opções), onde cada linha do arquivo equivale a uma aposta; 

- O resultado da varredura deve ser exibida em tela da seguinte forma:   

	a. Caso os números apostados já tenham sido sorteados alguma vez:
~~~
	Seis dezenas sorteadas:  
	Matching em: <Data do sorteio>   Sorteio Número: <Número do Sorteio> 
              Números da Aposta: <Números da aposta>
~~~

	b. 5 dos números da aposta já foram sortados (Quina): 
~~~
	Quinas Sorteadas: 
	Matching em: <Data do sorteio>   Sorteio Número: <Número do Sorteio> 
              Números da Aposta: <Números da aposta>
~~~

	c. 4 dos números da aposta já foram sortados (Quadra): 
~~~
	Quadras Sorteadas: 
	Matching em: <Data do sorteio>   Sorteio Número: <Número do Sorteio> 
              Números da Aposta: <Números da aposta>
~~~
	d. Os números apostados nunca foram sorteados: 
~~~    
	Aposta não Premiada.
~~~

- Os resultados exibidos em tela devem ser salvos em um arquivo sequencial com o mesmo layout da tela. 

- No Rodapé do relatório deve constar um Ranking com os 15 números que mais vezes foram sorteados, ordenados de forma decrescente e os 15 números que menos vezes foram sorteados, ordenados de forma crescente. A quantidade de vezes que cada número foi sorteado, assim como o percentual que isso representa também devem ser apresentados obedecendo o seguinte layout: 

~~~
     15      -      23       -     52    --> Dezenas sorteadas. 
     234     -      157      -     133   --> Quantidade de vezes em que foi sorteada.
     23%     -      13%      -     11%   --> Percentual sorteio.    
~~~

•	Os resultados da mega-sena podem ser obtidos do seguinte endereço: 
https://asloterias.com.br/download-todos-resultados-mega-sena
