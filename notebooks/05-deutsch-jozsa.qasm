OPENQASM 2.0;
include 'qelib1.inc';

// ============================================
// ALGORITMO DE DEUTSCH-JOZSA
// ============================================
// Este circuito implementa o Algoritmo de Deutsch-Jozsa para n=3 qubits
// de entrada, conforme demonstrado no notebook 05-interference.ipynb
//
// O algoritmo determina se uma função é CONSTANTE ou BALANCEADA
// com apenas 1 consulta ao oráculo (vs. até 5 consultas no caso clássico)

qreg q[4];  // 3 qubits de entrada + 1 qubit auxiliar
creg c[3];  // 3 bits clássicos para armazenar os resultados

// ============================================
// PASSO 1: Inicialização
// ============================================
// Colocar qubits de entrada (q[0], q[1], q[2]) em superposição |+⟩
h q[0];
h q[1];
h q[2];

// Preparar qubit auxiliar (q[3]) no estado |−⟩ para phase kickback
x q[3];
h q[3];

barrier q;  // Barreira visual para separar etapas

// ============================================
// PASSO 2: Aplicação do Oráculo BALANCEADO
// ============================================
// Este oráculo implementa uma função balanceada f(x) = x₀ ⊕ x₁ ⊕ x₂
// que retorna 0 para metade das entradas e 1 para a outra metade
//
// Para implementar um oráculo CONSTANTE, comente as 3 linhas cx abaixo
// e descomente uma das seguintes opções:
//   - Constante 0: não faça nada (circuito identidade)
//   - Constante 1: x q[3];

cx q[0], q[3];  // CNOT do qubit 0 para o auxiliar
cx q[1], q[3];  // CNOT do qubit 1 para o auxiliar
cx q[2], q[3];  // CNOT do qubit 2 para o auxiliar

barrier q;  // Barreira visual

// ============================================
// PASSO 3: Interferência
// ============================================
// Aplicar Hadamard novamente nos qubits de entrada
// Isso converte diferenças de FASE em diferenças de AMPLITUDE
h q[0];
h q[1];
h q[2];

// ============================================
// PASSO 4: Medição
// ============================================
// Medir apenas os qubits de entrada (não precisamos medir o auxiliar)
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

// ============================================
// INTERPRETAÇÃO DO RESULTADO:
// ============================================
// Se medir c = "000" → A função é CONSTANTE
// Se medir qualquer outro valor → A função é BALANCEADA
//
// Neste circuito (oráculo balanceado), esperamos NUNCA medir "000"
// devido à interferência destrutiva!
//
// VANTAGEM QUÂNTICA:
//   • Clássico: até 5 consultas (2^(3-1) + 1)
//   • Quântico: 1 consulta
//   • Speedup: 5x
