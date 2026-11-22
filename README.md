## API de tareas

En esta sesión conecté TaskFlow con JSONPlaceholder, una API REST pública que proporciona datos de prueba. Esto permite consultar tareas desde internet en lugar de utilizar únicamente las cinco tareas locales de las sesiones anteriores.

### Endpoint utilizado

URL base: https://jsonplaceholder.typicode.com

Endpoint: `GET /todos?userId=2`

Método HTTP: GET

Usuario consultado: 2

Elegí el usuario 2 para comprobar que la aplicación puede consultar las tareas de diferentes usuarios mediante el parámetro `userId`.

### Datos recibidos de la API

La respuesta contiene cuatro campos:

- `userId`: identifica al usuario al que pertenece la tarea.
- `id`: identificador de la tarea.
- `title`: título de la actividad.
- `completed`: indica si está completada o pendiente.

### Adaptación al modelo Task

Como la API no proporciona todos los campos de nuestro modelo, TaskFlow utiliza los siguientes valores:

- `description`: Sin descripción (API).
- `priority`: Sin prioridad (API).
- `isCompleted`: obtiene su valor del campo `completed`.

La conversión de los datos JSON se realiza mediante `Task.fromJson()`.

### Funcionamiento de la consulta

La aplicación utiliza Dio para realizar peticiones HTTP. `TaskApiService` se encarga de consultar la API, `RemoteTaskRepository` administra los datos recibidos y `TasksViewModel` comunica los cambios a las pantallas mediante Provider.

Al completar una tarea, el estado cambia en la aplicación y se actualizan tanto el listado como el detalle. Sin embargo, el cambio se guarda únicamente en memoria, por lo que al reiniciar TaskFlow vuelve a mostrarse el estado proporcionado por la API.