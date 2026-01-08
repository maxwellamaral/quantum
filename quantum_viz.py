"""
🌐 Visualizações Interativas para Computação Quântica
Módulo de visualizações 3D interativas usando Plotly para estados quânticos.
"""

import plotly.graph_objects as go
import numpy as np
import os
import webbrowser


def plot_qsphere_interactive(statevector, auto_open=True, output_file='qsphere_interativa.html'):
    """
    Cria uma Q-Sphere 3D COMPLETA E INTERATIVA usando Plotly.
    
    A Q-Sphere visualiza o estado completo de um sistema quântico de múltiplos qubits,
    mostrando amplitudes, fases e probabilidades em uma representação esférica 3D.
    
    Características:
    - Setas coloridas da origem para cada estado (magenta = fase +, ciano = fase -)
    - Wireframe da esfera para referência espacial
    - Sistema de coordenadas cartesianas 3D (X, Y, Z) com labels
    - Labels dos estados quânticos com probabilidade > 15%
    - Marcadores proporcionais à probabilidade
    - Informações detalhadas no hover (amplitude, probabilidade, fase)
    
    Parameters
    ----------
    statevector : qiskit.quantum_info.Statevector
        O vetor de estado quântico a ser visualizado.
        Deve conter 2^n elementos para n qubits.
    
    auto_open : bool, optional (default=True)
        Se True, abre automaticamente a visualização no navegador.
        Se False, apenas salva o arquivo HTML.
    
    output_file : str, optional (default='qsphere_interativa.html')
        Nome do arquivo HTML de saída.
        Pode ser um caminho completo ou apenas o nome do arquivo.
    
    Returns
    -------
    plotly.graph_objects.Figure
        A figura Plotly criada, que pode ser exibida ou manipulada adicionalmente.
    
    Controles Interativos
    ---------------------
    - Arrastar: Girar a esfera 360°
    - Scroll: Zoom in/out  
    - Botão direito + arrastar: Mover (pan)
    - Hover: Ver detalhes do estado
    
    Examples
    --------
    >>> from qiskit.quantum_info import Statevector
    >>> from quantum_viz import plot_qsphere_interactive
    >>> 
    >>> # Criar um estado de Bell
    >>> state = Statevector([1/np.sqrt(2), 0, 0, 1/np.sqrt(2)])
    >>> fig = plot_qsphere_interactive(state)
    >>> 
    >>> # Sem abrir automaticamente no navegador
    >>> fig = plot_qsphere_interactive(state, auto_open=False)
    >>> 
    >>> # Com arquivo de saída personalizado
    >>> fig = plot_qsphere_interactive(state, output_file='meu_estado.html')
    
    Notes
    -----
    - A função usa o algoritmo Fibonacci Sphere para distribuir uniformemente
      os pontos na superfície da esfera
    - Estados com probabilidade < 0.1% não exibem setas para evitar poluição visual
    - Labels de estados aparecem apenas para probabilidades > 15%
    - O sistema de coordenadas cartesianas facilita a orientação espacial
    """
    amplitudes = statevector.data
    n_states = len(amplitudes)
    n_qubits = int(np.log2(n_states))
    
    # Distribuição dos pontos usando coordenadas esféricas (Fibonacci sphere)
    # Isso distribui os pontos uniformemente na superfície
    positions = []
    golden_ratio = (1 + np.sqrt(5)) / 2
    
    for i in range(n_states):
        theta = 2 * np.pi * i / golden_ratio
        phi = np.arccos(1 - 2 * (i + 0.5) / n_states)
        
        x = np.sin(phi) * np.cos(theta)
        y = np.sin(phi) * np.sin(theta)
        z = np.cos(phi)
        positions.append([x, y, z])
    
    positions = np.array(positions)
    
    # Criar figura
    fig = go.Figure()
    
    # 1. Adicionar wireframe da esfera (linhas de longitude e latitude)
    u = np.linspace(0, 2 * np.pi, 20)
    v = np.linspace(0, np.pi, 12)
    
    # Linhas de longitude
    for ui in u:
        x_line = np.sin(v) * np.cos(ui)
        y_line = np.sin(v) * np.sin(ui)
        z_line = np.cos(v)
        fig.add_trace(go.Scatter3d(
            x=x_line, y=y_line, z=z_line,
            mode='lines',
            line=dict(color='rgba(100, 100, 120, 0.6)', width=2),
            opacity=0.8,
            hoverinfo='skip',
            showlegend=False
        ))
    
    # Linhas de latitude
    for vi in v[1:-1]:  # Excluir polos
        x_line = np.sin(vi) * np.cos(u)
        y_line = np.sin(vi) * np.sin(u)
        z_line = np.cos(vi) * np.ones_like(u)
        fig.add_trace(go.Scatter3d(
            x=x_line, y=y_line, z=z_line,
            mode='lines',
            line=dict(color='rgba(100, 100, 120, 0.6)', width=2),
            opacity=0.8,
            hoverinfo='skip',
            showlegend=False
        ))
    
    # 1.5. Adicionar eixos cartesianos 3D (X, Y, Z) no interior da esfera
    axis_length = 1.3  # Comprimento dos eixos
    
    # Eixo X (vermelho)
    fig.add_trace(go.Scatter3d(
        x=[-axis_length, axis_length], y=[0, 0], z=[0, 0],
        mode='lines',
        line=dict(color='rgba(200, 50, 50, 0.7)', width=4),
        hoverinfo='skip',
        showlegend=False
    ))
    # Marcadores nas extremidades do eixo X
    fig.add_trace(go.Scatter3d(
        x=[axis_length, -axis_length], y=[0, 0], z=[0, 0],
        mode='markers',
        marker=dict(size=8, color=['rgb(200, 50, 50)', 'rgb(150, 30, 30)'], 
                    symbol='circle', line=dict(color='white', width=1)),
        hovertext=['Eixo +X', 'Eixo -X'],
        hoverinfo='text',
        showlegend=False
    ))
    
    # Eixo Y (verde)
    fig.add_trace(go.Scatter3d(
        x=[0, 0], y=[-axis_length, axis_length], z=[0, 0],
        mode='lines',
        line=dict(color='rgba(50, 200, 50, 0.7)', width=4),
        hoverinfo='skip',
        showlegend=False
    ))
    # Marcadores nas extremidades do eixo Y
    fig.add_trace(go.Scatter3d(
        x=[0, 0], y=[axis_length, -axis_length], z=[0, 0],
        mode='markers',
        marker=dict(size=8, color=['rgb(50, 200, 50)', 'rgb(30, 150, 30)'], 
                    symbol='circle', line=dict(color='white', width=1)),
        hovertext=['Eixo +Y', 'Eixo -Y'],
        hoverinfo='text',
        showlegend=False
    ))
    
    # Eixo Z (azul)
    fig.add_trace(go.Scatter3d(
        x=[0, 0], y=[0, 0], z=[-axis_length, axis_length],
        mode='lines',
        line=dict(color='rgba(50, 50, 200, 0.7)', width=4),
        hoverinfo='skip',
        showlegend=False
    ))
    # Marcadores nas extremidades do eixo Z
    fig.add_trace(go.Scatter3d(
        x=[0, 0], y=[0, 0], z=[axis_length, -axis_length],
        mode='markers',
        marker=dict(size=8, color=['rgb(50, 50, 200)', 'rgb(30, 30, 150)'], 
                    symbol='circle', line=dict(color='white', width=1)),
        hovertext=['Eixo +Z', 'Eixo -Z'],
        hoverinfo='text',
        showlegend=False
    ))
    
    # 2. Adicionar setas da origem para cada estado com amplitude significativa
    for i, amp in enumerate(amplitudes):
        prob = np.abs(amp) ** 2
        
        if prob > 0.001:  # Apenas estados com probabilidade > 0.1%
            phase = np.angle(amp)
            color = 'magenta' if phase >= 0 else 'cyan'
            
            # Linha da origem até o ponto
            pos = positions[i]
            fig.add_trace(go.Scatter3d(
                x=[0, pos[0]],
                y=[0, pos[1]],
                z=[0, pos[2]],
                mode='lines',
                line=dict(color=color, width=6),
                opacity=0.7,
                hoverinfo='skip',
                showlegend=False
            ))
            
            # Cone (seta) no final da linha - tamanho ajustado
            fig.add_trace(go.Cone(
                x=[pos[0]], y=[pos[1]], z=[pos[2]],
                u=[pos[0]*0.12], v=[pos[1]*0.12], w=[pos[2]*0.12],
                colorscale=[[0, color], [1, color]],
                showscale=False,
                sizemode='absolute',
                sizeref=0.2 * np.sqrt(prob),  # Menor e proporcional à raiz da probabilidade
                hoverinfo='skip',
                showlegend=False
            ))
    
    # 3. Adicionar marcadores dos estados com labels
    marker_sizes = []
    marker_colors = []
    hover_texts = []
    annotations = []
    
    for i, amp in enumerate(amplitudes):
        prob = np.abs(amp) ** 2
        phase = np.angle(amp)
        
        # Tamanho do marcador proporcional à probabilidade (mais moderado)
        size = max(prob * 60, 3) if prob > 0.001 else 2
        
        # Cor baseada na fase (tons mais suaves)
        if prob > 0.001:
            color = 'rgb(255, 0, 255)' if phase >= 0 else 'rgb(0, 200, 255)'  # Magenta ou ciano
        else:
            color = 'rgba(150, 150, 150, 0.2)'  # Cinza muito transparente para estados vazios
        
        # Texto detalhado no hover
        state_label = format(i, f'0{n_qubits}b')
        hover_text = f"<b>|{state_label}⟩</b><br>"
        hover_text += f"Amplitude: {amp:.4f}<br>"
        hover_text += f"Prob: {prob*100:.2f}%<br>"
        hover_text += f"Fase: {phase:.3f} rad ({np.degrees(phase):.1f}°)"
        
        marker_sizes.append(size)
        marker_colors.append(color)
        hover_texts.append(hover_text)
        
        # Adicionar label de texto APENAS para os estados mais significativos (evitar sobreposição)
        if prob > 0.15:  # Apenas estados com prob > 15%
            pos = positions[i]
            # Posicionar o label mais longe para evitar sobreposição
            label_dist = 1.25
            annotations.append(dict(
                x=pos[0]*label_dist,
                y=pos[1]*label_dist,
                z=pos[2]*label_dist,
                text=f"|{state_label}⟩",
                showarrow=False,
                font=dict(size=14, color='black', family='Courier New, monospace', weight='bold'),
                bgcolor='rgba(255,255,255,0.85)',
                bordercolor=color,
                borderwidth=2,
                borderpad=4
            ))
    
    # Adicionar labels dos eixos principais (positivos e negativos)
    axis_label_dist = 1.45
    annotations.extend([
        # Eixo X positivo e negativo
        dict(x=axis_label_dist, y=0, z=0, text="+X", showarrow=False,
             font=dict(size=18, color='rgb(200, 50, 50)', family='Arial Black', weight='bold'),
             bgcolor='rgba(255,255,255,0.9)', bordercolor='rgb(200, 50, 50)', borderwidth=2, borderpad=3),
        dict(x=-axis_label_dist, y=0, z=0, text="-X", showarrow=False,
             font=dict(size=16, color='rgb(150, 30, 30)', family='Arial Black', weight='bold'),
             bgcolor='rgba(255,255,255,0.85)', bordercolor='rgb(150, 30, 30)', borderwidth=2, borderpad=3),
        
        # Eixo Y positivo e negativo
        dict(x=0, y=axis_label_dist, z=0, text="+Y", showarrow=False,
             font=dict(size=18, color='rgb(50, 200, 50)', family='Arial Black', weight='bold'),
             bgcolor='rgba(255,255,255,0.9)', bordercolor='rgb(50, 200, 50)', borderwidth=2, borderpad=3),
        dict(x=0, y=-axis_label_dist, z=0, text="-Y", showarrow=False,
             font=dict(size=16, color='rgb(30, 150, 30)', family='Arial Black', weight='bold'),
             bgcolor='rgba(255,255,255,0.85)', bordercolor='rgb(30, 150, 30)', borderwidth=2, borderpad=3),
        
        # Eixo Z positivo e negativo
        dict(x=0, y=0, z=axis_label_dist, text="+Z", showarrow=False,
             font=dict(size=18, color='rgb(50, 50, 200)', family='Arial Black', weight='bold'),
             bgcolor='rgba(255,255,255,0.9)', bordercolor='rgb(50, 50, 200)', borderwidth=2, borderpad=3),
        dict(x=0, y=0, z=-axis_label_dist, text="-Z", showarrow=False,
             font=dict(size=16, color='rgb(30, 30, 150)', family='Arial Black', weight='bold'),
             bgcolor='rgba(255,255,255,0.85)', bordercolor='rgb(30, 30, 150)', borderwidth=2, borderpad=3)
    ])
    
    # Adicionar os marcadores
    fig.add_trace(go.Scatter3d(
        x=positions[:, 0],
        y=positions[:, 1],
        z=positions[:, 2],
        mode='markers+text',
        marker=dict(
            size=marker_sizes,
            color=marker_colors,
            opacity=0.95,
            line=dict(width=2, color='white')
        ),
        text=hover_texts,
        showlegend=False
    ))
    
    # 4. Adicionar ponto de origem (mais visível)
    fig.add_trace(go.Scatter3d(
        x=[0], y=[0], z=[0],
        mode='markers',
        marker=dict(size=10, color='black', symbol='diamond', 
                    line=dict(color='white', width=2)),
        hovertext='<b>Origem (0,0,0)</b>',
        hoverinfo='text',
        showlegend=False
    ))
    
    # Configurar layout
    fig.update_layout(
        title={
            'text': f"🌐 Q-Sphere Interativa Completa - {n_qubits} Qubit{'s' if n_qubits != 1 else ''}<br>" +
                    "<sub>🖱️ Arraste para girar | 🔍 Scroll para zoom | 🎯 Hover para detalhes | " +
                    "🟣 Magenta = fase (+) | 🔵 Ciano = fase (-)</sub>",
            'x': 0.5,
            'font': dict(size=16)
        },
        scene=dict(
            xaxis=dict(
                showbackground=False, 
                showticklabels=False, 
                showgrid=False,
                title='',
                range=[-1.6, 1.6]  # Range aumentado para mostrar os labels dos eixos
            ),
            yaxis=dict(
                showbackground=False, 
                showticklabels=False, 
                showgrid=False,
                zeroline=False,
                title='',
                range=[-1.6, 1.6]
            ),
            zaxis=dict(
                showbackground=False, 
                showticklabels=False, 
                showgrid=False,
                zeroline=False,
                title='',
                range=[-1.6, 1.6]
            ),
            aspectmode='cube',
            camera=dict(
                eye=dict(x=0.85, y=0.85, z=0.7),  # Câmera próxima = esfera maior
                center=dict(x=0, y=0, z=0)
            ),
            annotations=annotations
        ),
        width=1400,
        height=1100,
        showlegend=False,
        hovermode='closest',
        plot_bgcolor='white',
        paper_bgcolor='white',
        margin=dict(l=0, r=0, t=80, b=0)
    )
    
    # Salvar HTML
    html_path = os.path.join(os.getcwd(), output_file)
    fig.write_html(html_path)
    
    print(f"✅ Visualização 3D salva em: {html_path}")
    
    # Abrir no navegador se solicitado
    if auto_open:
        print("   Abrindo no navegador...")
        webbrowser.open('file://' + html_path)
        print("\n💡 Dica: Você pode arrastar, girar e dar zoom na esfera!")
        print("   O arquivo HTML pode ser aberto a qualquer momento.")
    
    return fig
