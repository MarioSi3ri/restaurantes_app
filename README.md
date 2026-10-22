# 📱 Restaurantes App

Una aplicación móvil nativa para Android desarrollada con **Flutter** y **Firebase**, diseñada para la gestión en tiempo real (CRUD) de la información de restaurantes.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" alt="Firebase" />
  <img src="https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="Licencia" />
</p>

---

## 💡 Descripción del Proyecto

**Restaurantes App** es un desarrollo móvil básico enfocado en resolver la administración y actualización rápida de datos de establecimientos gastronómicos. Permite registrar, consultar, editar y eliminar restaurantes de manera instantánea, manteniendo todo sincronizado mediante la infraestructura en la nube de Firebase.

---

## ✨ Funcionalidades Principales

* 📝 **Gestión CRUD Completa:** Alta (creación), lectura, modificación y eliminación de registros de restaurantes.
* ⚡ **Sincronización en Tiempo Real:** Actualización inmediata de la información conectada a Cloud Firestore/Firebase.
* 🔍 **Búsqueda y Filtrado:** Búsqueda ágil de establecimientos por nombre o categoría.
* 🎨 **Interfaz Limpia y Responsive:** Diseño adaptado para diferentes tamaños de pantalla en dispositivos Android.

---

## 🛠️ Arquitectura y Tecnologías

| Tecnología | Propósito |
| :--- | :--- |
| **Flutter** | Framework UI para desarrollo móvil nativo. |
| **Dart** | Lenguaje de programación reactivo. |
| **Firebase Cloud Firestore** | Base de datos NoSQL en tiempo real. |
| **Firebase Auth / Core** | Gestión de servicios backend y autenticación. |

### 📁 Estructura del Código (`lib/`)

```text
lib/
├── models/       # Modelos de datos (Restaurante, etc.)
├── services/     # Integración con Firebase y lógica de negocio
├── widgets/      # Componentes UI reutilizables
└── main.dart     # Punto de entrada de la aplicación
```

## 💻 Ejecución Local

Para probar o ejecutar este proyecto en tu entorno local, asegúrate de contar con los siguientes componentes configurados:

### Prerrequisitos

* **Flutter SDK:** [Instrucciones de instalación](https://docs.flutter.dev/get-started/install)
* **Dart SDK:** (Incluido en la instalación de Flutter)
* **Entorno de Desarrollo:** Android Studio o VS Code (con las extensiones de Flutter y Dart)
* **Emulador o Dispositivo Físico Android:** Para ejecutar la aplicación
* **Firebase CLI:** Requerido para vincular la app a tu proyecto de Firebase (`npm install -g firebase-tools`)

---

### Pasos de Instalación

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/Mario-Si3ri/restaurantes_app.git](https://github.com/Mario-Si3ri/restaurantes_app.git)

2. **Acceder al directorio del proyecto:**
   ```bash
   cd restaurantes_app
   ```
3. **Instalar las dependencias:**
   ```bash
   flutter pub get
   ```
4. **Vincular con tu proyecto de Firebase:**
   Inicia sesión en Firebase y configura las credenciales locales:
   ```bash
   firebase login
   flutterfire configure
   ```
   (Este comando generará automáticamente los archivos de configuración en lib/firebase_options.dart y en el entorno Android).
   
6. **Ejecutar la aplicación:**
   ```bash
   flutter run -d android
   ```
## 📜 Licencia

Este proyecto está bajo la Licencia **MIT**. Consulta el archivo [LICENSE](LICENSE) para obtener más detalles sobre el uso del código.
