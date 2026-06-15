# TaskApp — Contexto do Projeto

## Stack
- Kotlin + Jetpack Compose (Material3)
- Arquitetura: MVVM + Repository Pattern
- Persistência: Room (SQLite)
- Injeção de dependência: Hilt
- Datas: kotlinx-datetime
- Navegação: Navigation Compose
- Testes: JUnit5, Turbine (Flow), Room in-memory DB para testes de DAO

## Arquitetura (camadas)
app/src/main/java/com/seuapp/taskapp/
├── data/
│   ├── local/ (Entity, Dao, AppDatabase, Converters)
│   └── repository/ (Repository + Impl)
├── domain/ (modelos de domínio, use cases se necessário)
├── presentation/
│   ├── tasklist/ (ViewModel, UiState, Screen)
│   ├── taskform/ (ViewModel, UiState, Screen)
│   └── navigation/
└── di/ (módulos Hilt)

## Comandos
- Build: `./gradlew assembleDebug`
- Testes unitários: `./gradlew testDebugUnitTest`
- Lint/estilo: `./gradlew ktlintCheck detekt`
- Aplicar formatação: `./gradlew ktlintFormat`

## Convenções
- ViewModels expõem `StateFlow<UiState>` (sealed class: Loading/Success/Error)
- Sem lógica de negócio em Composables — apenas estado e eventos
- DAO retorna `Flow<List<T>>` para consultas observáveis
- Toda nova feature segue o fluxo em `specs/` (ver abaixo) antes de codar
- Commits pequenos, em português, formato: `feat(tasks): adiciona tela de criação`

## Specs
Toda funcionalidade nova é especificada em `specs/<numero>-<nome>/` antes da
implementação. Veja `specs/INDEX.md` para a lista de features e status.
Nunca implemente uma tarefa sem antes ler requirements.md e design.md
correspondentes.