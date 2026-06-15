# Tasks — Gerenciamento de Tarefas

- [ ] 1. Configurar dependências (Room, Hilt, Navigation Compose,
        kotlinx-datetime) no build.gradle.kts do módulo app
- [ ] 2. Criar `TaskPriority` (enum) e `TaskEntity` (Room) — [design: Modelo de dados]
- [ ] 3. Criar `Converters` (TypeConverters para enum/LocalDate/Instant)
- [ ] 4. Criar `TaskDao` com queries descritas no design — [R2, R3]
- [ ] 5. Criar `AppDatabase` (RoomDatabase abstrata)
- [ ] 6. Criar modelo de domínio `Task` + mapeamento Entity<->Domain
- [ ] 7. Criar `TaskRepository` (interface) e `TaskRepositoryImpl`
- [ ] 8. Criar módulos Hilt (`DatabaseModule`, `RepositoryModule`)
- [ ] 9. Testes de DAO com Room in-memory — [R2]
- [ ] 10. Criar `TaskListUiState` + `TaskListViewModel` — [R2, R3]
- [ ] 11. Criar `TaskListScreen` (Compose) com estado vazio — [R2]
- [ ] 12. Criar `TaskFormUiState` + `TaskFormViewModel` (criar/editar) — [R1, R4]
- [ ] 13. Criar `TaskFormScreen` (Compose) com validação de título — [R1]
- [ ] 14. Implementar exclusão com confirmação (swipe ou botão) — [R5]
- [ ] 15. Configurar NavHost ligando as duas telas
- [ ] 16. Testes de ViewModel (TaskList e TaskForm) com Turbine
- [ ] 17. Validação manual: rodar app e checar cada critério de aceite do requirements.md