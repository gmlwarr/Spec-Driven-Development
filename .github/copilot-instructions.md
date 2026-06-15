# <NOME_DO_PROJETO> — Instruções para o GitHub Copilot

> Lido automaticamente pelo Copilot Chat/Agent em todas as conversas
> deste workspace. Mantenha enxuto e específico. Fluxo completo de
> specs: `.github/specs/INDEX.md`.

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
├── domain/            (modelos de domínio, use cases se necessário)
├── presentation/
│   ├── <feature>/     (ViewModel, UiState, Screen)
│   └── navigation/
└── di/                (módulos Hilt)
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
- Toda nova feature segue o fluxo em `.github/specs/` antes de codar
- Commits pequenos, em português, formato: `feat(<escopo>): <descrição>`

## Specs
Toda funcionalidade nova é especificada em `.github/specs/<numero>-<nome>/`
(spec.md, plan.md, tasks.md) antes da implementação. Veja
`.github/specs/INDEX.md`. Use o prompt `/nova-spec` para criar uma nova
spec a partir de `.github/specs/_template/`. Nunca implemente uma tarefa
sem antes ler spec.md e plan.md correspondentes.
