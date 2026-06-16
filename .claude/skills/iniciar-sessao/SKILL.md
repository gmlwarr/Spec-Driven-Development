---
name: iniciar-sessao
description: Ritual de início de sessão do harness — lê contexto, verifica ambiente e escolhe a próxima tarefa.
invocation: user
---

Execute os passos abaixo NA ORDEM. Não pule nenhum. Não inicie
código antes de completar todos os passos.

## Passo 1 — Localização e estado git
```bash
pwd
git status --short
git log --oneline -10
```

## Passo 2 — Verificar ambiente
```bash
bash .claude/harness/init.sh
```
Se o build ou testes falharem: PARE. Corrija o problema e só então continue.

## Passo 3 — Ler progresso anterior
Leia `.claude/harness/claude-progress.md` (foco nas últimas 2 entradas).

## Passo 4 — Identificar próxima tarefa
Leia `.claude/harness/feature_list.json` e encontre a primeira task com
`"completed": false`. Esse é o seu alvo para esta sessão.

## Passo 5 — Ler a spec da tarefa escolhida
- `.claude/specs/<spec_id>-*/requirements.md` — critérios de aceite
- `.claude/specs/<spec_id>-*/design.md` — detalhes técnicos

## Passo 6 — Reportar e aguardar confirmação
Informe:
- Estado do ambiente (build + testes)
- Última tarefa concluída (do progress.md)
- Próxima tarefa escolhida (ID + descrição do feature_list.json)
- Breve plano de implementação (3-5 bullet points)

Aguarde confirmação antes de escrever qualquer código.
