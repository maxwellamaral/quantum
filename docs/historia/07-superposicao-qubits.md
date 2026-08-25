---
updated: 2026-08-15T20:56
---
# Módulo 7 — Superposição, interferência e qubits

Um qubit pode ser escrito como:

$$|\psi\rangle=\alpha|0\rangle+\beta|1\rangle,$$

com $|\alpha|^2+|\beta|^2=1$.

Na medição, obtemos $0$ com probabilidade $|\alpha|^2$ e $1$ com probabilidade $|\beta|^2$. Antes dela, as amplitudes podem ser transformadas e interferir.

## Correspondência didática

| Dupla fenda              | Qubit                          |
| ------------------------ | ------------------------------ |
| Amplitude pela fenda 1   | Amplitude de $\|0\rangle$      |
| Amplitude pela fenda 2   | Amplitude de $\|1\rangle$      |
| Diferença entre caminhos | Fase relativa                  |
| Franjas                  | Interferência entre amplitudes |
| Impacto pontual          | Resultado clássico da medição  |

Não existe necessariamente uma dupla fenda dentro do computador. Ela é uma analogia experimental para a estrutura matemática usada pelo qubit.

## Porta Hadamard

$$H|0\rangle=\frac{|0\rangle+|1\rangle}{\sqrt2}.$$

Aplicar Hadamard novamente faz as amplitudes interferirem:

$$H\frac{|0\rangle+|1\rangle}{\sqrt2}=|0\rangle.$$

Isso mostra que superposição não é apenas “uma moeda ainda não observada”. A fase permite interferência controlada. Algoritmos quânticos combinam portas para reforçar amplitudes associadas a respostas úteis e reduzir outras.

## Ponte para os próximos temas

Depois deste módulo, a sequência recomendada é:

1. esfera de Bloch;
2. portas $X$, $Z$, $H$ e rotações;
3. medição e repetição de circuitos;
4. sistemas de dois qubits;
5. emaranhamento;
6. primeiro algoritmo quântico simples.

