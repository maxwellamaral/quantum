# 🚀 Quantum Computing com Qiskit

Projeto educacional de computação quântica utilizando o framework Qiskit da IBM.

## 📚 Sobre o Projeto

Este repositório contém notebooks Jupyter interativos que exploram conceitos fundamentais de computação quântica, desde a matemática básica até protocolos quânticos complexos como o teletransporte quântico.

## 🎯 Objetivos

- Demonstrar conceitos de mecânica quântica de forma visual e interativa
- Implementar algoritmos e protocolos quânticos usando Qiskit
- Fornecer explicações matemáticas detalhadas junto com código executável
- Servir como material didático para quem está aprendendo computação quântica

## 📖 Notebooks Disponíveis

### 00-math.ipynb
Fundamentos matemáticos para computação quântica:
- Álgebra linear
- Números complexos
- Produto tensorial
- Notação de Dirac

### 01.intro.ipynb
Introdução ao Qiskit:
- Configuração e primeiros passos
- Criação de circuitos quânticos
- Portas quânticas básicas (H, X, CNOT)
- Simulação e visualização
- Estados de Bell e emaranhamento quântico
- Visualizações de estados quânticos
- Visualização na Esfera de Bloch

### 02a-teletransport.ipynb / 02b-teletransport.ipynb
Protocolo de Teletransporte Quântico:
- Implementação completa do protocolo de Bennett et al.
- Criação de estados emaranhados (pares de Bell)
- Medição de Bell
- Correções quânticas condicionais
- Visualizações em Bloch sphere, Q-Sphere e State City
- Cálculos matemáticos detalhados de cada etapa

## 🛠️ Tecnologias Utilizadas

- **Python 3.14+**
- **Qiskit 2.x** - Framework de computação quântica da IBM
- **Qiskit Aer** - Simuladores de alta performance
- **Matplotlib** - Visualizações de circuitos e estados quânticos
- **NumPy** - Computação numérica
- **SymPy** - Matemática simbólica
- **Seaborn** - Visualizações estatísticas
- **Jupyter** - Ambiente de notebook interativo

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

4. Inicie o Jupyter:
```bash
jupyter notebook
```

## 📊 Recursos Visuais

Os notebooks incluem múltiplas formas de visualização:

- **Circuitos Quânticos**: Diagramas de circuitos estilo IBM
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

### Protocolos
- Teletransporte Quântico (Bennett et al., 1993)
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

- [Qiskit Documentation](https://qiskit.org/documentation/)
- Bennett, C. H., et al. "Teleporting an unknown quantum state via dual classical and Einstein-Podolsky-Rosen channels." Physical Review Letters 70.13 (1993): 1895.
- Nielsen, M. A., & Chuang, I. L. (2010). Quantum Computation and Quantum Information.

## 📄 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

**Importante**: Ao utilizar este material, por favor, referencie a autoria conforme a seção de citação abaixo.

## 📝 Como Citar

Se você utilizar este material em seu trabalho acadêmico ou educacional, por favor cite:

```bibtex
@misc{amaral2026quantum,
  author       = {Maxwell Anderson Ielpo Amaral},
  title        = {Quantum Computing com Qiskit: Material Educacional de Computação Quântica},
  year         = {2026},
  howpublished = {\url{https://github.com/maxwellamaral/quantum}},
  note         = {Projeto educacional com notebooks interativos sobre computação quântica usando Qiskit}
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

---

**⚛️ Explorando o fascinante mundo da computação quântica!**
