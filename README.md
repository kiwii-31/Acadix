# ACADIX – Sistema de gestión de materiales educativos

## Descripción del proyecto

ACADIX es una aplicación web educativa que permite organizar y consultar materias y materiales de estudio.

El sistema cuenta con dos tipos de usuarios:

- **Alumno:** puede consultar sus materias, temarios y archivos PDF disponibles.
- **Profesor:** puede gestionar sus materias, crear temarios y subir, editar o eliminar materiales de estudio.
- **Administrador:** puede visualizar a todos los usuarios de la plataforma

## Tecnologías utilizadas

**Frontend**
- React
- Vite
- JavaScript
- CSS

**Backend**
- Node.js
- Express
- MySQL2

**Base de datos**
- MySQL / MariaDB
- MySQL Workbench

## Requisitos previos

Para ejecutar el proyecto se necesita:

- Node.js y npm.
- MySQL o MariaDB.
- MySQL Workbench (recomendado).
- Un navegador web.

## Instalación

### 1. Descargar el proyecto

Clonar el repositorio:

```bash
git clone URL_DEL_REPOSITORIO
```

Ingresar a la carpeta:

```bash
cd ACADIX
```

### 2. Configurar la base de datos

1. Abrir MySQL Workbench.
2. Conectarse al servidor de base de datos.
3. Crear o seleccionar la base de datos correspondiente.
4. Importar el archivo `acadix.sql`.
5. Comprobar que las tablas y los registros se hayan cargado correctamente.

### 3. Configurar el backend

Ingresar a la carpeta:

```bash
cd backend
```

Instalar las dependencias:

```bash
npm install
```
Si no hay un archivo `.env` crealo
Crear un archivo `.env` tomando como referencia `.env.example` y completar los datos de conexión:

Ejemplo del mio
```env
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=acadix
DB_PORT=3306

JWT_SECRET=dbcf953ae8c3a01cf724307746457a80ef48157237e434db3d19990950f8cbc112ad893f381e459019d014f141e512c7
JWT_EXPIRES_IN=8h
```
Iniciar el servidor:

```bash
node server.js
```

El backend se ejecuta en:

```text
http://localhost:3000
```

### 4. Configurar el frontend

Abrir otra terminal e ingresar a la carpeta:

```bash
cd frontend
```

Instalar las dependencias:

```bash
npm install
```

Iniciar la aplicación:

```bash
npm run dev
```

Abrir en el navegador la dirección que muestra Vite, normalmente:

```text
http://localhost:5173
```

## Funcionamiento

Una vez iniciados el backend, el frontend y la base de datos, se puede ingresar a ACADIX con un usuario registrado.
### Usuarios para probar
ADMIN
gmail: admin@acadix.com
Contraseña: acadix1234

ALUMNO
gmail: maria@gmail.com
Contraseña: Maria456

PROFESOR
gmail: profesor@gmail.com
Contraseña: Profesor123
