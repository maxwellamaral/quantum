# 📁 Estrutura do Projeto Quantum Computing

## Visão Geral

```
quantum/
├── CURSO.md            # 🎓 Trilha guiada do curso de extensão
│
├── notebooks/          # 📚 Notebooks Jupyter educacionais
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
│
├── src/                # 🧰 Módulos Python reutilizáveis
│   ├── __init__.py
│   ├── quantum_viz.py
│   └── README.md
│
├── assets/
│   └── simuladores/    # 🔮 Simuladores HTML interativos
├── docs/
│   └── historia/       # 📜 Mini-curso histórico (física → qubits)
│
├── README.md           # 📖 Documentação principal
├── LICENSE             # 📄 Licença MIT
└── pyproject.toml      # ⚙️ Configuração e dependências
```

## 📊 Status do Projeto

### ✅ Concluído
- [x] Organização em pastas separadas (notebooks/ e src/)
- [x] Módulo quantum_viz.py extraído e documentado
- [x] README.md atualizado com nova estrutura
- [x] Imports nos notebooks configurados para importar de src/
- [x] Documentação do módulo src/ criada
- [x] Todas as dependências declaradas em pyproject.toml

### 📦 Dependências (pyproject.toml)

```toml
dependencies = [
    "ipykernel==6.30.1",
    "ipywidgets>=8.1.8",
    "kaleido>=1.2.0",
    "matplotlib>=3.10.8",
    "nbformat>=5.10.4",
    "numpy>=2.4.0",
    "plotly>=6.5.1",
    "pylatexenc>=2.10",
    "qiskit>=2.2.3",
    "qiskit-aer>=0.17.2",
    "seaborn>=0.13.2",
    "sympy>=1.14.0",
]
```

## 🔧 Como Usar

### Executar Jupyter Notebooks

```bash
# Da raiz do projeto
jupyter notebook notebooks/
```

### Importar Módulos em Notebooks

```python
# Adicionar caminho do src/ aos imports
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.getcwd(), '..', 'src')))

# Importar funções
from quantum_viz import plot_qsphere_interactive
```

### Usar Visualização Interativa

```python
from qiskit.quantum_info import Statevector
from quantum_viz import plot_qsphere_interactive

# Criar estado
state = Statevector([1/np.sqrt(2), 0, 0, 1/np.sqrt(2)])

# Visualizar
fig = plot_qsphere_interactive(state)
```

## 📝 Convenções

- **Notebooks**: Devem estar em `notebooks/` e usar `.ipynb` ou `.md`
- **Módulos**: Devem estar em `src/` com nomes descritivos
- **Imports**: Sempre usar caminhos relativos de `../src/`
- **Documentação**: Docstrings completas em todas as funções públicas
- **Dependências**: Declarar em `pyproject.toml`

## 🔄 Migração Realizada

1. **Criadas pastas**:
   - `notebooks/` - Todos os notebooks educacionais
   - `src/` - Módulos Python reutilizáveis

2. **Arquivos movidos/criados**:
   - `00a-math.ipynb` → `notebooks/00a-math.ipynb` (reorganização)
   - `00b-phases.ipynb` → `notebooks/00b-phases.ipynb` (novo - fases quânticas)
   - `01-intro.ipynb` → `notebooks/01-intro.ipynb`
   - `02-teletransport.ipynb` → `notebooks/02-teletransport.ipynb`
   - `02-teletransport.qasm` → `notebooks/02-teletransport.qasm`
   - `03-mais-sobre-Hadamard.md` → `notebooks/03-mais-sobre-Hadamard.md`
   - `04-Hadamard-experiment.ipynb` → `notebooks/04-Hadamard-experiment.ipynb`
   - `05-interference.ipynb` → `notebooks/05-interference.ipynb`
   - `05-kickback.qasm` → `notebooks/05-kickback.qasm`
   - `05-deutsch-jozsa.qasm` → `notebooks/05-deutsch-jozsa.qasm`
   - `06-grover.ipynb` → `notebooks/06-grover.ipynb` (novo - Algoritmo de Grover)
   - `06-grover.qasm` → `notebooks/06-grover.qasm` (novo - implementação OpenQASM)
   - `07-quantum-fourier-transform.ipynb` → `notebooks/07-quantum-fourier-transform.ipynb` (novo - QFT e QPE)
   - `20-quantum-machine-learning.ipynb` → `notebooks/20-quantum-machine-learning.ipynb` (novo - QML e VQC)
   - `20-vqc-classifier.qasm` → `notebooks/20-vqc-classifier.qasm` (novo - VQC completo OpenQASM)
   - `20-vqc-tutorial.qasm` → `notebooks/20-vqc-tutorial.qasm` (novo - componentes VQC separados)
   - `quantum_viz.py` → `src/quantum_viz.py`

3. **Atualizações**:
   - Imports em `02-teletransport.ipynb` atualizados
   - `README.md` com nova estrutura documentada
   - `src/__init__.py` criado para tornar src/ um pacote Python
   - `src/README.md` criado com documentação do módulo
   - `00b-phases.ipynb` expandido com:
     * Porta CP (Controlled-Phase) com implementações NumPy e Qiskit
     * Visualizações detalhadas com Bloch Spheres para sistemas multi-qubit
     * Explicação pedagógica sobre convenção little-endian e np.kron
     * Comparação numérica entre NumPy e Qiskit
     * Experimentos interativos com estados customizados

## 🎯 Próximos Passos

- [ ] Revisar outros notebooks para atualizar imports se necessário
- [ ] Adicionar mais funções de visualização em `quantum_viz.py`
- [ ] Criar testes unitários para módulos em `src/`
- [ ] Adicionar CI/CD para validação automática

---

**Data da reorganização**: 08 de janeiro de 2026  
**Versão**: 0.1.0
