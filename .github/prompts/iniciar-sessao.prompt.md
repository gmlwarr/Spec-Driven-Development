---
mode: agent
description: Ritual de início de sessão do harness — lê contexto, verifica ambiente e escolhe a próxima tarefa.
---

Execute os passos abaixo NA ORDEM. Não pule nenhum.
Não escreva código antes de completar todos.

## Passo 1 — Estado git
```bash
pwd && git status --short && git log --oneline -10
```

## Passo 2 — Verificar ambiente
```bash
bash .claude/harness/init.sh
```
Se falhar: PARE. Corrija antes de continuar.

## Passo 3 — Ler progresso anterior
Leia `.claude/harness/claude-progress.md` (foco nas últimas 2 entradas).

## Passo 4 — Identificar próxima tarefa
Leia `.claude/harness/feature_list.json`.
Encontre a primeira task com `"completed": false`.

## Passo 5 — Ler spec da tarefa
- `.github/specs/<spec_id>-*/spec.md` — critérios de aceite
- `.github/specs/<spec_id>-*/plan.md` — detalhes técnicos

## Passo 6 — Reportar e aguardar confirmação
Informe: estado do ambiente, última tarefa concluída, próxima tarefa
escolhida (ID + descrição) e plano de implementação em 3-5 pontos.
Aguarde confirmação antes de escrever qualquer código.
