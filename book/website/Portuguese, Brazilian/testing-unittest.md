(rr-testing-unittest)=
# Teste Unitário

Os testes unitários são responsáveis por testar os elementos individuais de código de uma forma isolada e altamente direcionada. A funcionalidade de funções e classes individuais é testada por conta própria. O objetivo é validar que cada unidade do software funciona conforme projetado. Uma unidade é a menor parte testável de qualquer software. Na programação processual, uma unidade pode ser um programa, um funcionamento ou um procedimento individuais. Na programação orientada para os objetos, a unidade mais pequena é tipicamente um método. Geralmente ele tem uma ou algumas entradas e geralmente uma única saída. Quaisquer dependências externas devem ser substituídas por implementações de esboço ou simulação (mock, em inglês) para focar o teste completamente no código em questão.

Testes de unidade são essenciais para testar a exatidão dos componentes de código individuais para consistência interna e exatidão antes de serem colocados em contextos mais complexos. A extensão limitada dos testes e a eliminação das dependências facilita a perseguição da causa de quaisquer defeitos. Também é o melhor momento para testar uma variedade de entradas e ramificações de código que podem ser difíceis de acertar mais tarde. Por exemplo, os testes do sistema muitas vezes demoram tempo a ser executados, e provavelmente será impraticável ter testes de sistema para cada caminho possível através de um código que tenha mais do que algumas instruções condicionais. Os testes unitários são mais pequenos, mais rápidos, pelo que é mais prático abranger todos os casos possíveis com eles.

Muitas vezes, depois de quaisquer testes de fumo, os testes unitários são os primeiros a ser executados quando são feitas quaisquer alterações.

## Benefícios do Teste de Unidade

Se um pesquisador altera um trecho de código ou como ele é executado, como eles podem ter certeza de que isso não quebrou algo? Eles podem executar alguns testes, mas sem testar cada pequena parte de código individualmente como podem ter certeza? Testes de unidade dão aos pesquisadores essa certeza, e lhes permite estar confiantes ao alterar e manter seu código.

Aqui está um pequeno exemplo. Diga que um pesquisador tem uma pequena função que faz uma coisa simples (aqui apenas uma linha para brevidade). Neste exemplo, isto irá aumentar um número para a quinta potência:

```
def take_fifth_power(x):
  result = x * x * x * x * x
  return result
```

O teste de unidade para esta função pode se parecer com isto:
```
def test_take_fifth_power():
  assert take_fifth_power(1.5) == 7.59375
```

Então ele verifica se o resultado correto é gerado para uma determinada entrada. Se não, o teste falhará. O pesquisador continua com seu trabalho. No meio do caminho, eles decidem arrumar essa função, multiplicar o número cinco vezes como esse é um pouco grosseiro. Eles alteram o resultado `= x * x * x * x` linha para `result = x * 5`. Na próxima vez que eles executarem seus testes de unidade, esse teste falhará, porque eles apenas cometeram um erro. Talvez precisassem de um café, talvez seus dedos escorregassem, talvez seu colega atirou neles na orelha com um dardo do nervo e o distraiu, mas quando eles estavam arrumando essa função, eles deveriam ter escrito `resultado = x ** 5` *não* `resultado = x * 5`. O teste que falhou irá sinalizar o erro e poderá ser corrigido rapidamente. Se um erro como este não fosse observado, poderia levar a erros graves no trabalho do investigador.

Portanto, o teste por unidade conduz a um código mais confiável, mas também existem outros benefícios. Em primeiro lugar, torna o desenvolvimento mais rápido, tornando os bugs mais fáceis de encontrar. Testes em grande escala que testam grandes porções de código (enquanto ainda são úteis) têm a desvantagem de, se eles falharem, ser difícil identificar a fonte do erro. Porque testes de unidade por sua própria definição testam pequenos pedaços de código, eles ajudam os desenvolvedores a encontrar a causa de um erro muito mais rápido do que testes de nível superior ou código sem testes. Testes de unidade também tornam a correção de erros mais rápido e mais fácil porque eles capturam bugs cedo enquanto o impacto é limitado a pequenas unidades individuais. Se não forem detectados erros mais cedo via testes unitários, então pode demorar muito para serem descobertos, impactar mais tarde trabalho que construído sobre o código defeituoso. Isso significa que muito mais código está em risco e que consertar o bug demora mais tempo.

