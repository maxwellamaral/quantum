# 🧰 Módulos de Visualização Quântica

Este diretório contém módulos Python reutilizáveis para visualização e análise de estados quânticos.

## 📦 Módulos Disponíveis

### `quantum_viz.py`

Módulo de visualizações interativas 3D para estados quânticos usando Plotly.

#### Funções Principais

##### `plot_qsphere_interactive(statevector, auto_open=True, output_file='qsphere_interativa.html')`

Cria uma Q-Sphere 3D completa e interativa.

**Parâmetros:**
- `statevector` (qiskit.quantum_info.Statevector): O vetor de estado quântico a visualizar
- `auto_open` (bool, opcional): Se True, abre automaticamente no navegador (default: True)
- `output_file` (str, opcional): Nome do arquivo HTML de saída (default: 'qsphere_interativa.html')

**Retorna:**
- `plotly.graph_objects.Figure`: A figura Plotly criada

**Características:**
- ✅ Setas coloridas da origem para cada estado (magenta = fase +, ciano = fase -)
- ✅ Wireframe esférico para referência espacial
- ✅ Sistema de coordenadas cartesianas 3D (X, Y, Z) com labels
- ✅ Labels automáticos para estados com probabilidade > 15%
- ✅ Marcadores proporcionais à probabilidade
- ✅ Informações detalhadas no hover (amplitude, probabilidade, fase)
- ✅ Algoritmo Fibonacci Sphere para distribuição uniforme
- ✅ Exportação HTML automática

**Controles Interativos:**
- 🖱️ Arrastar: Girar a esfera 360°
- 🔍 Scroll: Zoom in/out
- 🖱️ Botão direito + arrastar: Mover (pan)
- 🎯 Hover: Ver detalhes do estado

**Exemplo de Uso:**

```python
# Importar módulo (a partir da raiz do projeto ou de notebooks/)
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.getcwd(), '..', 'src')))
from quantum_viz import plot_qsphere_interactive

from qiskit.quantum_info import Statevector
import numpy as np

# Criar um estado de Bell
state = Statevector([1/np.sqrt(2), 0, 0, 1/np.sqrt(2)])

# Visualizar (abre automaticamente no navegador)
fig = plot_qsphere_interactive(state)

# Ou salvar sem abrir automaticamente
fig = plot_qsphere_interactive(state, auto_open=False, output_file='meu_estado.html')
```

## 🔧 Desenvolvimento

### Adicionar Novas Funções

Para adicionar novas funções de visualização:

1. Crie a função em `quantum_viz.py` com docstring completa
2. Adicione o nome da função em `__init__.py` no `__all__`
3. Documente aqui no README

### Estrutura de Importação

Os notebooks devem importar os módulos desta forma:

```python
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.getcwd(), '..', 'src')))
from quantum_viz import plot_qsphere_interactive
```

## 📋 Dependências

Todas as dependências estão definidas em `pyproject.toml`:

- `plotly>=6.5.1` - Visualizações 3D interativas
- `numpy>=2.4.0` - Computação numérica
- `qiskit>=2.2.3` - Framework de computação quântica

## 📝 Convenções

- Todas as funções devem ter docstrings completas no formato NumPy/Google
- Parâmetros opcionais devem ter valores padrão razoáveis
- Retornar objetos Plotly Figure para permitir customização adicional
- Incluir mensagens de feedback ao usuário (print)
- Usar type hints quando possível
