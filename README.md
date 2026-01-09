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
│   ├── 01-intro.ipynb
│   ├── 02-teletransport.ipynb
│   ├── 03-mais-sobre-Hadamard.md
│   ├── 04-Hadamard-experiment.ipynb
│   └── 05-interference.ipynb
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
Fundamentos matemáticos para computação quântica:
- Álgebra linear
- Números complexos
- Produto tensorial
- Notação de Dirac

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
Estudo Avançado de Interferência Quântica:
- Análise detalhada de padrões de interferência
- Experimentos com múltiplas portas Hadamard
- Visualizações interativas de estados quânticos

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

- **Circuito Interativa (Customizada)**: Visualização 3D interativa com Plotly
  - Setas coloridas por fase (magenta = +, ciano = -)
  - Sistema de coordenadas cartesianas 3D (X, Y, Z)
  - Labels automáticos para estados significativos
  - Informações detalhadas no hover
  - Controles interativos (rotação, zoom, pan)
- **Q-Sphere (Qiskit)**: Visualização padr Diagramas de circuitos estilo IBM
- **Esfera de Bloch**: Representação geométrica de qubits
- **Q-Sphere**: Visualização de estados emaranhados
- **State City**: Visualização 3D da matriz densidade
- **Histogramas**: Distribuição de probabilidades de medições

## 🎓 Conceitos Abordados

### Fundamentos
- Superposição quântica
- Emaranhamento quântico
- Medição e colapso de estado
- Portas quânticas (X, H, CNOT, CZ)
- Interferência quântica (construtiva e destrutiva)
- Beam Splitters e interpretação física de portas quânticas

### Protocolos
- Teletransporte 
- Interferômetro de Mach-ZehnderQuântico (Bennett et al., 1993)
- Preparação de estados de Bell
- Medição de Bell

### Matemática
- Estados quânticos e vetores de estado (ket notation)
- Operadores unitários e matrizes
- Produto tensorial de estados
- Probabilidades quânticas

## 📝 Estrutura do Teletransporte Quântico

O protocolo implementado segue estas etapas:

1. **Preparação**: Alice cria o estado a ser teletransportado
2. **Emaranhamento**: Criação do par de Bell entre Alice e Bob
3. **Medição de Bell**: Alice entrelaça seu qubit com o par de Bell
4. **Comunicação Clássica**: Alice envia 2 bits clássicos para Bob
5. **Correção**: Bob aplica portas condicionais para recuperar o estado original

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

### **3. Aspect, Clauser & Zeilinger (2022) - Prêmio Nobel de Física**

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


### **4. Documentação Qiskit**

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
2026. Disponível em: https://github.com/maxwellamaral/quantum. Acesso em: 08 jan. 2026.
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
