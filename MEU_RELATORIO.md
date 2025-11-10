# Relatório de Observações - Atividade de Threads

## Informações do Aluno
- **Nome:** Carlos Benigno Neto
- **Matrícula:** 20222014040007 
- **Data:** 10/11/2025

## Ambiente de Execução

- [x] Executado em Docker/Fedora

**Sistema Operacional:**  Windows 11
**Processador:** Intel Core i5-10300H 
**Número de Cores:** 4 cores, 8 threads

---

## Execução 1

### Resultados Observados

**Thread CPU (Thread 1):**
- Tempo de execução: 0.34 segundos
- Soma dos primos: 37550402023
- Ordem de conclusão: 3ª

**Thread I/O (Thread 2):**
- Tempo de execução: 0.02 segundos
- Linhas processadas: 10000
- Ordem de conclusão: 1ª

**Thread Mista (Thread 3):**
- Tempo de execução: 0.02 segundos
- Total de cálculos: 3482527859448382464
- Ordem de conclusão: 2ª

**Tempo Total do Programa:** 0 segundos

### Observações sobre a Saída

A mensagem sobre as threads apresentam em conjunto no console, sendo inicalizadas simultaneamente, com base na sua operação (CPU, I/O e mista), e suas mensagens de conclusão foram exibidas em diferentes ordens.

---

## Execução 2 (Repetir para comparação)

### Resultados Observados

**Thread CPU (Thread 1):**
- Tempo de execução: 0.27 segundos
- Ordem de conclusão: 3ª

**Thread I/O (Thread 2):**
- Tempo de execução: 0.02 segundos
- Ordem de conclusão: 1ª

**Thread Mista (Thread 3):**
- Tempo de execução: 0.02 segundos
- Ordem de conclusão: 2ª

**Tempo Total do Programa:** 0 segundos

### Diferenças entre Execuções

Houve pequenas diferenças nos tempos de execução de cada thread, principalmente nas threads de I/O e mista, que terminaram mais rapidamente na execução com Docker.

---

## Análise e Conclusões

### 1. Qual thread terminou primeiro? Por quê?

A thread I/O terminou primeiro porque operações de arquivo são geralmente mais rápidas que cálculos intensivos de CPU, especialmente com sistemas de arquivos eficientes.

### 2. Por que os tempos de execução variam entre diferentes execuções?

O sistema operacional gerencia as threads dinamicamente, distribuindo o tempo de CPU entre elas de forma variável a cada execução.

### 3. Como o sistema operacional gerencia a execução das threads?

O SO usa um escalonador que alterna rapidamente entre as threads, dando a impressão de execução simultânea, enquanto gerencia o acesso aos recursos.

### 4. Qual seria o impacto de aumentar o número de threads?

Com mais threads, o paralelismo aumentaria, mas poderia sobrecarregar o sistema, causando mais disputa por recursos e diminuindo o desempenho.

### 5. O que aconteceria se executássemos as mesmas operações sequencialmente?

O tempo total seria a soma dos tempos individuais (≈0.38s), bem maior que os 0.34s observados, perdendo os benefícios da concorrência.
---

## Conceitos Aprendidos


1. Concorrência vs Paralelismo - Como múltiplas threads executam simultaneamente compartilhando recursos do sistema
2. Escalonamento de threads - Como o SO gerencia e alterna entre threads usando time-slicing
3. Isolamento de ambiente - Como Docker proporciona execução consistente independente do SO hospedeiro

---

## Comentários Finais

A atividade me ajudou a entender como funciona na prática as threads. Ficou claro que operações de I/O são geralmente mais rápidas que cálculos pesados de CPU. Poder usar o Docker simplificou bastante a configuração do ambiente.

---

**Data de Conclusão:** 10/11/2025    
**Assinatura:** Carlos Benigno Neto
