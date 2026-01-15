OPENQASM 2.0;
include "qelib1.inc";

// ============================================================================
// Classificador Variacional Quântico (VQC) Simples
// ============================================================================
// Este circuito representa a estrutura de um VQC para classificação binária
// com 2 features de entrada e 2 qubits.
//
// Estrutura:
// 1. Feature Map: Codifica dados clássicos em estados quânticos
// 2. Ansatz: Circuito parametrizado (pesos treináveis)
// 3. Medição: Extrai probabilidades de classificação
//
// NOTA: Os parâmetros (theta) aqui são FIXOS. Em um VQC real, eles seriam
// otimizados através de um loop de treinamento clássico.
// ============================================================================

// Declarações
qreg q[2];           // 2 qubits para processar 2 features
creg c[2];           // 2 bits clássicos para medições

// ============================================================================
// PARTE 1: FEATURE MAP (Codificação dos Dados)
// ============================================================================
// Aqui codificamos os dados de entrada [x0, x1] como rotações dos qubits
// Exemplo: x0 = 1.2, x1 = 2.3 (valores normalizados entre 0 e π)

// Preparação: Criar superposição inicial
h q[0];
h q[1];

// Codificação dos dados como rotações RZ
// Em um sistema real, esses valores viriam das features de entrada
rz(1.2) q[0];        // Feature 0: x0 = 1.2
rz(2.3) q[1];        // Feature 1: x1 = 2.3

// Criar emaranhamento entre features (interação ZZ)
cx q[0], q[1];
rz(2.76) q[1];       // 1.2 * 2.3 = 2.76 (produto das features)
cx q[0], q[1];

// Mais rotações para aumentar expressividade
rx(1.2) q[0];
rx(2.3) q[1];

// ============================================================================
// PARTE 2: ANSATZ (Modelo Treinável)
// ============================================================================
// Estes parâmetros theta seriam otimizados durante o treinamento
// Aqui estão fixos como exemplo após "treinamento fictício"

// Camada 1: Rotações RY (parâmetros treináveis)
ry(0.785) q[0];      // theta[0] = π/4 (otimizado)
ry(1.571) q[1];      // theta[1] = π/2 (otimizado)

// Emaranhamento
cx q[0], q[1];

// Camada 2: Mais rotações
ry(0.524) q[0];      // theta[2] = π/6 (otimizado)
ry(2.094) q[1];      // theta[3] = 2π/3 (otimizado)

// Emaranhamento final
cx q[1], q[0];

// Camada 3: Rotações finais
ry(1.047) q[0];      // theta[4] = π/3 (otimizado)
ry(0.262) q[1];      // theta[5] = π/12 (otimizado)

// ============================================================================
// PARTE 3: MEDIÇÃO
// ============================================================================
// Medimos os qubits para obter as probabilidades de classificação
// A probabilidade de obter |00⟩, |01⟩, |10⟩, |11⟩ determina a classe

measure q[0] -> c[0];
measure q[1] -> c[1];

// ============================================================================
// INTERPRETAÇÃO DOS RESULTADOS:
// ============================================================================
// Após executar este circuito múltiplas vezes (shots):
// - Contar quantas vezes obtemos c[0] = 0 ou 1
// - Se c[0] = 0 aparecer mais frequentemente → Classe 0
// - Se c[0] = 1 aparecer mais frequentemente → Classe 1
//
// Em um VQC real:
// 1. Inicializar θ aleatoriamente
// 2. Para cada exemplo de treino:
//    a. Codificar x no Feature Map
//    b. Aplicar Ansatz com θ atual
//    c. Medir e calcular perda
// 3. Otimizar θ para minimizar a perda
// 4. Repetir até convergência
// ============================================================================