O outro grande benefício do teste por unidade de medida é o facto de ele incentivar fortemente os investigadores a escrever código modular porque o código modular é muito mais fácil de escrever testes por unidade. Código modular é um código que é dividido em partes gerenciáveis que cada uma realiza tarefas simples. Isso normalmente é alcançado dividindo o código em funções e grupos de funções. Em contraste, um script que é apenas uma longa série contínua de linhas que produz um resultado é altamente não-modular.

Código modular também é muito mais fácil de reutilizar. Por exemplo, se um pesquisador tiver uma função individual que faça alguma coisa útil e em um projeto futuro eles precisam fazer isso novamente é trivial copiar ou importar a função. Em contraste, se o código que faz este Coisa Útil é entrelaçado com uma grande quantidade de outro código em um script longo, é muito mais difícil separá-lo para reutilização.

## Dicas de Teste Unitário

- Muitos frameworks de teste possuem ferramentas especificamente voltadas para a criação e execução de testes unitários.
- Isolar o ambiente de desenvolvimento do ambiente de teste.
- Escreva casos de teste que sejam independentes um do outro. Por exemplo, se uma unidade A utiliza o resultado fornecido por outra unidade B, você deve testar unidade A com um [teste duplo](#Use_test_doubles_stubs_mocking_where_appropriate)ao invés de realmente chamar a unidade B. Se você não fizer isso com falha de teste pode ser devido a uma falha na unidade A *ou* unidade B, tornar o erro mais difícil de rastrear.
- Mire em cobrir todos os caminhos através de uma unidade. Preste especial atenção às condições do loop.
- Além de escrever casos para verificar o comportamento, escreva casos para garantir o desempenho do código. Por exemplo, se uma função que deve somar dois números leva vários minutos para ser executada, é provável que haja um problema.
- Se você encontrar um defeito no seu código, escreva um teste que o explique Porquê? Em primeiro lugar, mais tarde será possível apanhar o defeito se não o repararmos correctamente. Em segundo lugar, a sua suíte de testes é agora mais abrangente. Em terceiro lugar, provavelmente você vai ser muito preguiçoso para escrever o teste depois que você já tiver corrigido o erro. Diga um código tem uma função simples para classificar as pessoas como adultos ou crianças:

```
def adult_or_child(idade):

  # Se a idade for maior ou igual a 18 classificá-los como um adulto
  se idade >= 18:
    person_status = 'Adulto'

  # Se a pessoa não é um adulto classifica-os como um filho
  outro:
    person_status = 'Criança'

  retorne person_status
```

E diga que este código tem um teste de unidade assim:

```
def test_adult_or_child():

  # Teste se um adulto está classificado corretamente como um adulto
  assert adult_or_child(22) == 'Adult'

  # Teste se uma criança está classificada corretamente como uma criança
  assert adult_or_child(5) == 'Child'

  return
```

Há um problema com esse código que não está sendo testado: se uma idade negativa for fornecida, ele irá classificar alegremente a pessoa como uma criança, apesar das idades negativas não serem possíveis. O código deve lançar um erro neste caso.

Então, assim que o erro for corrigido:
```
def adult_or_child(idade):

# Verifique a idade é válida
se idade < 0:
  raise ValueError, 'Não é possível ter uma idade negativa'

# Se a idade for maior ou igual a 18 classificá-los como um adulto
se idade >= 18:
  person_status = 'Adulto'

# Se a pessoa não é um adulto classifica-os como uma criança
outra pessoa:
  person_status = 'Criança'

return person_status
```

Vá em frente e escreva um teste para garantir que futuras alterações no código não possam fazer com que isso aconteça novamente:
```
def test_adult_or_child():

#Teste que um adulto está classificado corretamente como um adulto
assert adult_or_child(22) == 'Adult'

# Teste que uma criança está classificada corretamente como uma criança
assert adult_or_child(5) == 'Child'

# Teste que fornecer uma idade inválida resulta em um erro
com pyteste. aises(ValueError):
    adult_or_child(-10)
```
