---
name: nova-spec
description: Cria uma nova spec (requirements/design/tasks) a partir do template para uma nova feature.
invocation: user
---

Crie a pasta `.claude/specs/<próximo-número-com-3-dígitos>-$1/` copiando
a estrutura de `.claude/specs/_template/`.

1. Preencha apenas `requirements.md`, em formato EARS (WHEN/THEN/SHALL),
   com base na descrição a seguir e nas convenções/stack do CLAUDE.md:
   $ARGUMENTS
2. Não escreva design.md, tasks.md nem código ainda.
3. Adicione a nova feature em `.claude/specs/INDEX.md` com status
   "Em especificação".
4. Pergunte-me revisões antes de seguir para o design.

Uso: /nova-spec <nome-curto-da-feature> <descrição da feature>
