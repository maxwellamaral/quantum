# 🚀 Quantum Computing com Qiskit

<div align="center">

![Python](https://img.shields.io/badge/python-3.14+-blue.svg)
![Qiskit](https://img.shields.io/badge/qiskit-2.x-green.svg)
![License](https://img.shields.io/badge/license-MIT-orange.svg)
![Jupyter](https://img.shields.io/badge/jupyter-notebooks-F37626.svg)
![Status](https://img.shields.io/badge/status-active-success.svg)

**Projeto educacional de computação quântica utilizando o framework Qiskit da IBM**

[Notebooks](#-notebooks-disponíveis) • [Instalação](#-como-usar) • [Conceitos](#-conceitos-abordados) • [Referências](#-referências)

</div>

---

## 📑 Índice

- [📚 Sobre o Projeto](#-sobre-o-projeto)
- [🤖 Declaração de Uso de IA](#-declaração-de-uso-de-ia-e-integridade)
- [📂 Estrutura do Projeto](#-estrutura-do-projeto)
- [📖 Notebooks Disponíveis](#-notebooks-disponíveis)
- [🧰 Módulos Python](#-módulos-python-src)
- [🛠️ Tecnologias Utilizadas](#️-tecnologias-utilizadas)
- [🚀 Como Usar](#-como-usar)
- [📊 Recursos Visuais](#-recursos-visuais)
- [🎓 Conceitos Abordados](#-conceitos-abordados)
- [🤝 Contribuindo](#-contribuindo)
- [📚 Referências](#-referências)
- [📄 Licença](#-licença)
- [📝 Como Citar](#-como-citar)

---

## 📚 Sobre o Projeto

Este repositório contém notebooks Jupyter interativos que exploram conceitos fundamentais de computação quântica, desde a matemática básica até protocolos quânticos complexos como o teletransporte quântico.

## 🎯 Objetivos

✨ **Demonstrar** conceitos de mecânica quântica de forma visual e interativa  
⚡ **Implementar** algoritmos e protocolos quânticos usando Qiskit  
📐 **Fornecer** explicações matemáticas detalhadas junto com código executável  
🎓 **Servir** como material didático para quem está aprendendo computação quântica

## 🤖 Declaração de Uso de IA e Integridade

Este projeto adota uma abordagem transparente quanto ao uso de tecnologias de Inteligência Artificial no desenvolvimento de software, em conformidade com as boas práticas de integridade acadêmica e científica.

**Ferramentas Utilizadas:**

> 🤖 **Github Copilot & Google Antigravity**: Utilizados para auxílio na geração de código (boilerplate), otimização de sintaxe e sugestões de implementação.

**Compromisso de Autoria e Validação:**

Embora ferramentas de IA tenham sido empregadas, a integridade do projeto é garantida pelos seguintes pilares de validação humana:

1. 💡 **Ideação e Pedagogia:** A estrutura didática, a sequência lógica dos tópicos e as explicações conceituais são de autoria intelectual humana.
2. 🔧 **Engenharia de Software**: Todos os códigos gerados passaram por:
   - ✅ Análise de requisitos e adequação pedagógica
   - ✅ Testes funcionais automatizados para garantir a corretude dos algoritmos quânticos
   - ✅ Revisão manual para assegurar a aderência aos conceitos físicos da Mecânica Quântica
3. 🎯 🎯 **Responsabilidade**: O autor assume total responsabilidade pela funcionalidade, segurança e exatidão do material didático aqui apresentado.

---

## 📂 Estrutura do Projeto

```
quantum/
├── notebooks/          # Notebooks Jupyter educacionais
│   ├── 00a-math.ipynb
│   ├── 00b-phases.ipynb
│   ├── 01-intro.ipynb
│   ├── 02-teletransport.ipynb
│   ├── 02-teletransport.qasm
│   ├── 03-mais-sobre-Hadamard.md
│   ├── 04-Hadamard-experiment.ipynb
│   ├── 05-interference.ipynb
│   ├── 05-kickback.qasm
│   ├── 05-deutsch-jozsa.qasm
│   ├── 06-grover.ipynb
│   ├── 06-grover.qasm
│   ├── 07-quantum-fourier-transform.ipynb
│   ├── 20-quantum-machine-learning.ipynb
│   ├── 20-vqc-classifier.qasm
│   └── 20-vqc-tutorial.qasm
├── src/                # Módulos Python reutilizáveis
│   ├── __init__.py
│   └── quantum_viz.py  # Funções de visualização interativa
├── assets/             # Recursos (imagens, vídeos, etc.)
├── README.md
├── LICENSE
└── pyproject.toml
```

---

## 📖 Notebooks Disponíveis

<div align="center">

| 📓 Notebook | 🎯 Tópicos Principais | 📊 Nível |
|------------|---------------------|----------|
| **00a-math** | Estados quânticos, portas, produto tensorial | 🟢 Básico |
| **00b-phases** | Fases quânticas, portas CP, Bloch sphere | 🟡 Intermediário |
| **01-intro** | Primeiros passos com Qiskit, Bell states | 🟢 Básico |
| **02-teletransport** | Protocolo de Bennett, medição de Bell | 🟡 Intermediário |
| **03-Hadamard** | Interpretação física, beam splitters | 🟢 Básico |
| **04-Hadamard-exp** | Interferômetro de Mach-Zehnder | 🟡 Intermediário |
| **05-interference** | Phase kickback, Deutsch-Jozsa | 🔴 Avançado |
| **06-grover** | Busca quântica, amplificação de amplitude | 🔴 Avançado |
| **07-QFT** | Transformada de Fourier, estimação de fase | 🔴 Avançado |
| **20-QML** | Machine Learning quântico, VQC, classificação | 🔴 Avançado |

</div>

### 📘 notebooks/00a-math.ipynb
**Fundamentos Matemáticos da Computação Quântica** 🟢

- **Estados Quânticos Básicos**:
  - Notação de Dirac: |0⟩ (ket zero) e |1⟩ (ket um)
  - Representação vetorial como vetores coluna
  - Amplitudes α e β: interpretação e normalização (|α|² + |β|² = 1)
  - Estado genérico: |ψ⟩ = α|0⟩ + β|1⟩
  - Implementações com SymPy (simbólico) e NumPy (numérico)
  
- **Portas Quânticas Fundamentais**:
  - **Porta X (NOT Quântico)**: Inversão de estados |0⟩ ↔ |1⟩
    * Matriz 2×2 e multiplicação matricial passo a passo
    * Demonstrações com SymPy e NumPy
  - **Porta H (Hadamard)**: Criação de superposição (porta mais importante!)
    * Transforma |0⟩ → |+⟩ e |1⟩ → |−⟩
    * Matriz com fator 1/√2
  - **Portas de Fase (Z, S, T)**: Modificação de fase sem alterar probabilidades
    * Aplicação prática e representação matricial
  - Analogia: Portas como rotações na Esfera de Bloch
  
- **Superposição Quântica**:
  - Conceito fundamental: qubit em múltiplos estados simultaneamente
  - Analogia da "moeda quântica" 🪙 girando no ar
  - Estados |+⟩ e |−⟩ criados pela porta Hadamard
  - Diferença entre superposição quântica e probabilidade clássica
  - Colapso da superposição durante a medição (destruição da informação quântica)
  - Conceito de "shots" (1024 medições) para obter distribuições de probabilidade
  - Natureza probabilística vs. determinística (quântico vs. clássico)
  - Referência ao experimento físico com fótons (03-mais-sobre-Hadamard.md)
  
- **Produto Tensorial (Estados Multi-Qubit)**:
  - Operador ⊗ (Kronecker product) para combinar qubits
  - Construção de estados |00⟩, |01⟩, |10⟩, |11⟩
  - Representação de 2 qubits: vetor de 4 dimensões
  - Superposição de múltiplos qubits: |ψ⟩ = α|00⟩ + β|01⟩ + γ|10⟩ + δ|11⟩
  - Demonstrações passo a passo com SymPy
  
- **Portas de Dois Qubits**:
  - **CNOT (Controlled-NOT)**: Emaranhamento e estados de Bell
    * Matriz 4×4 e funcionamento condicional
    * Exemplos: CNOT|11⟩ = |10⟩, CNOT|10⟩ = |11⟩
  - **CZ (Controlled-Z)**: Inversão de fase condicional
    * Matriz 4×4 e operação de fase
    * Exemplo: CZ|11⟩ = -|11⟩
  - **ZZ Gate**: Fase condicional baseada em ambos os qubits
    * Inverte fase de |01⟩ e |10⟩, mantém |00⟩ e |11⟩
    * Aplicações em Feature Maps (ZZFeatureMap)
  - Implementações com NumPy para cada porta
  
- **Medição Quântica e Probabilidades**:
  - Born Rule: P(0) = |α|², P(1) = |β|²
  - Simulação de medição com np.random.choice
  - Função `medir_qubit()` demonstrando o colapso probabilístico
  - Interpretação física do processo de medição
  
- **Escalabilidade e Limitações Computacionais**:
  - Crescimento exponencial: n qubits → matriz 2ⁿ×2ⁿ
  - Exemplo: 50 qubits = matriz ~10¹⁵×10¹⁵ (inviável com NumPy)
  - Justificativa para frameworks especializados (Qiskit, PennyLane)
  - Truques matemáticos e otimizações necessárias
  
- **Visualizações e Ferramentas**:
  - Fórmulas LaTeX formatadas com display(Markdown())
  - Esfera de Bloch (introdução)
  - Q-Sphere para estados multi-qubit
  - Comparação entre abordagens simbólicas (SymPy) e numéricas (NumPy)

### 📙 notebooks/00b-phases.ipynb
**Fases Quânticas e Portas de Rotação Parametrizadas** 🟡
- **Fase quântica**: Fundamento da interferência quântica
- **Fase global vs. fase relativa**: Diferenças e observabilidade
- **Estados com fases diferentes**: |+⟩, |−⟩, |i+⟩, |i−⟩
- **Portas de fase fixas**:
  - **Porta Z**: Adiciona 180° de fase ao |1⟩
  - **Porta S**: Adiciona 90° de fase ao |1⟩
  - **Porta T**: Adiciona 45° de fase ao |1⟩
- **Visualizações na Esfera de Bloch**: Estados com diferentes fases
- **Visualizações com Q-Sphere**: Representação de fases por cores
- **Experimento interativo**: Criação de estados customizados com diferentes fases
- **Portas de Rotação Parametrizadas (RX, RY, RZ)**:
  - **Introdução**: Portas com ângulos variáveis para QML e circuitos variacionais
  - **Aplicações em VQC**: Codificação de dados e ansatz variacional
  - **Matrizes das portas**: RX(θ), RY(θ), RZ(θ) com SymPy
  - **Implementação manual com NumPy**: Funções `rx_gate()`, `ry_gate()`, `rz_gate()`
  - **Exemplos práticos visualizados**:
    * RY: Rotação no plano XZ (uso em Ansatz e codificação de dados)
    * RZ: Rotação de fase pura (uso em Feature Maps)
    * RX: Rotação no plano YZ (criação de estados complexos)
  - **Codificação de dados clássicos**: Mapeamento [0,1] → estados quânticos via RY
  - **Visualizações na Esfera de Bloch**: Estados com 5 ângulos diferentes por porta
  - **Visualizações com Q-Sphere**: Representação de fases nos dados codificados
  - **Relação com portas fixas**: Z=RZ(π), S=RZ(π/2), T=RZ(π/4), X=RX(π)
  - **Importância para QML**: Parametrização, expressividade, gradientes e kernels quânticos
- **Porta CP (Controlled-Phase)**:
  - **Definição e matriz**: Porta quântica de dois qubits que adiciona fase condicional
  - **Implementação com NumPy**: Função `cphase_gate(theta)` para cálculos diretos
  - **Visualização com Bloch Spheres**: Estados antes e depois da aplicação de CP
  - **Convenção little-endian**: Explicação pedagógica sobre ordenação de qubits no Qiskit
  - **Produto tensorial (np.kron)**: Detalhamento da construção de estados multi-qubit
  - **Implementação com Qiskit**: Uso de `qc.cp(theta, control, target)` em circuitos
  - **Comparação NumPy vs Qiskit**: Validação numérica entre implementações
  - **Casos especiais**: CP(π) = CZ, CP(π/2) = CS, CP(π/4) = CT
- **Aplicações práticas**: Base para QFT, QPE, Grover, VQC e algoritmos quânticos avançados

### 📗 notebooks/01-intro.ipynb
**Introdução ao Qiskit** 🟢
- Configuração e primeiros passos
- Criação de circuitos quânticos
- Portas quânticas básicas (H, X, CNOT)
- Simulação e visualização
- Estados de Bell e emaranhamento quântico
- Visualizações de estados quânticos
- Visualização na Esfera de Bloch

### 📕 notebooks/02-teletransport.ipynb
**Protocolo de Teletransporte Quântico** 🟡
- Implementação completa do protocolo de Bennett et al.
- Criação de estados emaranhados (pares de Bell)
- Medição de Bell
- Correções quânticas condicionais
- Visualizações em Bloch sphere, Q-Sphere e State City
- Cálculos matemáticos detalhados de cada etapa
- Visualização 3D interativa customizada (Q-Sphere)

#### 🔧 notebooks/02-teletransport.qasm
> **💎 Implementação OpenQASM do Protocolo de Teletransporte**
>
> Arquivo QASM complementar ao notebook, pronto para uso no **IBM Quantum Composer**:

- **Formato**: OpenQASM 2.0 (padrão da indústria)
- **Uso no IBM Quantum Platform**:
  - ✅ Importação direta no [IBM Quantum Composer](https://quantum.ibm.com/composer)
  - ✅ Execução em simuladores quânticos (ex: `ibmq_qasm_simulator`)
  - ✅ Execução em **hardware quântico real** da IBM (ex: `ibm_brisbane`, `ibm_kyoto`)
  - ✅ Visualização gráfica do circuito
  - ✅ Análise de resultados com histogramas
  - ✅ Comparação entre simulação ideal e hardware real (efeitos de ruído e decoerência)
  - ✅ Exportação para outros frameworks (Qiskit, Cirq, etc.)

- **Comentários detalhados**: O arquivo contém documentação completa de cada etapa do protocolo
- **Educacional**: Ideal para demonstrações em sala de aula ou apresentações
- **Pesquisa**: Base para experimentos em hardware quântico real

**Como usar**:
1. Acesse [quantum.ibm.com/composer](https://quantum.ibm.com/composer)
2. Clique em "Import QASM" ou "Open QASM"
3. Faça upload do arquivo `02-teletransport.qasm`
4. Escolha o backend (simulador ou hardware real)
5. Execute e analise os resultados!

> **⚠️ Nota**: Em hardware real, a taxa de sucesso será menor que 100% devido a ruído quântico, decoerência e imperfeições dos qubits físicos - uma excelente oportunidade para estudar desafios práticos da computação quântica!

### 📄 notebooks/03-mais-sobre-Hadamard.md
**Interpretação Física da Porta Hadamard** 🟢
- Conexão entre a porta Hadamard e espelhos semitransparentes (Beam Splitters)
- Diferença entre comportamento clássico e quântico
- Interferômetro de Mach-Zehnder e interferência quântica
- Demonstração experimental da superposição e interferência
- Vídeo demonstrativo do experimento real
- Relação com o Prêmio Nobel de Física de 2022

### 🔬 notebooks/04-Hadamard-experiment.ipynb
**Experimento de Interferência com Hadamard** 🟡
- Simulação do Interferômetro de Mach-Zehnder
- Aplicação de duas portas Hadamard sequenciais
- Visualizações em Esfera de Bloch e Q-Sphere após cada operação
- Demonstração de interferência construtiva e destrutiva
- Visualização do circuito quântico completo
- Comprovação da reversibilidade da porta Hadamard

### 🎯 notebooks/05-interference.ipynb
**Interferência Quântica e Algoritmo de Deutsch-Jozsa** 🔴
- **Phase Kickback (Retrocesso de Fase)**: Demonstração detalhada do mecanismo fundamental
  - Preparação de estados |+⟩ e |−⟩
  - Aplicação de CNOT e análise da transferência de fase
  - Visualizações em Q-Sphere e Esfera de Bloch
  - Cálculos matemáticos passo a passo
- **Problema Clássico vs Quântico**: Análise comparativa de eficiência
  - Implementação clássica (força bruta)
  - Vantagem quântica exponencial
- **Algoritmo de Deutsch-Jozsa**: Implementação completa
  - Construção passo a passo do circuito quântico
  - Oráculos balanceados e constantes
  - Análise de interferência quântica
  - Experimento interativo com n=15 bits
  - Demonstração da determinação definitiva com 1 consulta

#### 🔧 notebooks/05-kickback.qasm
> **⚡ Implementação OpenQASM do Phase Kickback**
>
> Arquivo QASM complementar ao notebook, demonstrando o mecanismo de Phase Kickback:

- **Formato**: OpenQASM 2.0 (padrão da indústria)
- **Uso no IBM Quantum Platform**:
  - ✅ Importação direta no [IBM Quantum Composer](https://quantum.ibm.com/composer)
  - ✅ Execução em simuladores quânticos (ex: `ibmq_qasm_simulator`)
  - ✅ Execução em **hardware quântico real** da IBM
  - ✅ Visualização gráfica do circuito
  - ✅ Análise de resultados com histogramas

- **Circuito implementado**: 2 qubits demonstrando transformação |+⟩→|−⟩ via CNOT
- **Resultado esperado**: Medição de '1' com 100% de probabilidade (interferência destrutiva)
- **Educacional**: Demonstração visual do conceito de phase kickback

**Como usar**:
1. Acesse [quantum.ibm.com/composer](https://quantum.ibm.com/composer)
2. Importe o arquivo `05-kickback.qasm`
3. Execute no simulador ou hardware real
4. Observe a medição determinística!

#### 🔧 notebooks/05-deutsch-jozsa.qasm
> **🚀 Implementação OpenQASM do Algoritmo de Deutsch-Jozsa**
>
> Arquivo QASM complementar ao notebook, implementação completa do algoritmo:

- **Formato**: OpenQASM 2.0 (padrão da indústria)
- **Uso no IBM Quantum Platform**:
  - ✅ Importação direta no [IBM Quantum Composer](https://quantum.ibm.com/composer)
  - ✅ Execução em simuladores quânticos
  - ✅ Execução em **hardware quântico real** da IBM
  - ✅ Comparação entre oráculos balanceados e constantes
  - ✅ Demonstração da vantagem quântica

- **Circuito implementado**: 4 qubits (3 entrada + 1 auxiliar) para n=3
- **Oráculo configurado**: Balanceado (3 CNOTs)
- **Resultado esperado**: 
  - Oráculo balanceado: medição ≠ '000'
  - Oráculo constante: medição = '000'
- **Vantagem**: 1 consulta quântica vs até 5 consultas clássicas
- **Comentários detalhados**: Cada etapa do algoritmo explicada
- **Educacional**: Ideal para demonstrações e experimentos

**Como usar**:
1. Acesse [quantum.ibm.com/composer](https://quantum.ibm.com/composer)
2. Importe o arquivo `05-deutsch-jozsa.qasm`
3. Execute com oráculo balanceado (padrão)
4. Teste oráculo constante (comentar CNOTs, descomentar X ou I)
5. Compare resultados: determinação definitiva em 1 consulta!

**Nota**: Em hardware real, resultados podem variar devido a ruído quântico - uma excelente oportunidade para estudar os desafios práticos da computação quântica!

### 🔍 notebooks/06-grover.ipynb
**Algoritmo de Grover - Busca Quântica** 🔴
- **Introdução ao Algoritmo**: Comparação entre busca clássica e quântica
- **Mecanismo de Amplificação de Amplitude**: 
  - Oráculo (Marcação): Inversão de fase do estado alvo
  - Difusor (Inversão sobre a Média): Amplificação da probabilidade
- **Implementação Prática**: Busca do estado |11⟩ em 2 qubits
  - Construção passo a passo do circuito
  - Oráculo customizado para diferentes estados alvo
  - Função difusor de Grover
- **Análise Matemática Detalhada**:
  - Cálculo completo do difusor para 2 qubits
  - Matriz de difusão $D = 2|s\rangle\langle s| - I$
  - Multiplicação matricial passo a passo
  - Interpretação física da inversão sobre a média
  - Tabela de transformação de amplitudes
- **Desafio Prático**: Modificar oráculo para encontrar |00⟩
- **Visualizações**: Circuitos quânticos, Esfera de Bloch, Q-Sphere
- **Vantagem Quântica**: Aceleração quadrática ($\sqrt{N}$ vs $N/2$)
- **Resultado**: 100% de precisão para 2 qubits em 1 iteração

#### 🔧 notebooks/06-grover.qasm
> **🎯 Implementação OpenQASM do Algoritmo de Grover**
>
> Arquivo QASM complementar ao notebook, pronto para uso no **IBM Quantum Composer**:

- **Formato**: OpenQASM 3.0 (versão mais recente)
- **Uso no IBM Quantum Platform**:
  - ✅ Importação direta no [IBM Quantum Composer](https://quantum.ibm.com/composer)
  - ✅ Execução em simuladores quânticos (ex: `ibmq_qasm_simulator`)
  - ✅ Execução em **hardware quântico real** da IBM
  - ✅ Visualização gráfica do circuito
  - ✅ Análise de resultados com histogramas
  - ✅ Demonstração da busca quântica em ação

- **Circuito implementado**: 2 qubits buscando o estado |11⟩
- **Componentes**:
  - Inicialização: Portas H para superposição uniforme
  - Oráculo: Porta CZ para marcar |11⟩
  - Difusor: Sequência H-X-CZ-X-H para amplificação
  - Medição: Registro de 2 bits clássicos
- **Resultado esperado**: Medição de '11' com ~100% de probabilidade
- **Comentários detalhados**: Cada etapa do algoritmo explicada no código
- **Educacional**: Ideal para demonstrações de busca quântica

**Como usar**:
1. Acesse [quantum.ibm.com/composer](https://quantum.ibm.com/composer)
2. Clique em "Import QASM" ou "Open QASM"
3. Faça upload do arquivo `06-grover.qasm`
4. Escolha o backend (simulador ou hardware real)
5. Execute e veja o algoritmo encontrar o estado correto!

**Variações possíveis**:
- Modificar o oráculo para buscar |00⟩, |01⟩ ou |10⟩
- Adicionar mais qubits para espaços de busca maiores
- Comparar com busca clássica (múltiplas consultas)

**Nota**: Em hardware real, a taxa de sucesso será ligeiramente menor que 100% devido a ruído quântico, decoerência e imperfeições dos qubits - uma excelente demonstração dos desafios práticos da computação quântica!

### 🌊 notebooks/07-quantum-fourier-transform.ipynb
**Transformada de Fourier Quântica (QFT) e Estimação de Fase (QPE)** 🔴
- **Transformada de Fourier Quântica (QFT)**: Tradução entre bases computacional e de Fourier
  - Codificação de números binários em rotações de fase
  - Visualização com Esferas de Bloch
  - Exemplo prático: número 6 (binário 110)
  - Interpretação: "máquina de tradução" entre digital e ondulatório
- **Analogia do Relógio**: Representação intuitiva de fases
  - Base computacional: switches 0/1 (digital)
  - Base de Fourier: ângulos de rotação (analógico)
  - Frequência de rotação codifica o valor do número
- **Visualizações Detalhadas**:
  - Estados antes e depois da QFT
  - Amplitudes complexas e suas fases
  - Coordenadas de Bloch de cada qubit
- **QFT Inversa**: Tradução de rotações para bits
- **Estimação de Fase Quântica (QPE)**: "Velocímetro Quântico"
  - Problema: medir fase θ de uma porta U sem destruí-la
  - Solução: Phase Kickback + QFT Inversa
  - Implementação prática: estimar fase 1/8 (45°)
  - Precisão limitada pelos qubits de contagem (n qubits → 1/2ⁿ)
- **Algoritmo Completo**:
  - Preparação: qubits em superposição
  - Aplicação controlada de U com potências crescentes (U¹, U², U⁴...)
  - Decodificação: QFT Inversa traduz fases para binário
  - Medição: resultado é a fase em fração binária
- **Conexão com Algoritmo de Shor**:
  - QPE é o "motor" da fatoração quântica
  - Transforma problema de encontrar período em estimar fase
  - Base para quebra de criptografia RSA
- **Análise Matemática**:
  - Truque da potência (repetições *= 2)
  - Decomposição em frequências diferentes
  - Precisão vs número de qubits
- **Vantagem sobre Métodos Clássicos**: Medição direta de fases inacessíveis classicamente

### 🤖 notebooks/20-quantum-machine-learning.ipynb
**Quantum Machine Learning (QML) - Classificação com VQC** 🔴
- **Estrutura do "Sanduíche Quântico"**: 
  - Feature Map (Codificação): Transformação de dados clássicos em estados quânticos
  - Ansatz (Modelo Treinável): Circuito parametrizado com pesos ajustáveis
  - Medição (Saída): Extração de probabilidades de classificação
- **Implementação Completa de VQC (Variational Quantum Classifier)**:
  - Preparação de dados com normalização (MinMaxScaler)
  - Divisão treino/teste e visualizações de datasets
  - ZZFeatureMap: Projeção em alta dimensão (2ⁿ espaço de Hilbert)
  - RealAmplitudes Ansatz: Circuito variacional com rotações RY e emaranhamento CNOT
  - Otimização com COBYLA (Constrained Optimization BY Linear Approximations)
- **Análise Detalhada do Feature Map**:
  - ZZFeatureMap: Interações não-lineares via produto xᵢ·xⱼ
  - Camadas H → RZ → ZZ com repetições configuráveis
  - Emaranhamento nativo e termos não-lineares sem custo extra
  - Comparação com kernels clássicos (linear, polinomial)
- **Análise Detalhada do Ansatz**:
  - RealAmplitudes: Rotações RY + CNOT em camadas
  - Parâmetros treináveis otimizados por gradiente
  - Expressividade vs profundidade (reps)
  - Alternativas: EfficientSU2, TwoLocal, Custom Ansatz
- **Experimentos Práticos**:
  - Classificação binária com dados linearmente separáveis
  - Classificação com dados circulares não-lineares (make_circles)
  - Visualização de fronteiras de decisão
  - Comparação VQC vs SVM clássico
- **Visualizações Avançadas**:
  - Circuitos quânticos (Feature Map + Ansatz)
  - Esferas de Bloch para estados quânticos codificados
  - Fronteiras de decisão (decision boundaries) 2D
  - Curvas de aprendizado e evolução de parâmetros
- **Conceitos de Otimização**:
  - COBYLA: Otimização sem gradiente (derivative-free)
  - Landscape de parâmetros e mínimos locais
  - Barren Plateaus e vanishing gradients
  - Estratégias de inicialização de parâmetros
- **Quando QML tem vantagens**:
  - Dados não-lineares complexos
  - Problemas de alta dimensionalidade
  - Correlações entre features (xᵢ·xⱼ)
  - Espaço de Hilbert exponencial (kernel quântico)
- **Limitações e Considerações**:
  - Normalização crítica de features [0, π]
  - Ruído em hardware NISQ (Noisy Intermediate-Scale Quantum)
  - Custo computacional de simulação clássica
  - Número limitado de qubits disponíveis
- **Biblioteca Qiskit Machine Learning**:
  - Sintaxe similar ao scikit-learn (.fit(), .predict())
  - Compatibilidade com pipelines clássicos
  - Suporte a múltiplos backends (simuladores e hardware real)

#### 🔧 notebooks/20-vqc-classifier.qasm
> **🎓 Implementação OpenQASM de VQC Completo**
>
> Arquivo QASM demonstrando a estrutura completa de um Classificador Variacional Quântico:

- **Formato**: OpenQASM 2.0 (padrão da indústria)
- **Uso no IBM Quantum Platform**:
  - ✅ Importação direta no [IBM Quantum Composer](https://quantum.ibm.com/composer)
  - ✅ Execução em simuladores quânticos
  - ✅ Visualização gráfica da arquitetura VQC
  - ✅ Base para experimentos de QML
  - ✅ Demonstração educacional de Feature Map + Ansatz

- **Circuito implementado**: 2 qubits processando 2 features
- **Estrutura completa**:
  - PARTE 1: Feature Map (ZZ-style)
    * Superposição inicial (H gates)
    * Codificação de dados (RZ rotations)
    * Emaranhamento ZZ (CNOT + RZ + CNOT)
    * Rotações RX adicionais
  - PARTE 2: Ansatz (RealAmplitudes-style)
    * Camada 1: RY rotations com parâmetros θ0, θ1
    * Emaranhamento: CNOT gates
    * Camada 2: RY rotations com parâmetros θ2, θ3
  - PARTE 3: Medição em base computacional

- **Parâmetros exemplo**:
  - Features: x0 = 1.2, x1 = 2.3 (normalizadas)
  - Weights: θ0 = 0.5, θ1 = 1.0, θ2 = 1.5, θ3 = 0.3 (fixos para demonstração)
- **Comentários detalhados**: Cada seção explicada linha a linha
- **Educacional**: Ideal para entender a arquitetura VQC visualmente

**Como usar**:
1. Acesse [quantum.ibm.com/composer](https://quantum.ibm.com/composer)
2. Importe o arquivo `20-vqc-classifier.qasm`
3. Visualize a estrutura do circuito
4. Modifique parâmetros de features e weights
5. Execute e observe como diferentes valores afetam a classificação!

**Nota para experimentação**:
- Altere os valores de RZ para simular diferentes dados de entrada
- Modifique os parâmetros RY do Ansatz para ver o efeito do treinamento
- Em um VQC real, os parâmetros θ seriam otimizados automaticamente

#### 🔧 notebooks/20-vqc-tutorial.qasm
> **📚 Tutorial: Componentes VQC Separados**
>
> Arquivo QASM educacional demonstrando cada componente do VQC isoladamente:

- **Formato**: OpenQASM 2.0 (padrão da indústria)
- **Estrutura modular**: 3 exemplos independentes (comente/descomente para testar)

- **EXEMPLO 1: Apenas Feature Map**
  - Demonstra apenas a codificação de dados
  - ZZ Feature Map com x0 = π/4, x1 = π/2
  - Superposição → Codificação → Emaranhamento
  - Útil para entender como dados viram estados quânticos

- **EXEMPLO 2: Apenas Ansatz**
  - Demonstra apenas o modelo treinável
  - RealAmplitudes-style com 2 camadas
  - Parâmetros fixos: θ0=1.0, θ1=0.5, θ2=1.5, θ3=0.3
  - Útil para entender a estrutura do modelo

- **EXEMPLO 3: VQC Completo com Fronteira de Decisão**
  - Combinação completa: Feature Map + Ansatz
  - Testa 4 pontos de dados diferentes
  - Demonstra como o VQC classifica diferentes entradas
  - Compara resultados com e sem treinamento

- **Uso educacional**:
  - Teste cada componente separadamente
  - Compare resultados de diferentes configurações
  - Experimente modificar parâmetros
  - Visualize o impacto de cada camada

**Como usar**:
1. Acesse [quantum.ibm.com/composer](https://quantum.ibm.com/composer)
2. Importe o arquivo `20-vqc-tutorial.qasm`
3. **Descomente apenas UMA seção por vez**
4. Execute e visualize o circuito específico
5. Compare resultados entre diferentes configurações!

**Dica pedagógica**:
- Comece com EXEMPLO 1 (só Feature Map) para entender codificação
- Depois teste EXEMPLO 2 (só Ansatz) para entender o modelo
- Finalmente rode EXEMPLO 3 (completo) para ver tudo junto
- Modifique valores e observe como a classificação muda!

---

## 🧰 Módulos Python (src/)

### 📦 src/quantum_viz.py
**Módulo de visualizações interativas 3D para estados quânticos**

#### Funções principais:

```python
plot_qsphere_interactive(statevector, auto_open=True, output_file='qsphere_interativa.html')
```

**Recursos:**
- 🎨 Cria Q-Sphere 3D interativa usando Plotly
- 📊 Visualiza amplitudes, fases e probabilidades
- 🧭 Sistema de coordenadas cartesianas 3D
- 🏷️ Labels automáticos para estados significativos
- 💾 Exportação HTML para navegador

**Exemplo de uso:**
```python
from quantum_viz import plot_qsphere_interactive
from qiskit.quantum_info import Statevector

# Criar estado de Bell
state = Statevector([1/np.sqrt(2), 0, 0, 1/np.sqrt(2)])
fig = plot_qsphere_interactive(state, output_file='bell_state.html')
```

---

## 🛠️ Tecnologias Utilizadas

<table>
<tr>
<td width="50%">

**🔮 Computação Quântica**
- ![Qiskit](https://img.shields.io/badge/Qiskit-2.x-6929C4?logo=qiskit) Framework IBM
- ![Qiskit Aer](https://img.shields.io/badge/Qiskit_Aer-Simulators-6929C4) Simuladores de alta performance

**📊 Visualização**
- ![Plotly](https://img.shields.io/badge/Plotly-5.x-3F4F75?logo=plotly) Gráficos 3D interativos
- ![Matplotlib](https://img.shields.io/badge/Matplotlib-Latest-11557c) Circuitos e estados
- ![Seaborn](https://img.shields.io/badge/Seaborn-Latest-9C9EDE) Visualizações estatísticas
- Kaleido - Exportação de gráficos

</td>
<td width="50%">

**🐍 Python & Computação**
- ![Python](https://img.shields.io/badge/Python-3.14+-3776AB?logo=python&logoColor=white) Versão 3.14+
- ![NumPy](https://img.shields.io/badge/NumPy-Latest-013243?logo=numpy) Computação numérica
- ![SymPy](https://img.shields.io/badge/SymPy-Latest-3B5526?logo=sympy) Matemática simbólica

**📓 Ambiente Interativo**
- ![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-F37626?logo=jupyter) Ambiente interativo
- ipywidgets - Widgets interativos

</td>
</tr>
</table>

## 🚀 Como Usar

### Pré-requisitos

- Python 3.14 ou superior
- [uv](https://github.com/astral-sh/uv) (gerenciador de pacotes Python moderno)

### ⚙️ Instalação

#### 1️⃣ Clone o repositório:
```bash
git clone https://github.com/maxwellamaral/quantum.git
cd quantum
```

#### 2️⃣ Crie o ambiente virtual e instale as dependências:
```bash
uv sync
```

#### 3️⃣ Ative o ambiente virtual:
```bash
# Windows
.venv\Scripts\activate

# Linux/Mac
source .venv/bin/activate
```

#### 4️⃣ Inicie o Jupyter (a partir da raiz do projeto):
```bash
jupyter notebook notebooks/
```

> **💡 Nota**: Os notebooks estão configurados para importar módulos da pasta `src/`. Certifique-se de executar o Jupyter a partir da raiz do projeto.

---

## 📊 Recursos Visuais

Os notebooks incluem **múltiplas formas de visualização** para facilitar o entendimento:

#### 🎨 Q-Sphere Customizada (Plotly 3D)
- ✨ Setas coloridas por fase (magenta = +, ciano = -)
- 🧭 Sistema de coordenadas cartesianas 3D (X, Y, Z)
- 🏷️ Labels automáticos para estados significativos
- 💬 Informações detalhadas no hover
- 🖱️ Controles interativos (rotação, zoom, pan)

#### 📈 Outras Visualizações
- 🔌 **Diagramas de circuitos**: Estilo IBM Quantum
- 🌐 **Esfera de Bloch**: Representação geométrica de qubits individuais
- ⚛️ **Q-Sphere (Qiskit)**: Visualização padrão de estados emaranhados
- 🏙️ **State City**: Visualização 3D da matriz densidade
- 📊 **Histogramas**: Distribuição de probabilidades de medições
---
## 🎓 Conceitos Abordados

### Fundamentos de Mecânica Quântica
- **Superposição quântica**: Estados |+⟩ e |−⟩
- **Emaranhamento quântico**: Estados de Bell e correlações não-locais
- **Medição e colapso de estado**: Born Rule e probabilidades quânticas
- **Interferência quântica**: Construtiva e destrutiva
- **Fases quânticas**: 
  - Fase global vs. fase relativa
  - Estados com fases diferentes (|i+⟩, |i−⟩)
  - Observabilidade e efeitos físicos
- **Phase Kickback**: Transferência de fase entre qubits
- **Bases quânticas**:
  - Base computacional: estados |0⟩, |1⟩ (digital)
  - Base de Fourier: codificação em fases (ondulatório)
  - Mudança de base via QFT

### Portas Quânticas
- **Portas de Pauli**: X (NOT), Y, Z
- **Porta Hadamard (H)**: Criação de superposição
- **Portas de fase**: S (π/2), T (π/4)
- **Portas controladas**: CNOT, CZ, **CP (Controlled-Phase)**
  - **Porta CP**: Adiciona fase condicional e^(iθ) ao estado |11⟩
  - Casos especiais: CP(π)=CZ, CP(π/2)=CS, CP(π/4)=CT
- **Interpretação física**: Beam splitters e interferômetros

### Protocolos e Algoritmos Quânticos
- **Teletransporte Quântico** (Bennett et al., 1993):
  - Preparação de estados de Bell
  - Medição de Bell
  - Comunicação clássica e correções condicionais
- **Algoritmo de Deutsch-Jozsa**:
  - Oráculo quântico
  - Interferência quântica global
  - Vantagem quântica exponencial (1 consulta vs N/2)
- **Algoritmo de Grover**:
  - Busca quântica não-estruturada
  - Oráculo de marcação (inversão de fase)
  - Difusor de Grover (inversão sobre a média)
  - Vantagem quântica quadrática (√N vs N/2)
- **Transformada de Fourier Quântica (QFT)**:
  - Tradução entre base computacional e base de Fourier
  - Codificação de informação em fases (rotações)
  - Transformação unitária reversível (QFT†)
  - Complexidade O(n²) vs O(n2ⁿ) clássica
- **Estimação de Fase Quântica (QPE)**:
  - Medição de autovalores de operadores unitários
  - Combinação de Phase Kickback e QFT Inversa
  - Precisão escalável com qubits de contagem
  - Componente central do Algoritmo de Shor
- **Quantum Machine Learning (QML)**:
  - Classificador Variacional Quântico (VQC)
  - Feature Map: ZZFeatureMap, projeção em espaço de Hilbert
  - Ansatz: RealAmplitudes, circuito parametrizado treinável
  - Otimizador COBYLA (sem gradientes)
  - Kernel trick quântico e vantagens sobre ML clássico
  - Era NISQ: limitações de hardware e ruído
  - Comparação com SVM e Regressão Logística

### Experimentos e Demonstrações
- **Interferômetro de Mach-Zehnder**: Interpretação física da porta Hadamard
- **Experimentos de interferência**: Visualização de fase e amplitude
- **Beam Splitters quânticos**: Conexão com óptica quântica
- **Prêmio Nobel de Física 2022**: Emaranhamento e desigualdades de Bell

### Matemática Quântica
- **Notação de Dirac**: Kets (|ψ⟩) e bras (⟨ψ|)
- **Vetores de estado**: Representação em base computacional
- **Operadores unitários**: Matrizes e transformações reversíveis
- **Produto tensorial**: Estados de múltiplos qubits (|ψ⟩ ⊗ |φ⟩)
- **Produto interno e externo**: ⟨ψ|φ⟩ e |ψ⟩⟨φ|
- **Projetores**: Operadores de medição e difusão
- **Born Rule**: Cálculo de probabilidades (P = |⟨i|ψ⟩|²)
- **Amplitudes e fases**: Representação polar de números complexos

### Visualizações e Ferramentas
- **Esfera de Bloch**: Representação geométrica de 1 qubit
- **Q-Sphere**: Visualização de estados multi-qubit
- **State City**: Representação 3D da matriz densidade
- **Histogramas**: Distribuição de probabilidades de medição
- **Circuitos quânticos**: Diagramas de portas e operações

---

## 🤝 Contribuindo

**Contribuições são bem-vindas!** Sinta-se à vontade para:

- 🐛 Reportar bugs
- 💡 Sugerir novos notebooks ou tópicos
- ✨ Melhorar explicações ou visualizações
- 🔧 Corrigir erros matemáticos ou de código
---
## 📚 Referências

### **1. Bennett et al. (1993) - Teletransporte Quântico**

**Referência completa:** Bennett, C. H., Brassard, G., Crépeau, C., Jozsa, R., Peres, A., & Wootters, W. K. (1993). "Teleporting an unknown quantum state via dual classical and Einstein-Podolsky-Rosen channels." *Physical Review Letters*, 70(13), 1895-1899. DOI: 10.1103/PhysRevLett.70.1895[^1][^2][^3]

**Informações principais:**
- Publicado em 29 de março de 1993
- Artigo seminal que propõe o conceito de teletransporte quântico
- Descreve como um estado quântico desconhecido pode ser desmontado em informação clássica pura e correlações Einstein-Podolsky-Rosen (EPR), e depois reconstruído
- Exigido que Alice e Bob pré-compartilhem um par de partículas emaranhadas
- Mais de 10.666 citações, classificado como um marco (Milestone) no *Physical Review Letters*[^4]
- Disponível em acesso aberto no APS[^1]

### **2. Nielsen & Chuang (2010) - Computação Quântica e Informação Quântica**

**Referência completa:** Nielsen, M. A., & Chuang, I. L. (2010). *Quantum Computation and Quantum Information*[^5][^6]

**Informações principais:**
- Um dos textos mais citados em física (65.855 citações)[^7]
- Considerado o melhor livro-texto nesta área de pesquisa[^6]
- Obra de referência abrangente cobrindo:
  - Conceitos fundamentais de computação quântica
  - Teoria da informação quântica
  - Códigos corretores de erros quânticos
  - Entropia em sistemas quânticos
  - Computação quântica por medição
- Acessível a qualquer pessoa com formação sólida em matemática, ciência da computação ou física[^6]

### **3. Grover (1996) - Algoritmo de Busca Quântica**

**Referência completa:** Grover, L. K. (1996). "A fast quantum mechanical algorithm for database search." *Proceedings of the 28th Annual ACM Symposium on Theory of Computing (STOC '96)*, 212-219. DOI: 10.1145/237814.237866

**Informações principais:**
- Publicado em 1996 no STOC (Symposium on Theory of Computing)
- Propõe algoritmo de busca quântica com complexidade O(√N)
- Melhoria quadrática sobre algoritmos clássicos O(N)
- Base teórica para buscas em bancos de dados não-estruturados
- Aplicações em otimização, criptografia e machine learning quântico
- Um dos algoritmos quânticos mais importantes junto com Shor e Deutsch-Jozsa

### **4. Aspect, Clauser & Zeilinger (2022) - Prêmio Nobel de Física**

**Referência:** Aspect, A., Clauser, J. F., & Zeilinger, A. (2022). *Nobel Prize in Physics - Experiments with entangled photons and violation of Bell inequalities*[^8][^9]

**Informações principais:**
- Prêmio Nobel de Física 2022 em partes iguais[^9][^8]
  - **Alain Aspect** - Université Paris-Saclay e École Polytechnique
  - **John F. Clauser** - J.F. Clauser & Associates
  - **Anton Zeilinger** - Universidade de Viena
- Reconhecidos "por experimentos com fótons emaranhados, estabelecendo a violação das desigualdades de Bell e pioneirismo na ciência da informação quântica"[^8]
- Contribuições:
  - Estabelecimento da propriedade quântica do emaranhamento
  - Demonstração de que partículas quânticas podem estar emaranhadas
  - Demonstração experimental do teletransporte quântico (1997, por Zeilinger)[^8]
  - Primeira demonstração experimental de "entanglement swapping" (1998)[^8]
  - Fundações fundamentais para computação e comunicação quântica[^9]


### **5. Documentação Qiskit**

**Referência:** [Qiskit Documentation](https://qiskit.org/documentation/)

**Informações principais:**
- Documentação oficial do Qiskit, o framework de computação quântica da IBM
- Recursos abrangentes sobre:
  - Instalação e configuração
  - Tutoriais para iniciantes e avançados
  - Referência de API para módulos Qiskit
  - Exemplos de código e notebooks interativos

## 📄 Licença

Este projeto está licenciado sob a **Licença MIT** - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

> **⚠️ Importante**: Ao utilizar este material, por favor, referencie a autoria conforme a seção de citação abaixo.

---

## 📝 Como Citar

Ao utilizar ou adaptar este material didático e seus códigos, solicita-se a citação do autor, reconhecendo o trabalho de estruturação pedagógica, curadoria de conteúdo e validação de engenharia realizado:

```bibtex
@misc{amaral2026quantum,
  author       = {Maxwell Anderson Ielpo Amaral},
  title        = {Quantum Computing com Qiskit: Material Educacional de Computação Quântica},
  year         = {2026},
  howpublished = {\url{https://github.com/maxwellamaral/quantum}},
  note         = {Projeto educacional com notebooks interativos desenvolvido com apoio de IA e validação humana integral sobre computação quântica usando Qiskit}
}
```

**Formato APA**:
```
Amaral, M. A. I. (2026). Quantum Computing com Qiskit: Material Educacional de Computação Quântica. 
https://github.com/maxwellamaral/quantum
```

**Formato ABNT**:
```
AMARAL, Maxwell Anderson Ielpo. Quantum Computing com Qiskit: Material Educacional de Computação Quântica. 
2026. Disponível em: https://github.com/maxwellamaral/quantum. Acesso em: 10 jan. 2026.
```

### Notas de Rodapé

[^1]: https://link.aps.org/doi/10.1103/PhysRevLett.70.1895
[^2]: http://www.sabrizain.org/piccard/research/teleport.pdf
[^3]: https://ui.adsabs.harvard.edu/abs/1993PhRvL..70.1895B
[^4]: https://www.semanticscholar.org/paper/Teleporting-an-unknown-quantum-state-via-dual-and-Bennett-Brassard/a3e45ffd3886f1a26f849514de3791054eebcc42
[^5]: https://www.academia.edu/41154803/Quantum_Computation_and_Quantum_Information_by_Nielsen_and_Chuang
[^6]: https://profmcruz.wordpress.com/wp-content/uploads/2017/08/quantum-computation-and-quantum-information-nielsen-chuang.pdf
[^7]: https://pages.jh.edu/rrynasi1/HealeySeminar/literature/Nielsen+Chuang2010QuantumComputation+QuantumInformation.FirstTwoChapters.pdf
[^8]: https://www.optica.org/about/newsroom/news_releases/2022/october/aspect_clauser_zeilinger_awarded_2022_nobel_prize/
[^9]: https://www.scientificamerican.com/article/explorers-of-quantum-entanglement-win-2022-nobel-prize-in-physics1/
