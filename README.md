# 🚀 Quantum Computing com Qiskit

Projeto educacional de computação quântica utilizando o framework Qiskit da IBM.

## 📚 Sobre o Projeto

Este repositório contém notebooks Jupyter interativos que exploram conceitos fundamentais de computação quântica, desde a matemática básica até protocolos quânticos complexos como o teletransporte quântico.

## 🎯 Objetivos

- Demonstrar conceitos de mecânica quântica de forma visual e interativa
- Implementar algoritmos e protocolos quânticos usando Qiskit
- Fornecer explicações matemáticas detalhadas junto com código executável
- Servir como material didático para quem está aprendendo computação quântica

## 🤖 Declaração de Uso de IA e Integridade

Este projeto adota uma abordagem transparente quanto ao uso de tecnologias de Inteligência Artificial no desenvolvimento de software, em conformidade com as boas práticas de integridade acadêmica e científica.

**Ferramentas Utilizadas:**

* Github Copilot & Google Antigravity: Utilizados para auxílio na geração de código (boilerplate), otimização de sintaxe e sugestões de implementação.

**Compromisso de Autoria e Validação:**
Embora ferramentas de IA tenham sido empregadas, a integridade do projeto é garantida pelos seguintes pilares de validação humana:

1. **Ideação e Pedagogia:** A estrutura didática, a sequência lógica dos tópicos e as explicações conceituais são de autoria intelectual humana.
2. **Engenharia de Software**: Todos os códigos gerados passaram por:
   - Análise de requisitos e adequação pedagógica.
   - Testes funcionais automatizados para garantir a corretude dos algoritmos quânticos.
   - Revisão manual para assegurar a aderência aos conceitos físicos da Mecânica Quântica.
3. **Responsabilidade**: O autor assume total responsabilidade pela funcionalidade, segurança e exatidão do material didático aqui apresentado.

## 📂 Estrutura do Projeto

```
quantum/
├── notebooks/          # Notebooks Jupyter educacionais
│   ├── 00-math.ipynb
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
│   └── 06-grover.qasm
├── src/                # Módulos Python reutilizáveis
│   ├── __init__.py
│   └── quantum_viz.py  # Funções de visualização interativa
├── assets/             # Recursos (imagens, vídeos, etc.)
├── README.md
├── LICENSE
└── pyproject.toml
```

## 📖 Notebooks Disponíveis

### notebooks/00-math.ipynb
Fundamentos matemáticos para computação quântica (versão original completa):
- Álgebra linear
- Números complexos
- Produto tensorial
- Notação de Dirac
- Estados quânticos e portas básicas
- Fases quânticas

### notebooks/00a-math.ipynb
Fundamentos Matemáticos Reorganizados:
- **Estados quânticos básicos**: |0⟩, |1⟩ e notação de Dirac
- **Representação vetorial**: Vetores coluna e amplitudes
- **Superposição**: Estados |+⟩ e |−⟩
- **Portas quânticas fundamentais**: X, H, Z
- **Produto tensorial**: Estados de múltiplos qubits
- **Porta CNOT**: Emaranhamento e estados de Bell
- **Medição e probabilidades**: Born Rule
- **Implementações práticas**: NumPy e SymPy

### notebooks/00b-phases.ipynb
Fases Quânticas - Conceitos Avançados:
- **Fase quântica**: Fundamento da interferência quântica
- **Fase global vs. fase relativa**: Diferenças e observabilidade
- **Estados com fases diferentes**: |+⟩, |−⟩, |i+⟩, |i−⟩
- **Portas de fase**:
  - **Porta Z**: Adiciona 180° de fase ao |1⟩
  - **Porta S**: Adiciona 90° de fase ao |1⟩
  - **Porta T**: Adiciona 45° de fase ao |1⟩
- **Visualizações na Esfera de Bloch**: Estados com diferentes fases
- **Estados de Bell com fases**: Impacto da fase no emaranhamento
- **Aplicações práticas**: Base para algoritmos quânticos

### notebooks/01-intro.ipynb
Introdução ao Qiskit:
- Configuração e primeiros passos
- Criação de circuitos quânticos
- Portas quânticas básicas (H, X, CNOT)
- Simulação e visualização
- Estados de Bell e emaranhamento quântico
- Visualizações de estados quânticos
- Visualização na Esfera de Bloch

### notebooks/02-teletransport.ipynb
Protocolo de Teletransporte Quântico:
- Implementação completa do protocolo de Bennett et al.
- Criação de estados emaranhados (pares de Bell)
- Medição de Bell
- Correções quânticas condicionais
- Visualizações em Bloch sphere, Q-Sphere e State City
- Cálculos matemáticos detalhados de cada etapa
- Visualização 3D interativa customizada (Q-Sphere)

#### 🔧 notebooks/02-teletransport.qasm
**Implementação OpenQASM do Protocolo de Teletransporte**

Arquivo QASM complementar ao notebook, pronto para uso no **IBM Quantum Composer**:

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

**Nota**: Em hardware real, a taxa de sucesso será menor que 100% devido a ruído quântico, decoerência e imperfeições dos qubits físicos - uma excelente oportunidade para estudar desafios práticos da computação quântica!

