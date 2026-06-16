---
name: nova-spec
description: >
  Cria uma nova spec SDD (spec.md + plan.md + tasks.md) para uma feature,
  a partir do template em .github/specs/_template/.
  Para um novo projeto, informe o nome da feature e a descrição do que ela deve fazer.
---

Siga estes passos em ordem. Espere confirmação do usuário entre cada fase.

## Fase 1 — Spec (o quê)
1. Encontre o próximo número disponível em `.github/specs/INDEX.md`
2. Crie `.github/specs/<NNN>-<nome>/spec.md` baseado em
   `.github/specs/_template/spec.md`
3. Preencha com os requisitos em formato EARS (WHEN/THEN/SHALL)
4. Não escreva plan.md, tasks.md nem código ainda
5. Atualize `.github/specs/INDEX.md` com status "Em especificação"
6. Mostre o spec.md gerado e aguarde revisão e aprovação do usuário

## Fase 2 — Plan (o como) — só após aprovação do spec.md
1. Crie `.github/specs/<NNN>-<nome>/plan.md` baseado em
   `.github/specs/_template/plan.md`
2. Baseie as decisões técnicas no spec.md aprovado e no
   `.github/copilot-instructions.md` (stack e convenções)
3. Defina: entidades Room, DAOs, Repository, ViewModels, UiStates, telas, módulos Hilt
4. Mostre o plan.md e aguarde aprovação

## Fase 3 — Tasks — só após aprovação do plan.md
1. Crie `.github/specs/<NNN>-<nome>/tasks.md` com checklist numerada
2. Cada task deve ser pequena, testável isoladamente,
   e referenciar requisito(s) (Rx) e seção do plan.md
3. Adicione as mesmas tasks ao `.claude/harness/feature_list.json`
   com `"completed": false`
4. Atualize status em `.github/specs/INDEX.md` para "Em implementação"
