// Implementação do Algoritmo de Fase Kickback em QASM

OPENQASM 2.0;
include 'qelib1.inc';

qreg q[2];  // Qubits quânticos
creg c[1];  // Bit clássico para armazenar o resultado da medição

//1. Preparação do estado inicial

h q[0];     // Aplica uma porta Hadamard em qubit 0
x q[1];     // Aplica uma porta X (NOT) em qubit 1
h q[1];     // Aplica uma porta Hadamard em qubit 1

//2. O kickback
cx q[0], q[1]; // Aplica uma porta CNOT com q[0] como controle e q[1] como alvo

//3. Verificação da interferência
h q[0];     // Aplica outra porta Hadamard em qubit 0
measure q[0] -> c[0]; // Mede o qubit 0 e armazena o resultado em c[0]

// Após a execução deste circuito, o valor medido em c[0] indicará
// a presença ou ausência de interferência quântica.
// Alice mede seus qubits q[0] e q[1] e armazena os resultados em c[0] e c[1]