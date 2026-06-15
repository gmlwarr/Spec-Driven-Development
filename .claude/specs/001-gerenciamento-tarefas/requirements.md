# Requirements — Gerenciamento de Tarefas

## Visão Geral
O usuário deve conseguir criar, visualizar, editar, concluir e excluir
tarefas, cada uma com título, descrição, prioridade e data de
vencimento.

## R1 — Criar tarefa
- WHEN o usuário toca em "Nova Tarefa", THEN o sistema SHALL exibir um
  formulário com campos: título (obrigatório), descrição (opcional),
  prioridade (Baixa/Média/Alta) e data de vencimento (opcional).
- WHEN o usuário salva o formulário com título vazio, THEN o sistema
  SHALL exibir erro de validação e NÃO persistir a tarefa.
- WHEN o usuário salva o formulário válido, THEN o sistema SHALL
  persistir a tarefa no Room e retornar para a lista.

## R2 — Listar tarefas
- WHEN a tela de lista é aberta, THEN o sistema SHALL exibir todas as
  tarefas ordenadas por data de vencimento (mais próximas primeiro) e,
  em seguida, por prioridade (Alta > Média > Baixa).
- WHEN não houver tarefas, THEN o sistema SHALL exibir um estado vazio
  com mensagem amigável.

## R3 — Concluir tarefa
- WHEN o usuário toca no checkbox de uma tarefa, THEN o sistema SHALL
  alternar o status `isCompleted` e persistir a alteração
  imediatamente.
- WHEN uma tarefa está concluída, THEN o sistema SHALL exibi-la com
  estilo visual diferenciado (texto riscado).

## R4 — Editar tarefa
- WHEN o usuário toca em uma tarefa existente, THEN o sistema SHALL
  abrir o formulário preenchido com os dados atuais.
- WHEN o usuário salva a edição, THEN o sistema SHALL atualizar o
  registro existente (não criar um novo).

## R5 — Excluir tarefa
- WHEN o usuário arrasta uma tarefa (swipe) ou toca em "Excluir",
  THEN o sistema SHALL solicitar confirmação antes de remover o
  registro permanentemente.

## Fora de escopo (nesta spec)
- Sincronização em nuvem, notificações, categorias/tags.