(rr-testing-runtime)=
# Teste de execução

Testes de tempo de execução são testes que são executados como parte do próprio programa. Eles podem assumir a forma de verificações dentro do código, como mostrado abaixo:
```
população = population + people_born - people_died

// teste se a população é positiva
if (população < 0):
error( 'O número de pessoas nunca pode ser negativo')
```

Outro exemplo de uso de testes de tempo de execução é as verificações internas dentro de funções que verificam se suas entradas e saídas são válidas, como mostrado abaixo:
```
function add_arrays( array1, array2 ):

// teste se as arrays têm o mesmo tamanho
if (array1. ize() != array2.size()):
  erro( 'Os arrays têm tamanhos diferentes!' )

output = array1 + array2

if (output.size() != array1.size()):
  error( 'A matriz de saída tem o tamanho errado!'' )

saída de retorno
```

Vantagens do teste em tempo de execução:
- Execute dentro do programa para poder capturar problemas causados por erros lógicos ou casos de aresta.
- Torna mais fácil encontrar a causa do bug pegando problemas mais cedo.
- Capturar problemas cedo também ajuda a prevenir a sua escalada em falhas catastróficas. Ele minimiza o raio solo.

Desvantagens do teste em tempo de execução:

- Os testes podem tornar o programa mais lento.
- Qual é a coisa certa a se um erro é detectado? Como esse erro deve ser relatado? As excepções são uma rota recomendada para acompanhar este processo.
