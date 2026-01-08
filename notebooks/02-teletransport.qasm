// ============================================================================
// 🚀 PROTOCOLO DE TELETRANSPORTE QUÂNTICO
// ============================================================================
// Este código implementa o protocolo de teletransporte quântico, permitindo
// transferir o estado de um qubit de Alice (q[0]) para Bob (q[2]) usando
// emaranhamento quântico e comunicação clássica.
//
// 💻 USO NO IBM QUANTUM COMPOSER:
// Este arquivo QASM pode ser importado diretamente no IBM Quantum Composer
// (https://quantum.ibm.com/composer) para:
//   ✅ Visualizar o circuito graficamente de forma interativa
//   ✅ Executar em simuladores quânticos da IBM (ex: ibmq_qasm_simulator)
//   ✅ Executar em HARDWARE QUÂNTICO REAL da IBM (ex: ibm_brisbane, ibm_kyoto)
//   ✅ Analisar resultados estatísticos com histogramas
//   ✅ Comparar comportamento ideal vs. real (ruído quântico, decoerência)
//   ✅ Exportar para diferentes formatos (Qiskit, Cirq, etc.)
//
// COMO USAR:
//   1. Acesse o IBM Quantum Composer
//   2. Clique em "Import QASM" ou "Open QASM"
//   3. Cole este código ou faça upload do arquivo .qasm
//   4. Escolha o backend (simulador ou hardware real)
//   5. Execute e analise os resultados!
//
// NOTA: Em hardware real, você verá efeitos de ruído quântico e erros de
// portas que não aparecem em simuladores. A taxa de sucesso do teletransporte
// será menor que 100% devido a decoerência e imperfeições dos qubits físicos.
//
// PERSONAGENS:
//   - Alice: Possui q[0] (qubit a ser teletransportado) e q[1] (par emaranhado)
//   - Bob: Possui q[2] (destino do teletransporte)
//
// FASES DO PROTOCOLO:
//   1. Preparação do estado a teletransportar
//   2. Criação do par emaranhado (Bell state)
//   3. Medição de Bell por Alice
//   4. Comunicação clássica (medições)
//   5. Correções quânticas por Bob
// ============================================================================

OPENQASM 2.0;
include "qelib1.inc";

// ----------------------------------------------------------------------------
// PASSO 0: Inicialização dos Registros
// ----------------------------------------------------------------------------
// Cria 3 qubits quânticos (inicialmente todos em |0⟩)
qreg q[3];  // q[0]: qubit de Alice a teletransportar
            // q[1]: metade do par emaranhado que fica com Alice
            // q[2]: metade do par emaranhado que fica com Bob

// Cria 3 bits clássicos para armazenar resultados de medições
creg c[3];  // c[0] e c[1]: medições de Alice (instruções para Bob)
            // c[2]: verificação final do estado recebido por Bob

// ----------------------------------------------------------------------------
// PASSO 1: Alice Prepara o Estado a Teletransportar
// ----------------------------------------------------------------------------
// Aplicação: X em q[0]
// Efeito: |0⟩ → |1⟩ (prepara o estado que será enviado para Bob)
// Nota: Na prática, poderia ser qualquer estado |ψ⟩ = α|0⟩ + β|1⟩
x q[0];

// Barreira visual (separa etapas do protocolo)
barrier q[0], q[1], q[2];

// ----------------------------------------------------------------------------
// PASSO 2: Criar o "Telefone Quântico" (Par de Bell / Par Emaranhado)
// ----------------------------------------------------------------------------
// Este é o recurso fundamental que permite o teletransporte!
// Cria o estado de Bell |Φ⁺⟩ = 1/√2(|00⟩ + |11⟩) entre q[1] e q[2]

// Aplicação: Hadamard em q[1]
// Efeito: |0⟩ → 1/√2(|0⟩ + |1⟩) (cria superposição)
h q[1];

// Aplicação: CNOT entre q[1] (controle) e q[2] (alvo)
// Efeito: Cria emaranhamento - se q[1]=|0⟩ então q[2]=|0⟩, 
//         se q[1]=|1⟩ então q[2]=|1⟩ (correlação quântica instantânea!)
cx q[1], q[2];

// ----------------------------------------------------------------------------
// PASSO 3: Medição de Bell (Alice Conecta seu Qubit ao Sistema Emaranhado)
// ----------------------------------------------------------------------------
// Alice entrelaça SEU qubit (q[0]) com o par de Bell para "distribuir"
// a informação quântica pelo sistema emaranhado

// Aplicação: CNOT entre q[0] (controle) e q[1] (alvo)
// Efeito: Conecta o qubit de Alice ao seu qubit do par emaranhado
cx q[0], q[1];

// Aplicação: Hadamard em q[0]
// Efeito: Completa a transformação de Bell, preparando para medição
// Resultado: O sistema agora está em superposição de 4 cenários possíveis
h q[0];

barrier q[0], q[1], q[2];

// ----------------------------------------------------------------------------
// PASSO 4: Alice Mede e "Liga" para Bob (Comunicação Clássica)
// ----------------------------------------------------------------------------
// Alice mede seus dois qubits e obtém 2 bits clássicos que informam a Bob
// qual correção ele deve fazer. SEM esta comunicação, Bob não consegue
// recuperar o estado original!
//
// POSSÍVEIS RESULTADOS (cada um com 25% de probabilidade):
//   c[0]=0, c[1]=0 → Bob tem  |1⟩ → Nenhuma correção necessária
//   c[0]=0, c[1]=1 → Bob tem  |0⟩ → Precisa aplicar X
//   c[0]=1, c[1]=0 → Bob tem -|1⟩ → Precisa aplicar Z (correção de fase)
//   c[0]=1, c[1]=1 → Bob tem -|0⟩ → Precisa aplicar X e Z

measure q[0] -> c[0];  // Primeira medição de Alice
measure q[1] -> c[1];  // Segunda medição de Alice

barrier q[0], q[1], q[2];

// ----------------------------------------------------------------------------
// PASSO 5: Bob Recebe e Aplica Correções (Recupera o Estado Original)
// ----------------------------------------------------------------------------
// Bob usa as instruções de Alice (bits clássicos c[0] e c[1]) para
// corrigir seu qubit e obter o estado original |1⟩

// Aplicação: CNOT entre c[1] (controle clássico) e q[2] (alvo)
// Efeito: Se c[1]=1, aplica X em q[2] (inverte o qubit)
// Propósito: Corrige estados |0⟩ → |1⟩ quando necessário
cx q[1], q[2];

// Aplicação: CZ entre c[0] (controle clássico) e q[2] (alvo)
// Efeito: Se c[0]=1, aplica Z em q[2] (inverte a fase)
// Propósito: Corrige fases negativas (-|1⟩ → |1⟩)
cz q[0], q[2];

// Medição final: Verifica que Bob recebeu |1⟩ (o estado foi teletransportado!)
measure q[2] -> c[2];

// ============================================================================
// RESULTADO ESPERADO:
// Após executar este circuito 1000 vezes, c[2] deve ser 1 em ~100% dos casos,
// confirmando que o estado |1⟩ foi teletransportado com sucesso de Alice
// para Bob!
//
// PROPRIEDADES IMPORTANTES:
// ✅ O estado original em q[0] foi DESTRUÍDO (não há clonagem)
// ✅ Requer comunicação clássica (não é mais rápido que a luz)
// ✅ Funciona para QUALQUER estado quântico |ψ⟩, mesmo desconhecido
// ✅ Usa emaranhamento como recurso fundamental
// ============================================================================