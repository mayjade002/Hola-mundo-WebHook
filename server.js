const express = require('express');
const app = express();

app.use(express.json());

// Ruta para recibir el webhook
app.post('/webhook', (req, res) => {
    const payload = req.body;
    console.log('Received payload:', payload);
    res.json({ message: 'Hola Mundo', receivedPayload: payload });
});

app.listen(4000, () => {
    console.log('Servidor corriendo en http://localhost:4000');
});
