# Plan — Gerenciamento de Tarefas (exemplo)

## Modelo de dados (Room)

### TaskEntity
| Campo       | Tipo                          | Observações                          |
|-------------|-------------------------------|----------------------------------------|
| id          | Long (PK, autogen)            |                                          |
| title       | String                        | obrigatório                             |
| description | String?                       |                                          |
| priority    | TaskPriority (enum)           | LOW, MEDIUM, HIGH — via TypeConverter   |
| dueDate     | LocalDate? (kotlinx-datetime) | via TypeConverter                       |
| isCompleted | Boolean                       | default false                           |
| createdAt   | Instant                       | preenchido na criação                   |

### TaskDao
- `getAllTasks(): Flow<List<TaskEntity>>` — ordenado por dueDate ASC NULLS LAST, priority DESC
- `getTaskById(id: Long): TaskEntity?`
- `insert(task: TaskEntity): Long`
- `update(task: TaskEntity)`
- `delete(task: TaskEntity)`
- `setCompleted(id: Long, completed: Boolean)`

### AppDatabase
- RoomDatabase abstract class, versão 1, exporta `TaskDao`
- Converters: TaskPriority <-> Int, LocalDate <-> Long (epochDay), Instant <-> Long

## Repository
```kotlin
interface TaskRepository {
    fun observeTasks(): Flow<List<Task>>
    suspend fun getTask(id: Long): Task?
    suspend fun saveTask(task: Task): Long
    suspend fun deleteTask(task: Task)
    suspend fun setCompleted(id: Long, completed: Boolean)
}
```
`TaskRepositoryImpl` mapeia `TaskEntity <-> Task` (modelo de domínio).

## Presentation

### TaskListViewModel
- Expõe `StateFlow<TaskListUiState>` (Loading / Success(tasks) / Empty)
- Eventos: `onToggleCompleted(id)`, `onDeleteTask(task)`, `onTaskClick(id)`

### TaskFormViewModel
- Recebe `taskId: Long?` via SavedStateHandle (null = criação, não-null = edição)
- Expõe `StateFlow<TaskFormUiState>` com campos do formulário + erros de validação
- `onSave()` valida título não-vazio antes de persistir

### Navegação
- Rotas: `"task_list"`, `"task_form?taskId={taskId}"` (taskId opcional)

## Módulos Hilt
- `DatabaseModule`: provê `AppDatabase` (Room.databaseBuilder) e `TaskDao`
- `RepositoryModule`: `@Binds TaskRepository -> TaskRepositoryImpl`

## Testes previstos
- DAO: Room in-memory, testar ordenação e CRUD
- ViewModel: Turbine para coletar StateFlow, repositório fake/mock
