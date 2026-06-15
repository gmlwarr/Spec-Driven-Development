---
name: implementar-tarefa
description: Implementa uma tarefa específica de uma spec, com checagens de qualidade.
invocation: user
---

Implemente a tarefa $1 de `.claude/specs/001-gerenciamento-tarefas/tasks.md`, seguindo
design.md e requirements.md da mesma spec, e as convenções do CLAUDE.md.

Ao terminar:
1. Rode `./gradlew ktlintCheck detekt testDebugUnitTest`
2. Corrija qualquer falha antes de finalizar
3. Marque a tarefa como [x] em tasks.md
4. NÃO inicie a próxima tarefa sem confirmação explícita

Uso: /implementar-tarefa <numero-da-tarefa> <pasta-da-spec>
