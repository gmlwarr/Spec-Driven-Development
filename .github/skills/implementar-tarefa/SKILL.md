---
name: implementar-tarefa
description: >
  Implementa uma única tarefa específica de uma spec SDD.
  Requer que /iniciar-sessao já tenha sido executado.
  Informe o ID da tarefa (ex: 001/T7) ao invocar a skill.
---

## Pré-condição
Confirme que `.claude/harness/init.sh` passou nesta sessão.
Se não passou, execute `/iniciar-sessao` primeiro.

## Execução
1. Leia a task informada em `.claude/harness/feature_list.json`
2. Leia `.github/specs/<spec_id>-*/spec.md` e `plan.md` correspondentes
3. Implemente APENAS a task informada — não avance para a próxima
4. Siga TDD quando a camada for data (Entity, DAO, Repository):
   a. Escreva os testes primeiro
   b. Confirme que falham
   c. Implemente até passarem
   d. Não altere testes para forçar passagem

## Checagem pós-implementação
```bash
./gradlew ktlintCheck detekt testDebugUnitTest
```
Corrija qualquer falha antes de considerar a task concluída.

## Finalização
1. Marque `"completed": true` no `feature_list.json` para esta task
2. Faça commit: `feat(<escopo>): <descrição da task>`
3. Adicione entrada em `.claude/harness/claude-progress.md`
4. Informe ao usuário e aguarde confirmação para continuar
