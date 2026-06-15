---
applyTo: "**/*.kt"
---

- ViewModels expõem `StateFlow<UiState>` (sealed class: Loading/Success/Error/Empty)
- Sem lógica de negócio em Composables — apenas estado e eventos
- DAO retorna `Flow<List<T>>` para consultas observáveis
- Siga as convenções gerais em `.github/copilot-instructions.md` e a
  spec ativa em `.github/specs/`
