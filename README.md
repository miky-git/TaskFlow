## Estados de carga y error en TaskFlow — Sesión 8

En esta sesión mejoré la forma en que TaskFlow muestra las tareas obtenidas de la API REST. Ahora la aplicación permite identificar cuándo está cargando información, cuándo recibe tareas, cuándo la respuesta está vacía y cuándo ocurre un error de conexión.

### Pruebas realizadas

1. Estado de carga
Al iniciar TaskFlow o actualizar las tareas, aparece un indicador circular mientras se espera la respuesta de la API.
2. Estado con datos
Con `userId = 2` y conexión a internet, la aplicación muestra las tareas obtenidas de JSONPlaceholder. También permite abrir sus detalles y consultar el estado de cada actividad.
3. Estado vacío
Cambié temporalmente el identificador a `userId = 9999`. Como la API no devolvió tareas, apareció el mensaje «Todavía no hay tareas para mostrar» junto con el botón «Actualizar».
4. Estado de error
Desconecté temporalmente internet y presioné «Actualizar». La aplicación mostró «No se pudieron cargar las tareas» y habilitó el botón «Reintentar».
5. Recuperación mediante Reintentar
Restablecí la conexión a internet y presioné «Reintentar» sin cerrar TaskFlow. La aplicación volvió a consultar la API y mostró nuevamente las tareas.

### Resultado

Comprobé que TaskFlow diferencia una respuesta vacía de un error de conexión. Además, las pantallas de listado y detalle continúan funcionando mediante la arquitectura MVVM y Provider.

Al finalizar las pruebas, restauré `userId = 2` para mantener la consulta remota configurada en la sesión anterior.