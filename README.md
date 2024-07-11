# Notas App

Esta aplicación de notas permite a los usuarios crear, editar y gestionar notas de manera sencilla y rápida. Cada nota requiere únicamente un título y una descripción.

## Características

- **Característica 1**: Home donde se listan todas las notas.
- **Característica 2**: Formulario para crear o actualizar notas.
- **Característica 3**: Descripción de cada nota.

## Requisitos

- Flutter: Versión `3.22.2`
- Dart: Versión `3.4.3`

## Instalación

Sigue estos pasos para configurar y ejecutar la aplicación:

1. Clona el repositorio:

   ```bash
   git clone https://github.com/JuanJose21/flutter-notes-app.git
   ```

2. Navega al directorio del proyecto:

   ```bash
   cd flutter-notes-app
   ```

3. Instala las dependencias:

   ```bash
   flutter pub get
   ```

4. Ejecuta la aplicación:

   ```bash
   flutter run
   ```

## Uso

En el home encontrarás un listado de las notas creadas, para crear una nota nueva lo haces por medio del botón ubicado en la parte inferior derecha del Home. El formulario para crear la nota solo te pedirá título y descripción (ambos son obligatorios), luego de creada la nota se te va a redirigir al home donde ya puedes ver la nota creada.
Si le das click o tap a la nota te va a llevar a la pantalla donde puedes ver toda la información de la nota, también tienes un botón en donde la puedes eliminar y uno para editarla. En caso de eliminarla te va a devolver al Home luego de hacer la eliminación; en caso de actualizar te llevara al formulario donde puedes cambiar el título o la descripción.

https://github.com/JuanJose21/flutter-notes-app/assets/36199607/4314ecb1-b097-4345-b496-72f30858da1c

## Estructura del Proyecto

En la carpeta lib encontrarás la estructura del proyecto:
En el archivo main encontrarás las configuraciones iniciales para el proyecto.
En la carpeta utils, encontrarás utilidades importantes, como lo puede ser configuración para la navegación del proyecto
En la carpeta presentation, encontrarás los widgets que son utilizados a lo largo de la app, las pantallas y providers que es donde manejamos el estado de la aplicación.
Para manejar el estado de las notas se usa la librería provider 6.1.2
