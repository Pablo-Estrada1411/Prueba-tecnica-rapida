/* Primer Proyecto
 * Ponerle de nombre: DATOSEMPLEADO.BE.
 * Debera contener un endpoint tipo REST.
 * Funcionalidades del primer proyecto DATOSEMPLEADO.BE:
 * Crear un servicio web que se conecte a una base de datos MYSQL y obtenga información de una tabla y la retorne en formato JSON.
 */

const express = require('express'); // Se usa para conenctar con MySQL Express.
const cors = require('cors'); // Se agrega para poder trabajar con index en diferentes carpetas
const mysql = require('mysql2'); // Se instalo el mysql2 ya que el paquete en mysql no era compatible en la conexion a la base de datos
// npm install mysql2 
const app = express();
const port = 3001; // No modificar el puerto, ya que el 3000 ya esta en uso.

// Habilitar CORS para todas las solicitudes
app.use(cors());

// Configuración de la conexión a MySQL Workbench
const connection = mysql.createConnection({
    host: 'localhost',        // Dirección del servidor MySQL
    user: 'root',             // Usuario de MySQL Server
    password: 'Mysqlserver2024', // Contraseña de MySQL Server
    database: 'test'          // Nombre de la base de datos
});

// Conectar a la base de datos MySQL Wprkbench
// Si da error la conexion a la base de datos muestra un mensaje y el error
// De lo contrario mostrara un mensaje que indica que se conecto exitosamente a la base de datos TEST
connection.connect((err) => {
    if (err) {
        console.error('Error al conectar a la base de datos TEST:', err);
        return;
    }
    console.log('Conectado a la base de datos TEST');
});

// Endpoint para obtener los datos de la tabla COLABORADOR
app.get('/colaboradores', (req, res) => {
    const query = 'SELECT * FROM COLABORADOR';
    connection.query(query, (err, results) => {
        if (err) {
            console.error('Error ejecutando la consulta:', err);
            res.status(500).send('Error al obtener los datos');
            return;
        }   
        // Enviar los resultados en formato JSON
        res.json(results);
    });
});

// Inicia el servidor en el puerto 3001
app.listen(port, () => {
    console.log(`Servidor backend escuchando en http://localhost:${port}`);
});