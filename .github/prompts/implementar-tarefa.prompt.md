---
mode: agent
description: Implementa uma tarefa específica de uma spec, com checagens de qualidade.
---

Implemente a tarefa ${input:numero} de
`.github/specs/${input:spec}/tasks.md`, seguindo plan.md e spec.md da
mesma pasta, e as instruções em `.github/copilot-instructions.md`.

Ao terminar:
1. Rode `./gradlew ktlintCheck detekt testDebugUnitTest`
2. Corrija qualquer falha antes de finalizar
3. Marque a tarefa como [x] em tasks.md
4. Não inicie a próxima tarefa sem confirmação
