# 🎓 Trilha de Autoaprendizagem — Fundamentos de Computação Quântica

> Curso de extensão para graduação em **Engenharia de Software** · Prof. Me. Maxwell Anderson Ielpo do Amaral
> Pré-requisito: **Álgebra Linear** (vetores, matrizes, produto interno e tensorial)
> Carga sugerida: 67h (40h teóricas + 27h práticas) · Avaliação: N1 + N2 + N3

Este repositório é o material completo do curso. Siga as unidades **na ordem** — cada uma constrói sobre a anterior. Notebooks executáveis ficam em [`notebooks/`](notebooks/), visualizações interativas em [`assets/simuladores/`](assets/simuladores/).

---

## 🗺️ Mapa da trilha

| # | Unidade | Material | Nível | Entregável |
|---|---------|----------|-------|------------|
| 1 | Panorama: por que computação quântica na Eng. de Software? | [README](README.md) · [MOC de pesquisa](https://github.com/maxwellamaral/ai-vault) | 🟢 | Equipe definida |
| 2 | Da física clássica à quântica: corpo negro, fotoelétrico, Bohr | Aulas 01–04 do curso histórico¹ | 🟢 | Leitura dirigida |
| 3 | Ondas de matéria, função de onda e dupla fenda | Aulas 05–06¹ + simulador de fenda dupla | 🟢 | Leitura dirigida |
| 4 | O qubit: notação de Dirac, superposição, esfera de Bloch | [`00a-math.ipynb`](notebooks/00a-math.ipynb) | 🟢 | **Lab 1** |
| 5 | Fases quânticas e portas de rotação (Z/S/T, RX/RY/RZ, CP) | [`00b-phases.ipynb`](notebooks/00b-phases.ipynb) | 🟡 | **Lab 1** (cont.) |
| 6 | Primeiros circuitos, estados de Bell e emaranhamento | [`01-intro.ipynb`](notebooks/01-intro.ipynb) + simulador de entrelaçamento | 🟢 | **Lab 2** |
| 7 | Teletransporte quântico | [`02-teletransport.ipynb`](notebooks/02-teletransport.ipynb) + [QASM](notebooks/02-teletransport.qasm) + simulador | 🟡 | **Lab 3** |
| 8 | Hadamard no mundo físico: beam splitters e Mach-Zehnder | [`03-mais-sobre-Hadamard.md`](notebooks/03-mais-sobre-Hadamard.md) · [`04-Hadamard-experiment.ipynb`](notebooks/04-Hadamard-experiment.ipynb) | 🟡 | Relatório interferômetro |
| 9 | Interferência como algoritmo: phase kickback e Deutsch-Jozsa | [`05-interference.ipynb`](notebooks/05-interference.ipynb) + QASMs | 🔴 | 🔵 **N1** |
| 10 | Busca quântica: Grover e amplificação de amplitude | [`06-grover.ipynb`](notebooks/06-grover.ipynb) + [QASM](notebooks/06-grover.qasm) | 🔴 | Lab: oráculo próprio |
| 11 | QFT e estimação de fase: o caminho para Shor | [`07-quantum-fourier-transform.ipynb`](notebooks/07-quantum-fourier-transform.ipynb) | 🔴 | Lab QFT/QPE |
| 12 | Hardware real: ruído, decoerência e limitações NISQ | Todos os `.qasm` no [IBM Quantum Platform](https://quantum.ibm.com/composer) | 🟡 | Comparação sim × hardware |
| 13 | Quantum Machine Learning: VQC (feature map → ansatz → medição) | [`20-quantum-machine-learning.ipynb`](notebooks/20-quantum-machine-learning.ipynb) | 🔴 | Lab: classificador próprio |
| 14 | Compilação quântica e topologia do hardware | Transpiler do Qiskit + leituras² | 🟡 | Análise de transpilação |
| 15 | Impacto na Engenharia de Software: criptografia pós-quântica e qualidade | Leituras² + pesquisa orientada | 🟡 | Ensaio crítico individual |
| 16–17 | Projeto final: desenvolvimento, documentação e apresentação | — | — | 🔵 **N2/N3** |

> ¹ *Aulas do mini-curso histórico "da radiação térmica aos qubits" (`curso chatgpt/`), a serem migradas para `docs/historia/`.*
> ² *Notas de literatura do vault ai-vault: "Quantum Computing - Vision and Challenges" (arXiv 2403.02240) e notas permanentes sobre NISQ, compilação/topologia e vantagem quântica.*

---

## 🧪 Laboratórios

Cada lab pede modificações nos notebooks com verificação automática leve:

- **Lab 1 (Unid. 4–5):** medir qubits em estados customizados; prever probabilidades com a regra de Born antes de rodar; criar estados com fases específicas na esfera de Bloch.
- **Lab 2 (Unid. 6):** gerar os 4 estados de Bell e verificar correlações via histograma.
- **Lab 3 (Unid. 7):** teletransportar um estado escolhido por você e provar fidelidade com `Statevector` + contagens.
- **Lab Grover (Unid. 10):** construir oráculo para um estado-alvo diferente de |11⟩.
- **Lab VQC (Unid. 13):** trocar o dataset e comparar fronteiras de decisão VQC × SVM clássico.

## 🔵 Avaliação (processual, em equipes)

| Etapa | Descrição | Pontos |
|-------|-----------|--------|
| **N1** | Relatório teórico-experimental das Unidades 2–8 (física + matemática + labs 1–3) | 100 |
| **N2** | Projeto em equipe: algoritmo quântico aplicado a problema próprio, notebook estendido + documentação | 100 |
| **N3** | Defesa pública + execução em hardware IBM real com análise de ruído/decoerência | 100 |

Ms = (N1+N2+N3)/3 · Aprovação com Ms ≥ 70.

## ⚙️ Como executar

```bash
git clone git@github.com:maxwellamaral/quantum.git
cd quantum
uv sync          # cria .venv com todas as dependências
jupyter lab      # abra os notebooks da unidade atual
```

Os arquivos `.qasm` podem ser importados direto no [IBM Quantum Composer](https://quantum.ibm.com/composer) para execução em simulador ou hardware real.

## 📚 Bibliografia

- NIELSEN, M.; CHUANG, I. *Quantum Computation and Quantum Information*. Cambridge, 2010.
- HIDARY, Jack D. *Quantum Computing: An Applied Approach*. Springer, 2021.
- SUTOR, Robert. *Dancing with Qubits*. Packt, 2019.
- GYONGYOSI, L.; IMRE, S. et al. — artigos de apoio indicados por unidade.
- GILL et al. *Quantum Computing: Vision and Challenges* (arXiv:2403.02240).
