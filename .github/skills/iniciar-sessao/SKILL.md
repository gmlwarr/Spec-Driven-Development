---
name: iniciar-sessao
description: >
  Ritual obrigatório de início de sessão do harness SDD.
  Verifica o ambiente, lê o progresso anterior e identifica
  a próxima tarefa antes de qualquer código.
---

Execute os passos abaixo NA ORDEM. Não pule nenhum.
Não escreva código antes de completar todos os passos.

## Passo 1 — Localização e estado git
```bash
pwd
git status --short
git log --oneline -10
```

## Passo 2 — Verificar ambiente (harness init)
```bash
bash .claude/harness/init.sh
```
Se o build ou os testes falharem: PARE. Corrija o problema.
Só continue depois que `init.sh` terminar sem erros.

## Passo 3 — Ler progresso anterior
Leia `.claude/harness/claude-progress.md` (foco nas últimas 2 entradas).

## Passo 4 — Identificar próxima tarefa
Leia `.claude/harness/feature_list.json`.
Encontre a primeira task com `"completed": false`. Esse é o alvo.

## Passo 5 — Ler spec da tarefa escolhida
- `.github/specs/<spec_id>-*/spec.md`  → critérios de aceite
- `.github/specs/<spec_id>-*/plan.md`  → decisões técnicas

## Passo 6 — Reportar e aguardar confirmação
Informe ao usuário:
- Estado do ambiente (build + testes)
- Última tarefa concluída (do progress.md)
- Próxima tarefa: ID + descrição (do feature_list.json)
- Plano de implementação em 3-5 bullet points

Aguarde confirmação explícita antes de escrever qualquer código.
