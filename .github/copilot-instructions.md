# <NOME_DO_PROJETO> — Instruções para o Copilot CLI

> Carregado automaticamente em toda sessão do Copilot CLI neste repositório.
> Mantenha enxuto. Fluxo completo de specs: `.github/specs/INDEX.md`.

## Stack
- Kotlin + Jetpack Compose (Material3)
- Arquitetura: MVVM + Repository Pattern
- Persistência: Room (SQLite)
- Injeção de dependência: Hilt
- Datas: kotlinx-datetime
- Navegação: Navigation Compose
- Testes: JUnit5, Turbine (Flow), Room in-memory para DAO

## Arquitetura (camadas)
```
app/src/main/java/<pacote>/
├── data/
│   ├── local/        (Entity, Dao, AppDatabase, Converters)
│   └── repository/   (Repository + Impl)
├── domain/
├── presentation/
│   ├── <feature>/    (ViewModel, UiState, Screen)
│   └── navigation/
└── di/
```

## Comandos
- Build:        `./gradlew assembleDebug`
- Testes:       `./gradlew testDebugUnitTest`
- Lint/estilo:  `./gradlew ktlintCheck detekt`
- Formatação:   `./gradlew ktlintFormat`

## Convenções
- ViewModels expõem `StateFlow<UiState>` (sealed class: Loading/Success/Error/Empty)
- Sem lógica de negócio em Composables — apenas estado e eventos
- DAO retorna `Flow<List<T>>` para consultas observáveis
- Commits pequenos, em português: `feat(<escopo>): <descrição>`

## Harness — Regras invioláveis
- SEMPRE comece com `/iniciar-sessao` antes de escrever qualquer código
- NUNCA marque `"completed": true` em `.claude/harness/feature_list.json`
  sem build + testes passando
- NUNCA remova ou reordene entradas do `feature_list.json`
- SEMPRE adicione entrada em `.claude/harness/claude-progress.md` ao encerrar
- Trabalhe em UMA tarefa por vez; não inicie a próxima sem confirmação
- Se build ou testes quebrarem: pare tudo e corrija antes de continuar

## Specs
Toda nova feature → `.github/specs/<numero>-<nome>/` (spec.md, plan.md, tasks.md)
+ entrada correspondente no `.claude/harness/feature_list.json`.
Use `/nova-spec` para criar. Veja `.github/specs/INDEX.md` para status.
