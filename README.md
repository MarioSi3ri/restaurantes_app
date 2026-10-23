# 🍽️ Restaurantes App

Aplicación multiplataforma desarrollada con **Flutter**, **Dart** y **Firebase Cloud Firestore** para administrar un catálogo de restaurantes mediante operaciones CRUD: crear, consultar, editar y eliminar registros.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" alt="Firebase" />
  <img src="https://img.shields.io/badge/Cloud%20Firestore-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" alt="Cloud Firestore" />
  <img src="https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="Licencia MIT" />
</p>

---

## 📋 Tabla de contenidos

- [Acerca del proyecto](#-acerca-del-proyecto)
- [Funcionalidades](#-funcionalidades)
- [Tecnologías utilizadas](#-tecnologías-utilizadas)
- [Estructura del proyecto](#-estructura-del-proyecto)
- [Requisitos previos](#-requisitos-previos)
- [Instalación y configuración](#-instalación-y-configuración)
- [Uso de la aplicación](#-uso-de-la-aplicación)
- [Modelo de datos](#-modelo-de-datos)
- [Comandos útiles](#-comandos-útiles)
- [Consideraciones de Firebase](#-consideraciones-de-firebase)
- [Contribución](#-contribución)
- [Licencia](#-licencia)

## 💡 Acerca del proyecto

**Restaurantes App** es una aplicación de ejemplo para la gestión de restaurantes desde una interfaz sencilla y directa. La información se almacena en una colección de **Cloud Firestore** y la pantalla principal escucha los cambios en tiempo real, por lo que las altas, modificaciones y eliminaciones se reflejan automáticamente en la lista.

El proyecto resulta útil como base para aprender o practicar:

- Desarrollo de interfaces con Flutter.
- Integración de aplicaciones Flutter con Firebase.
- Lectura reactiva de datos con `StreamBuilder`.
- Operaciones CRUD sobre Cloud Firestore.
- Validación básica de formularios en Flutter.

## ✨ Funcionalidades

- **Listado de restaurantes:** muestra los registros almacenados en Firestore.
- **Creación de restaurantes:** permite registrar un restaurante con su nombre y ubicación.
- **Edición de registros:** permite actualizar los datos de un restaurante existente.
- **Eliminación de registros:** permite borrar restaurantes directamente desde el listado.
- **Actualización en tiempo real:** utiliza un stream de Firestore para mantener sincronizada la interfaz.
- **Validación de formularios:** el nombre del restaurante es obligatorio.
- **Interfaz Material:** incluye barra superior, formularios, botones de acción e iconos para las operaciones principales.

## 🛠️ Tecnologías utilizadas

| Tecnología | Uso en el proyecto |
| --- | --- |
| [Flutter](https://flutter.dev/) | Framework para construir la interfaz multiplataforma. |
| [Dart](https://dart.dev/) | Lenguaje de programación de la aplicación. |
| [Firebase Core](https://firebase.google.com/docs/flutter/setup) | Inicialización y conexión de Flutter con Firebase. |
| [Cloud Firestore](https://firebase.google.com/docs/firestore) | Base de datos NoSQL utilizada para almacenar restaurantes. |
| Material Design | Componentes visuales y experiencia de usuario. |
| Android | Plataforma móvil incluida en el proyecto. |
| Web | Configuración web generada por Flutter. |

Las dependencias principales se encuentran declaradas en `pubspec.yaml`:

- `firebase_core: ^4.1.1`
- `cloud_firestore: ^6.0.2`
- `cupertino_icons: ^1.0.8`
- `flutter_lints: ^5.0.0`

## 📁 Estructura del proyecto

```text
restaurantes_app/
├── android/                         # Configuración de la aplicación Android
├── lib/
│   ├── firebase_options.dart        # Opciones de configuración de Firebase
│   ├── main.dart                    # Punto de entrada de la aplicación
│   ├── restaurant_form.dart         # Formulario para crear y editar restaurantes
│   └── restaurant_list.dart         # Listado y operaciones sobre restaurantes
├── test/                            # Pruebas del proyecto Flutter
├── web/                             # Configuración de la plataforma web
├── AndroidStudioProjects/           # Proyecto inicial generado por Android Studio
├── analysis_options.yaml            # Reglas de análisis estático de Dart
├── firebase.json                    # Configuración de FlutterFire
├── pubspec.yaml                     # Dependencias y metadatos del proyecto
├── pubspec.lock                     # Versiones bloqueadas de dependencias
├── LICENSE                          # Licencia MIT
└── README.md                        # Documentación del proyecto
```

### Flujo principal de la aplicación

1. `main.dart` inicializa Firebase antes de ejecutar la aplicación.
2. `restaurant_list.dart` consulta la colección `restaurants` de Firestore.
3. `StreamBuilder` recibe los cambios de la colección y actualiza la interfaz.
4. `restaurant_form.dart` permite crear nuevos documentos o modificar los existentes.
5. Las acciones de edición y eliminación se ejecutan usando el identificador del documento de Firestore.

## ✅ Requisitos previos

Antes de instalar el proyecto, asegúrate de tener lo siguiente:

- [Git](https://git-scm.com/).
- [Flutter SDK](https://docs.flutter.dev/get-started/install) compatible con Dart `^3.9.2`.
- Android Studio o Visual Studio Code con las extensiones de Flutter y Dart.
- Un emulador Android, un dispositivo físico Android o un navegador compatible.
- Una cuenta de Firebase con acceso a un proyecto de Cloud Firestore.
- Firebase CLI y FlutterFire CLI si vas a configurar Firebase desde cero.

Comprueba que Flutter esté correctamente instalado con:

```bash
flutter doctor
```

## 🚀 Instalación y configuración

### 1. Clonar el repositorio

```bash
git clone https://github.com/MarioSi3ri/restaurantes_app.git
cd restaurantes_app
```

### 2. Instalar las dependencias

```bash
flutter pub get
```

### 3. Configurar Firebase

El repositorio ya incluye archivos de configuración para Firebase, como `firebase.json`, `lib/firebase_options.dart` y `android/app/google-services.json`. Si vas a utilizar la configuración incluida, verifica que el proyecto de Firebase asociado esté disponible y que Cloud Firestore esté habilitado.

Para vincular el proyecto con una configuración propia:

```bash
firebase login
flutterfire configure
```

Durante la configuración, selecciona tu proyecto de Firebase y las plataformas que quieras utilizar. FlutterFire actualizará los archivos de configuración correspondientes.

### 4. Configurar Cloud Firestore

En la consola de Firebase:

1. Abre el proyecto de Firebase seleccionado.
2. Activa **Cloud Firestore**.
3. Crea la base de datos en la región que corresponda.
4. Configura reglas de seguridad adecuadas para tu entorno.
5. Utiliza la colección `restaurants` para almacenar los registros.

> Para pruebas locales puedes utilizar reglas temporales, pero no es recomendable mantener reglas públicas en producción.

### 5. Ejecutar la aplicación

Consulta los dispositivos disponibles:

```bash
flutter devices
```

Ejecuta la aplicación en el dispositivo seleccionado:

```bash
flutter run
```

También puedes indicar un dispositivo concreto:

```bash
flutter run -d <id-del-dispositivo>
```

Ejemplos:

```bash
flutter run -d chrome
flutter run -d android
```

## 📱 Uso de la aplicación

### Crear un restaurante

1. Inicia la aplicación.
2. Pulsa el botón flotante **`+`**.
3. Introduce el nombre del restaurante.
4. Añade su ubicación si lo deseas.
5. Pulsa **Guardar**.

### Consultar restaurantes

Los restaurantes guardados aparecen en la pantalla principal. Cada elemento muestra el nombre y la ubicación almacenados en Firestore.

### Editar un restaurante

1. Localiza el restaurante en el listado.
2. Pulsa el icono de edición.
3. Modifica el nombre o la ubicación.
4. Pulsa **Actualizar**.

### Eliminar un restaurante

Pulsa el icono de papelera situado junto al restaurante que quieras eliminar. La eliminación se realiza directamente en la colección `restaurants` de Firestore.

> La implementación actual no muestra un diálogo de confirmación antes de eliminar. Se recomienda añadirlo antes de utilizar la aplicación en un entorno real.

## 🗃️ Modelo de datos

La aplicación utiliza la colección `restaurants` en Cloud Firestore. Cada documento contiene, como mínimo, los siguientes campos:

```json
{
  "name": "Nombre del restaurante",
  "location": "Ciudad o dirección"
}
```

| Campo | Tipo | Obligatorio | Descripción |
| --- | --- | :---: | --- |
| `name` | `String` | Sí | Nombre del restaurante. |
| `location` | `String` | No | Ubicación o dirección del restaurante. |

## 🧪 Comandos útiles

Instalar dependencias:

```bash
flutter pub get
```

Analizar el código:

```bash
flutter analyze
```

Ejecutar las pruebas:

```bash
flutter test
```

Limpiar archivos generados:

```bash
flutter clean
```

Actualizar dependencias compatibles:

```bash
flutter pub upgrade
```

Crear una compilación APK de Android:

```bash
flutter build apk
```

Crear una compilación web:

```bash
flutter build web
```

## 🔐 Consideraciones de Firebase

- No expongas credenciales administrativas ni claves privadas en el repositorio.
- Revisa las reglas de seguridad de Firestore antes de publicar la aplicación.
- Limita las operaciones de lectura, creación, actualización y eliminación a usuarios autorizados cuando el proyecto pase a producción.
- Configura correctamente los identificadores de aplicación para cada plataforma.
- Si cambias de proyecto de Firebase, vuelve a ejecutar `flutterfire configure` y reemplaza los archivos de configuración generados.

## 🤝 Contribución

Las contribuciones son bienvenidas. Para proponer cambios:

1. Crea un fork del repositorio.
2. Crea una rama para tu mejora:

   ```bash
   git checkout -b feature/nueva-funcionalidad
   ```

3. Realiza tus cambios y verifica el proyecto:

   ```bash
   flutter analyze
   flutter test
   ```

4. Crea un commit descriptivo:

   ```bash
   git commit -m "feat: añade nueva funcionalidad"
   ```

5. Sube la rama y abre un Pull Request.

## 📄 Licencia

Este proyecto está distribuido bajo la **Licencia MIT**. Consulta el archivo [LICENSE](LICENSE) para conocer los términos completos de uso, modificación y distribución.

---

<p align="center">
  Desarrollado con ❤️ usando Flutter, Dart y Firebase.
</p>
