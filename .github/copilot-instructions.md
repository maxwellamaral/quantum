# 🚀 Instruções para Agentes de IA - Projeto Quantum Computing

## 📐 Arquitetura e Estrutura

- **Projeto educacional** de computação quântica em **português (pt-BR)** usando Qiskit (IBM)
- Organização modular: `notebooks/` (conteúdo educacional interativo) + `src/` (código reutilizável) + `assets/` (recursos)
- Target: Python ≥3.14 com dependências no `pyproject.toml` (Qiskit, Plotly, NumPy, Matplotlib, etc.)
- **Dual-format**: Jupyter notebooks (.ipynb) + OpenQASM (.qasm) para execução no IBM Quantum Composer

## 🔧 Padrões Técnicos Críticos

### Imports em Notebooks
Todos os notebooks que importam de `src/` devem usar este padrão (veja [02-teletransport.ipynb](../notebooks/02-teletransport.ipynb#L408-L410)):

```python
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.getcwd(), '..', 'src')))
from quantum_viz import plot_qsphere_interactive
```

### Visualizações Quânticas
- Módulo central: [src/quantum_viz.py](../src/quantum_viz.py)
- Função principal: `plot_qsphere_interactive(statevector, auto_open=True, output_file='qsphere_interativa.html')`
- Usa **Plotly** para Q-Sphere 3D interativa com:
  - Fibonacci Sphere algorithm para distribuição uniforme de estados
  - Setas coloridas (magenta = fase positiva, ciano = negativa)
  - Sistema de coordenadas cartesianas 3D (X, Y, Z)
  - Labels automáticos para probabilidades > 15%
  - Exportação HTML automática para visualização offline

### Estrutura de Circuitos Quânticos
- Estados quânticos: `Statevector` (Qiskit)
- Visualizações padrão: Bloch Sphere, Q-Sphere, State City
- Portas fundamentais: Hadamard (H), CNOT, X, Z, medições
- Notação: Dirac (|0⟩, |1⟩, |ψ⟩)

## 📚 Sequência Pedagógica dos Notebooks

Ordem didática progressiva (cada notebook constrói sobre o anterior):

1. **00-math.ipynb**: Fundamentos (álgebra linear, complexos, produto tensorial, Dirac)
2. **01-intro.ipynb**: Primeiros circuitos (portas básicas, Bell states, Bloch sphere)
3. **02-teletransport.ipynb**: Protocolo de teletransporte quântico completo
   - Acompanhado de **02-teletransport.qasm** (ready para IBM Quantum Platform)
4. **03-mais-sobre-Hadamard.md**: Interpretação física (beam splitters, Mach-Zehnder)
5. **04-Hadamard-experiment.ipynb**: Experimento de interferência
6. **05-interference.ipynb**: Análise profunda de interferência quântica

## 💻 Workflows de Desenvolvimento

### Executar Notebooks
```bash
# Da raiz do projeto
jupyter notebook notebooks/
```

### Adicionar Novas Visualizações
1. Adicionar função em `src/quantum_viz.py` com docstring completa (Google style)
2. Documentar em `src/README.md`
3. Usar nos notebooks com import padrão (veja acima)
4. Testar exportação HTML (`auto_open=False` para CI)

### Criar Circuitos QASM
- Formato: **OpenQASM 2.0** com `include "qelib1.inc"`
- Documentar cada etapa com comentários `// ===`
- Incluir instruções de uso no IBM Quantum Composer
- Nota importante: Hardware real terá ruído/decoerência (< 100% sucesso)

## 🌍 Convenções de Idioma e Documentação

- **Todo código e documentação em português (pt-BR)**
- Emojis educacionais (🚀, 🎯, ✅) para facilitar navegação
- Markdown com KaTeX para equações matemáticas
- Explicações físicas conectam código ↔ matemática ↔ experimentos reais
- Referências a experimentos históricos e Prêmio Nobel (ex: interferometria)

## 🎯 Objetivos ao Modificar Código

- **Manter didática progressiva**: Code deve ser auto-explicativo para aprendizes
- **Visualizações first**: Sempre que possível, criar gráficos interativos
- **Dual-platform**: Código deve funcionar em Jupyter E no IBM Quantum Platform
- **Rigor matemático**: Equações LaTeX alinhadas com implementação
- **Referências físicas**: Conectar abstração quântica com hardware real (fótons, beam splitters)
- **Documentação completa**: Docstrings, comentários e README atualizados

## ⚠️ Armadilhas Comuns

- **NÃO** use `pip install qiskit` em notebooks (já em pyproject.toml)
- **NÃO** modifique sys.path globalmente (apenas em notebooks que precisam)
- Labels de estados devem ser condicionais (só se `prob > 0.15` em Q-Sphere)
- OpenQASM 2.0 ≠ OpenQASM 3.0 (IBM Composer requer 2.0)
- HTML exports devem ser salvos em `notebooks/` (não root)

## 🔗 Arquivos-Chave para Referência

- Padrão de visualização: [src/quantum_viz.py](../src/quantum_viz.py)
- Exemplo completo de protocolo: [notebooks/02-teletransport.ipynb](../notebooks/02-teletransport.ipynb)
- Template QASM: [notebooks/02-teletransport.qasm](../notebooks/02-teletransport.qasm)
- Estrutura detalhada: [STRUCTURE.md](../STRUCTURE.md)
