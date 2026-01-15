OPENQASM 2.0;
include "qelib1.inc";

// ============================================================================
// Tutorial: Componentes de um VQC Separados
// ============================================================================
// Este arquivo demonstra cada componente do VQC separadamente
// para fins educacionais. Descomente as seções que quiser testar.
// ============================================================================

qreg q[2];
creg c[2];

// ============================================================================
// EXEMPLO 1: APENAS FEATURE MAP (Codificação)
// ============================================================================
// Descomente esta seção para testar apenas a codificação dos dados

/*
// Dados de entrada: x0 = π/4, x1 = π/2
h q[0];
h q[1];

// Codificação ZZ Feature Map
rz(0.785) q[0];      // x0 = π/4
rz(1.571) q[1];      // x1 = π/2

// Emaranhamento ZZ
cx q[0], q[1];
rz(1.234) q[1];      // x0 * x1
cx q[0], q[1];

measure q -> c;
*/

// ============================================================================
// EXEMPLO 2: APENAS ANSATZ (Modelo sem dados)
// ============================================================================
// Descomente para ver apenas a estrutura do modelo treinável

/*
// Inicialização em |00⟩
ry(1.0) q[0];        // θ0
ry(0.5) q[1];        // θ1
cx q[0], q[1];
ry(1.5) q[0];        // θ2
ry(0.3) q[1];        // θ3

measure q -> c;
*/

// ============================================================================
// EXEMPLO 3: VQC COMPLETO (Feature Map + Ansatz)
// ============================================================================
// Este é o circuito completo para uma predição

// ETAPA 1: Feature Map (entrada x = [0.5, 1.2])
h q[0];
h q[1];
rz(0.5) q[0];
rz(1.2) q[1];
cx q[0], q[1];
rz(0.6) q[1];        // 0.5 * 1.2
cx q[0], q[1];

// ETAPA 2: Ansatz (parâmetros "treinados")
ry(0.8) q[0];        // θ0 = 0.8
ry(1.3) q[1];        // θ1 = 1.3
cx q[0], q[1];
ry(0.4) q[0];        // θ2 = 0.4
ry(2.1) q[1];        // θ3 = 2.1
cx q[1], q[0];
ry(1.0) q[0];        // θ4 = 1.0
ry(0.2) q[1];        // θ5 = 0.2

// ETAPA 3: Medição
measure q -> c;

// ============================================================================
// COMO USAR ESTE CIRCUITO:
// ============================================================================
// 1. No VS Code, use a extensão Quantum Development Kit
// 2. Ou use Qiskit:
//    from qiskit import QuantumCircuit
//    circuit = QuantumCircuit.from_qasm_file('vqc-tutorial.qasm')
//    circuit.draw()
//
// 3. Execute com um simulador:
//    from qiskit_aer import AerSimulator
//    simulator = AerSimulator()
//    job = simulator.run(circuit, shots=1000)
//    counts = job.result().get_counts()
//    print(counts)
//
// 4. Interprete os resultados:
//    - Se counts['00'] > counts['11']: Predição = Classe 0
//    - Se counts['11'] > counts['00']: Predição = Classe 1
// ============================================================================
