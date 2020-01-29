const express = require('express');
const app = express.Router();
const {Posttutor,getConsejo,getEntregables,getEstudiante,getIngresos,getRsolicitud,getTutor,getIDentrega,getIDregistro,Postestudiante,getIDestudiante,postEntregables,PostSolici,updateEntregables,updateEntrFirma,getResolucion,PostResolucion,getID} = require('../controllers/controladores');


//############
//GET
//############
app.get('/consejo', getConsejo);
app.get('/entregables',getEntregables);
app.get('/estudiante', getEstudiante);
app.get('/ingreso', getIngresos);
app.get('/registro',getRsolicitud);
app.get('/tutor',getTutor);
app.get('/resolucion', getResolucion);

//############
//GET FOR ID
//#############

app.get('/entregables/:id',getIDentrega);
app.get('/registro/:id',getIDregistro);
app.get('/estudiante/:id',getIDestudiante);
app.get('/datos/:id',getID)


//############
// POST
//############
app.post('/tutor',Posttutor);
app.post('/estudiante',Postestudiante);
app.post('/entregables',postEntregables);
app.post('/registro',PostSolici);
app.post('/resolucion', PostResolucion)
//############
//PUT
//############

app.put('/entregables/:id',updateEntregables);
app.put('/firma/:id',updateEntrFirma);

module.exports = app;