### notebooks/03-mais-sobre-Hadamard.md
Interpretação Física da Porta Hadamard:
- Conexão entre a porta Hadamard e espelhos semitransparentes (Beam Splitters)
- Diferença entre comportamento clássico e quântico
- Interferômetro de Mach-Zehnder e interferência quântica
- Demonstração experimental da superposição e interferência
- Vídeo demonstrativo do experimento real
- Relação com o Prêmio Nobel de Física de 2022

### notebooks/04-Hadamard-experiment.ipynb
Experimento de Interferência com Hadamard:
- Simulação do Interferômetro de Mach-Zehnder
- Aplicação de duas portas Hadamard sequenciais
- Visualizações em Esfera de Bloch e Q-Sphere após cada operação
- Demonstração de interferência construtiva e destrutiva
- Visualização do circuito quântico completo
- Comprovação da reversibilidade da porta Hadamard

### notebooks/05-interference.ipynb
Interferência Quântica e Algoritmo de Deutsch-Jozsa:
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
**Implementação OpenQASM do Phase Kickback**

Arquivo QASM complementar ao notebook, demonstrando o mecanismo de Phase Kickback:

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
**Implementação OpenQASM do Algoritmo de Deutsch-Jozsa**

Arquivo QASM complementar ao notebook, implementação completa do algoritmo:

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

### notebooks/06-grover.ipynb
Algoritmo de Grover - Busca Quântica:
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
**Implementação OpenQASM do Algoritmo de Grover**

Arquivo QASM complementar ao notebook, pronto para uso no **IBM Quantum Composer**:

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

## 🧰 Módulos Python (src/)

### src/quantum_viz.py
Módulo de visualizações interativas 3D para estados quânticos:

**Funções principais:**
- `plot_qsphere_interactive(statevector, auto_open=True, output_file='qsphere_interativa.html')`
  - Cria Q-Sphere 3D interativa usando Plotly
  - Visualiza amplitudes, fases e probabilidades
  - Sistema de coordenadas cartesianas 3D
  - Labels automáticos para estados significativos
  - Exportação HTML para navegador

**Exemplo de uso:**
```python
from quantum_viz import plot_qsphere_interactive
from qiskit.quantum_info import Statevector

# Criar estado de Bell
state = Statevector([1/np.sqrt(2), 0, 0, 1/np.sqrt(2)])
fig = plot_qsphere_interactive(state, output_file='bell_state.html')
```

## 🛠️ Tecnologias Utilizadas

- **Python 3.14+**
- **Qiskit 2.x** - Framework de computação quântica da IBM
- **Qiskit Aer** - Simuladores de alta performance
- **Plotly 5.x** - Visualizações 3D interativas (Q-Sphere customizada)
- **Matplotlib** - Visualizações de circuitos e estados quânticos
- **NumPy** - Computação numérica
- **SymPy** - Matemática simbólica
- **Seaborn** - Visualizações estatísticas
- **Jupyter** - Ambiente de notebook interativo
- **ipywidgets** - Widgets interativos para notebooks
- **Kaleido** - Exportação de gráficos Plotly

## 🚀 Como Usar

### Pré-requisitos

- Python 3.14 ou superior
- [uv](https://github.com/astral-sh/uv) (gerenciador de pacotes Python moderno)

### Instalação

1. Clone o repositório:
```bash
git clone https://github.com/maxwellamaral/quantum.git
cd quantum
```

2. Crie o ambiente virtual e instale as dependências:
```bash
uv sync
```

3. Ative o ambiente virtual:
```bash
# Windows
.venv\Scripts\activate

# Linux/Mac
source .venv/bin/activate
```

4. Inicie o Jupyter (a partir da raiz do projeto):
```bash
jupyter notebook notebooks/
```

**Nota:** Os notebooks estão configurados para importar módulos da pasta `src/`. Certifique-se de executar o Jupyter a partir da raiz do projeto.

## 📊 Recursos Visuais

Os notebooks incluem múltiplas formas de visualização:

- **Q-Sphere Customizada**: Visualização 3D interativa com Plotly
  - Setas coloridas por fase (magenta = +, ciano = -)
  - Sistema de coordenadas cartesianas 3D (X, Y, Z)
  - Labels automáticos para estados significativos
  - Informações detalhadas no hover
  - Controles interativos (rotação, zoom, pan)
- **Diagramas de circuitos**: Estilo IBM Quantum
- **Esfera de Bloch**: Representação geométrica de qubits individuais
- **Q-Sphere (Qiskit)**: Visualização padrão de estados emaranhados
- **State City**: Visualização 3D da matriz densidade
- **Histogramas**: Distribuição de probabilidades de medições

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

### Portas Quânticas
- **Portas de Pauli**: X (NOT), Y, Z
- **Porta Hadamard (H)**: Criação de superposição
- **Portas de fase**: S (π/2), T (π/4)
- **Portas controladas**: CNOT, CZ
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

## 🤝 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para:
- Reportar bugs
- Sugerir novos notebooks ou tópicos
- Melhorar explicações ou visualizações
- Corrigir erros matemáticos ou de código

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

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

**Importante**: Ao utilizar este material, por favor, referencie a autoria conforme a seção de citação abaixo.

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
