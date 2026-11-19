# taskflow

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Alcance de TaskFlow

Problema: Necesito organizar mis actividades académicas y las tareas relacionadas con el desarrollo de aplicaciones móviles, para identificar cuáles están pendientes y cuáles se han completado.

Usuario objetivo: Estudiantes que necesitan organizar sus actividades académicas, consultar prioridades y planificar sus entregas.

### Historias de usuario y criterios de aceptación

### Historias de usuario y criterios de aceptación

1. Como estudiante, quiero tener todas mis tareas organizadas en un solo lugar para saber qué actividades tengo pendientes y cuáles ya he terminado.

   Criterio de aceptación: Al ingresar a la aplicación, puedo visualizar mis cinco tareas con sus respectivos títulos, prioridades y estados.

2. Como estudiante, quiero poder seleccionar una tarea y ver más información sobre ella para recordar exactamente qué tengo que hacer.

   Criterio de aceptación: Al seleccionar una tarea del listado, se abre una pantalla donde puedo consultar su descripción, prioridad, estado y usuario correspondiente.

3. Como estudiante, quiero agregar nuevas tareas cuando tenga actividades o trabajos pendientes para llevar un mejor control de mis responsabilidades.

   Criterio de aceptación: En una futura versión, podré ingresar los datos de una nueva tarea mediante un formulario y verla reflejada en mi listado.

4. Como estudiante, quiero tener la opción de modificar mis tareas porque a veces cambian las indicaciones de los trabajos o necesito corregir alguna información.

   Criterio de aceptación: Cuando se implemente la función de edición, los cambios que guarde deberán aparecer tanto en el listado como en el detalle de la tarea.

5. Como estudiante, quiero eliminar las tareas que ya no necesito para evitar acumular actividades innecesarias y mantener mi lista ordenada.

   Criterio de aceptación: Cuando esté disponible esta función, podré eliminar una tarea después de confirmar la acción y esta dejará de aparecer en el listado.

### Modelo de datos

La entidad `Task` representa una tarea dentro de la aplicación y contiene los siguientes atributos:

- `id`: número entero único que identifica una tarea.
- `title`: texto que contiene el título de la actividad.
- `description`: texto con la descripción detallada de la tarea.
- `priority`: nivel de prioridad (Alta, Media o Baja).
- `isCompleted`: valor booleano que indica si la tarea está completada o pendiente.
- `userId`: número entero que identifica al usuario de prueba.

El modelo está definido en `lib/task.dart` e incorpora el constructor `Task.fromJson()` para convertir datos JSON en objetos de tipo `Task`.

### Pantallas previstas

Lista de tareas: muestra las cinco actividades mediante tarjetas con título, prioridad e indicador visual de estado. En futuras sesiones permitirá crear nuevas tareas.

Detalle de tarea: presenta el título, descripción, prioridad, estado e identificador del usuario de la tarea seleccionada. Posteriormente podrá incorporar opciones para editar y eliminar.

Formulario de tareas: pantalla prevista para registrar y modificar actividades, utilizando campos como título, descripción y prioridad.

### Requisitos no funcionales

- La interfaz debe mostrar información clara y comprensible.
- La navegación entre el listado y el detalle debe ser sencilla.
- Cada tarea debe contar con un identificador único.
- La aplicación debe organizar visualmente las tareas según su información y prioridad.
- Si se consulta un identificador inexistente, la aplicación debe mostrar un mensaje informativo en lugar de cerrarse.

### Contrato de API que necesitaremos

| Método HTTP | Endpoint | Descripción |
|---|---|---|
| GET | `/tasks` | Consultar todas las tareas |
| GET | `/tasks/:id` | Consultar una tarea específica |
| POST | `/tasks` | Registrar una nueva tarea |
| PATCH | `/tasks/:id` | Actualizar parcialmente una tarea |
| DELETE | `/tasks/:id` | Eliminar una tarea |

La API concreta se seleccionará en futuras sesiones. Actualmente TaskFlow trabaja con datos locales y no realiza solicitudes a un servidor. Las rutas anteriores representan requisitos previstos, no servicios que ya estén implementados.