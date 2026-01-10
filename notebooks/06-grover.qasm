OPENQASM 3.0;
include "stdgates.inc";

// Algoritmo de Grover: Busca Quântica
// Objetivo: Encontrar o estado |11> em um espaço de 2 qubits

// Declaração de qubits e bits clássicos
qubit[2] q;
bit[2] c;

// ========================================
// 1. INICIALIZAÇÃO: Superposição Uniforme
// ========================================
// Aplicar Hadamard em ambos os qubits
// Cria: 25% |00>, 25% |01>, 25% |10>, 25% |11>
h q[0];
h q[1];

// ========================================
// 2. ORÁCULO: Marca o estado |11>
// ========================================
// A porta CZ inverte a fase APENAS do estado |11>
// |00> -> |00>
// |01> -> |01>
// |10> -> |10>
// |11> -> -|11>  (marcado com fase negativa)
cz q[0], q[1];

// ========================================
// 3. DIFUSOR DE GROVER: Amplificação
// ========================================
// Inverte as amplitudes em torno da média
// Isso amplifica o estado marcado e suprime os outros

// 3.1. Aplicar Hadamard em todos
h q[0];
h q[1];

// 3.2. Aplicar X (NOT) em todos
x q[0];
x q[1];

// 3.3. Aplicar CZ (marca o estado |11> no espaço invertido)
cz q[0], q[1];

// 3.4. Desfazer X
x q[0];
x q[1];

// 3.5. Desfazer Hadamard
h q[0];
h q[1];

// ========================================
// 4. MEDIÇÃO
// ========================================
// O resultado deve ser 100% (ou muito próximo) em '11'
c[0] = measure q[0];
c[1] = measure q[1];
