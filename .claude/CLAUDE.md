# <NOME_DO_PROJETO> — Contexto do Projeto

> Lido automaticamente pelo Claude Code no início de toda sessão.
> Mantenha enxuto (idealmente < 200 linhas) e específico do projeto.
> Fluxo completo de specs: `.claude/specs/INDEX.md`.

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
- Toda nova feature segue o fluxo em `.claude/specs/` antes de codar
- Commits pequenos, em português, formato: `feat(<escopo>): <descrição>`

## Harness — Regras invioláveis
- SEMPRE comece uma nova sessão com `/iniciar-sessao` antes de tocar em código
- NUNCA marque `"completed": true` no feature_list.json sem build + testes passando
- NUNCA remova ou reordene entradas do feature_list.json
- SEMPRE adicione uma entrada ao claude-progress.md ao encerrar uma sessão
- Trabalhe em UMA tarefa por vez; não inicie a próxima sem confirmação
- Se build ou testes quebrarem: pare tudo e corrija antes de continuar


## Specs
Toda nova feature → `.claude/specs/<numero>-<nome>/` (requirements, design, tasks)
+ entrada correspondente adicionada ao `.claude/harness/feature_list.json`.
  Use `/nova-spec` para criar. Veja `.claude/specs/INDEX.md` para status geral.