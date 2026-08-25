# 🚀 Quantum Computing com Qiskit

<div align="center">

![Python](https://img.shields.io/badge/python-3.14+-blue.svg)
![Qiskit](https://img.shields.io/badge/qiskit-2.x-green.svg)
![License](https://img.shields.io/badge/license-MIT-orange.svg)
![Jupyter](https://img.shields.io/badge/jupyter-notebooks-F37626.svg)
![Status](https://img.shields.io/badge/status-active-success.svg)

**Curso de extensão — Fundamentos de Computação Quântica para Engenharia de Software**
Material educacional interativo utilizando o framework Qiskit da IBM

[🎓 Começar pelo CURSO.md](CURSO.md) • [Notebooks](notebooks/) • [Simuladores](assets/simuladores/) • [Referência técnica](docs/referencia-tecnica.md)

</div>

---

Este repositório é a porta de entrada do **curso de extensão "Fundamentos de Computação Quântica"**, voltado para estudantes de graduação em Engenharia de Software (pré-requisito: Álgebra Linear). Todo o percurso — 17 unidades, do corpo negro ao QML, com laboratórios e avaliações N1/N2/N3 — está organizado na trilha guiada:

## 🎓 ➡️ [`CURSO.md`](CURSO.md) — Trilha de autoaprendizagem

Siga as unidades na ordem. Cada uma indica o notebook, o simulador interativo (quando houver), o nível de dificuldade e o entregável.

## 📂 Mapa rápido

| Caminho | O que há lá |
|---|---|
| [`CURSO.md`](CURSO.md) | 🎓 Trilha guiada completa do curso (comece aqui) |
| [`notebooks/`](notebooks/) | 📚 Notebooks Jupyter executáveis + arquivos `.qasm` para o IBM Quantum Composer |
| [`assets/simuladores/`](assets/simuladores/) | 🔮 Simuladores HTML interativos (corpo negro, dupla fenda, superposição, entrelaçamento, teletransporte) |
| [`docs/historia/`](docs/historia/) | 📜 Mini-curso histórico: da radiação térmica aos qubits (Unidades 2–3) |
| [`src/`](src/) | 🧰 Módulo `quantum_viz.py` com visualizações interativas reutilizáveis |
| [`docs/referencia-tecnica.md`](docs/referencia-tecnica.md) | 📖 Descrição técnica detalhada de cada notebook, instalação, tecnologias, conceitos, referências bibliográficas e citação |

## ⚙️ Início rápido

```bash
git clone git@github.com:maxwellamaral/quantum.git
cd quantum
uv sync          # cria o ambiente com todas as dependências
jupyter lab      # abra o notebook da sua unidade atual em CURSO.md
```

Os arquivos `.qasm` podem ser importados no [IBM Quantum Composer](https://quantum.ibm.com/composer) para execução em simulador ou hardware quântico real.

## 🤝 Contribuindo

Contribuições são bem-vindas! Abra uma issue descrevendo a melhoria proposta ou envie um pull request. Veja também as notas de contribuição na [referência técnica](docs/referencia-tecnica.md).

## 📄 Licença

Distribuído sob a licença MIT. Veja [LICENSE](LICENSE).

## 📝 Como citar

Veja as instruções completas na seção [Como Citar](docs/referencia-tecnica.md) da referência técnica.
