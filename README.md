# PINGULAND - Ibero Puebla
# Hackathon TalentLand 2025 - Track SaludDigna

# Orthanc Servidor DICOM personalizado

Este repositorio contiene una configuración personalizada de Orthanc, un servidor DICOM de código abierto ligero, para la gestión eficiente de imágenes médicas.

## 📋 Descripción

Este proyecto configura una instancia personalizada de [Orthanc](https://www.orthanc-server.com/), un potente servidor DICOM de código abierto desarrollado por Sébastien Jodogne. La implementación está dockerizada para facilitar su despliegue y gestión.

## 🚀 Características

- Servidor DICOM completo (puerto 4242)
- Interfaz web accesible (puerto 8042)
- Soporte para DICOMweb
- Persistencia de datos mediante volúmenes Docker
- Configuración personalizada a través de orthanc.json
- Soporte para plugins (opcionales)

## 🔧 Requisitos previos

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## 🛠️ Instalación y configuración

1. **Clonar el repositorio**

```bash
git clone [URL-del-repositorio]
cd [nombre-del-repositorio]
```

2. **Ejecutar el contenedor**

```bash
docker-compose up -d
```

3. **Acceder a la interfaz web**

Abre tu navegador y visita: [http://localhost:8042](http://localhost:8042)

Si has habilitado la autenticación (actualmente deshabilitada en la configuración predeterminada), necesitarás los credenciales configurados en `orthanc.json`.

## 🔍 Estructura del proyecto

- `docker-compose.yml` - Configuración de Docker Compose
- `Dockerfile` - Instrucciones para construir la imagen Docker
- `orthanc.json` - Archivo de configuración principal de Orthanc
- `dicom-data/` - Directorio para almacenamiento persistente
- `plugins/` - Directorio para plugins opcionales

## ⚙️ Configuración

La configuración principal se encuentra en el archivo `orthanc.json`. Los parámetros más relevantes son:

- **HttpPort**: 8042 (puerto de la interfaz web)
- **DicomPort**: 4242 (puerto DICOM)
- **AuthenticationEnabled**: false (cambiar a true para activar la autenticación)
- **DicomWeb**: habilitado en la ruta `/dicom-web/`

Para modificar la configuración:

1. Edita el archivo `orthanc.json`
2. Reconstruye el contenedor con `docker-compose up -d --build`

## 🔐 Seguridad

La configuración actual tiene `AuthenticationEnabled` establecido en `false` y `RemoteAccessAllowed` en `true`. Para entornos de producción, se recomienda:

1. Activar la autenticación cambiando `AuthenticationEnabled` a `true`
2. Configurar usuarios y contraseñas seguras en `RegisteredUsers`
3. Considerar el uso de HTTPS para la interfaz web

## 📚 Documentación adicional

- [Documentación oficial de Orthanc](https://book.orthanc-server.com/)
- [Referencia de la API REST](https://api.orthanc-server.com/)
- [Libro de Orthanc](https://book.orthanc-server.com/)

## 📄 Licencia

Este proyecto utiliza la imagen oficial de Orthanc desarrollada por Sébastien Jodogne, que está distribuida bajo la licencia [AGPLv3](https://www.gnu.org/licenses/agpl-3.0.html).

## 📞 Soporte

Para problemas relacionados con esta configuración específica, por favor abre un issue en este repositorio. Para preguntas generales sobre Orthanc, consulta los [foros oficiales](https://groups.google.com/g/orthanc-users).