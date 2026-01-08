## Mais Sobre a Porta Hadamard e sua Interpretação Física

**Se um fóton ultrapassa uma espelho perfeitamente semitransparente, qual o percentual de luz que transpassa o espelho e qual o percentual de luz que é refletida?**

Essa pergunta é fundamental, pois ela é o elo entre o mundo físico e o código que foi escrito em [01-intro.ipynb](01-intro.ipynb) (`qc.h(0)`) e em [00-math.ipynb](00-math.ipynb).

A resposta depende se você está falando de **um raio de luz** (mundo clássico) ou de **um único fóton** (mundo quântico).

### 1. A Resposta Clássica (Um feixe de luz)

Se você apontar um laser (que contém trilhões de fótons) para um espelho perfeitamente semitransparente (conhecido tecnicamente como **Beam Splitter** ou Divisor de Feixe 50/50):

* **50%** da intensidade da luz atravessa.
* **50%** da intensidade da luz é refletida.

### 2. A Resposta Quântica (Um único fóton)

Aqui a intuição quebra. Um fóton é uma partícula elementar, um "pacote" indivisível de energia. **Você não pode ter meio fóton.** Ele não pode se partir ao meio como uma gota de água.

Então, o que acontece com **um** fóton?

* Ele entra em **Superposição**.
* Ele é refletido **E** transmitido ao mesmo tempo.

**O Percentual:**
A probabilidade dele ser detectado em um lado é 50%, e no outro lado é 50%. Mas, até que você coloque um detector (faça uma medição), o fóton percorre **ambos os caminhos simultaneamente**.

### A Conexão com o Código Python

Lembra-se da porta Hadamard (`qc.h(0)`) e do fator $\frac{1}{\sqrt{2}}$?

Fisicamente, a **Porta Hadamard É esse espelho semitransparente**.

Quando você escreve em Python:

```python
qc.h(0)

```

Você está dizendo matematicamente:

$$|0\rangle \rightarrow \frac{|0\rangle + |1\rangle}{\sqrt{2}}$$

Isso é a descrição matemática exata de um fóton encontrando um espelho 50/50:

1. O estado $|0\rangle$ é o fóton chegando pelo caminho de cima.
2. Ao bater no espelho (H), ele se divide em dois caminhos possíveis.
3. O quadrado do coeficiente ($\frac{1}{\sqrt{2}}$) é $\frac{1}{2}$, ou seja, **50%**.

### Por que isso importa para o próximo passo?

Se você colocar **dois** espelhos desses em sequência, acontece a **Interferência** (o assunto a estudar a seguir).

1. O primeiro espelho separa os caminhos (cria superposição).
2. Os caminhos se cruzam novamente.
3. O segundo espelho recombina os caminhos.

Se a matemática estiver certa, o fóton pode sair 100% das vezes por uma única saída, porque as ondas de probabilidade do caminho "refletido" se cancelam com as do caminho "transmitido".

Isso faz sentido? O espelho é o "hardware" que executa a função lógica "Hadamard".

## Isso foi feito esperimentalmente na vida real?

Sim, e é um dos experimentos mais repetidos e comprovados da história da física.

O experimento específico que demonstra o que discutimos (o fóton passando por dois espelhos semitransparentes e interferindo consigo mesmo) chama-se **Interferômetro de Mach-Zehnder**.

A realização desse experimento com **fótons individuais** (um de cada vez) é o que prova que a mecânica quântica é real e não apenas uma teoria matemática bonita.

Aqui está como isso acontece na vida real versus o que a nossa intuição esperaria:

### 1. O Experimento (O Interferômetro de Mach-Zehnder)

Imagine uma mesa de laboratório com a seguinte configuração:

![Interferômetro de Mach-Zehnder](../assets/interferometer.png)

1. **Fonte:** Dispara um **único fóton**.
2. **Espelho A ou *Beam Splitter 1* (Hadamard 1):** Semitransparente. Divide o caminho.
3. **Caminhos:** O fóton pode ir pela direita ou esquerda.
4. **Espelho B ou *Beam Splitter 2* (Hadamard 2):** Semitransparente. Reúne os caminhos antes dos detetores.
5. **Detetores D1 e D2:** Um no final de cada saída.

### 2. A Expectativa "Clássica" (Intuição)

Se o fóton fosse uma bolinha física (como uma bola de gude):

1. No primeiro espelho, ele escolheria aleatoriamente ir para a direita ou para a esquerda (50/50).
2. No segundo espelho, ele escolheria novamente aleatoriamente (50/50).
3. **Resultado esperado:** 50% dos fótons chegariam ao Detetor 1 e 50% ao Detetor 2.

### 3. A Realidade "Quântica" (O que acontece no laboratório)

Quando fazemos isso na vida real, com espelhos perfeitamente alinhados:

* **100%** dos fótons chegam ao **Detetor 1**.
* **0%** dos fótons chegam ao **Detetor 2**.

**Por que?** Interferência.
O fóton "passou" pelos dois caminhos ao mesmo tempo. As ondas de probabilidade que foram para o Detetor 2 chegaram com fases opostas (como uma onda do mar subindo encontrando uma descendo) e se cancelaram (**Interferência Destrutiva**). As ondas que foram para o Detetor 1 se somaram.

#### Demonstração do Interferômetro de Mach-Zehnder

[![Assistir demonstração no YouTube](https://img.youtube.com/vi/M3Y2hwsJgos/0.jpg)](https://www.youtube.com/watch?v=M3Y2hwsJgos)

**[▶️ Clique aqui para assistir a demonstração do Interferômetro de Mach-Zehnder](https://www.youtube.com/watch?v=M3Y2hwsJgos)**

Este vídeo é relevante porque exibe a montagem óptica real do experimento discutido, permitindo visualizar os espelhos e o padrão de luz resultante que comprova o fenômeno da interferência.

### 4. Como isso se traduz no código Python?

Você pode replicar esse experimento físico agora mesmo no Qiskit. É a prova de que a porta Hadamard é reversível.

Matematicamente, aplicar dois Hadamards é igual a não fazer nada (Identidade), pois as superposições se cancelam e voltam ao estado original.

```python
from qiskit import QuantumCircuit
from qiskit.quantum_info import Statevector

qc = QuantumCircuit(1)

# Passo 1: O fóton encontra o primeiro espelho
# Estado: Superposição (50/50)
qc.h(0) 

# Passo 2: O fóton viaja pelos caminhos e encontra o SEGUNDO espelho
# A interferência acontece aqui.
qc.h(0)

# Verificação
vetor = Statevector(qc)
print(vetor)

```

**Resultado:** Você verá que o vetor volta a ser `[1, 0]` (Estado  puro). O computador quântico simulou a interferência destrutiva que ocorreria no laboratório.

> Veja código completo em [Código 04-Hadamard-experiment.ipynb](04-Hadamard-experiment.ipynb)

### Curiosidade Histórica: O Prêmio Nobel de 2022

A confirmação experimental de que isso acontece com partículas individuais e que o emaranhamento é real (violando a intuição clássica) foi tão importante que o **Prêmio Nobel de Física de 2022** foi dado a Alain Aspect, John Clauser e Anton Zeilinger.

Eles provaram, sem sombra de dúvidas, que a natureza se comporta dessa maneira estranha. Não é uma falha de medição; é a arquitetura fundamental do universo.

