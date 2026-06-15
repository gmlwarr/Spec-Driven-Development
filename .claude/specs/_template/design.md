# Design — <Nome da Feature>

> Decisões técnicas baseadas em requirements.md e nas convenções do
> CLAUDE.md. Referencie os IDs de requisitos (R1, R2...) onde fizer sentido.

## Modelo de dados (Room)

### <NomeEntity>
| Campo | Tipo               | Observações |
|-------|--------------------|-------------|
| id    | Long (PK, autogen) |             |

### <Nome>Dao
- `observeAll(): Flow<List<...>>`
- `getById(id: Long): ...?`
- `insert(...): Long`
- `update(...)`
- `delete(...)`

### AppDatabase
- Converters necessários: <...>

## Repository
```kotlin
interface <Nome>Repository {
    fun observeAll(): Flow<List<...>>
    suspend fun get(id: Long): ...?
    suspend fun save(item: ...): Long
    suspend fun delete(item: ...)
}
```

## Presentation

### <Nome>ViewModel
- Expõe `StateFlow<...UiState>` (sealed class)
- Eventos: <onClick, onSave, onDelete, ...>

### Navegação
- Rotas: <...>

## Módulos Hilt
- `DatabaseModule`: <...>
- `RepositoryModule`: <...>

## Testes previstos
- DAO: Room in-memory
- ViewModel: Turbine + repositório fake
