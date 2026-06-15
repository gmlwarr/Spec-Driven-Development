---
mode: agent
description: Cria uma nova spec (spec/plan/tasks) a partir do template para uma nova feature.
---

Crie a pasta `.github/specs/<próximo-número-com-3-dígitos>-${input:nome}/`
copiando a estrutura de `.github/specs/_template/` (spec.md, plan.md,
tasks.md).

Preencha apenas `spec.md`, em formato EARS (WHEN/THEN/SHALL), com base
em: ${input:descricao}

Não escreva plan.md, tasks.md nem código ainda. Atualize
`.github/specs/INDEX.md` com a nova feature, status "Em especificação".
Pergunte revisões antes de seguir para o plan.
