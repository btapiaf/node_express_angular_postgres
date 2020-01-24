const poll = require('../database');
const fs = require('fs');

// ############# CONSEJO #############
//#######GET#########
const getConsejo = async (req, res) => {
    try {
        const response = await poll.query('SELECT * FROM consejo');
        console.log("Excelente")
       
        return res.json(response.rows);
        
    } catch (e) {

        return console.log('error en la consulta :(');
        
    }
   
}
//########POST########
const postConsejo = async (req,res) =>{

}


// ############# ENTREGABLES ##############

//######GET
const getEntregables = async (req, res) => {
    try {
        const response = await poll.query('SELECT * FROM entregables ');

        let hola = response.rows;
        var palabra = JSON.stringify(hola)
        console.log(palabra);
        fs.appendFile('documento.json',palabra,(error)=>{
            if(error){
                throw error;
            }
            console.log('archivo guardado')
        });

        console.log("Excelente")
        return res.json(response.rows);
        
    } catch (e) {

        return console.log('error en la consulta :(');
        
    }
   
}
/////GET FOR ID

const getIDentrega = async(req,res) =>{
    try {
        const id = req.params.id;
        const response = await poll.query('SELECT * FROM entregables where id_entregable = $1',[id]);
        res.json(response.rows);
        console.log('todo en orden');
                
    } catch (err) {
        
        console.log("error :(");
        
        console.error(err);
        
    }
}




//#####POST

const postEntregables = async (req, res) => {
try {
    const {id_en,id_tu,id_es,
    dia,hora,porce,desc} = req.body
    const response = await poll.query('INSERT INTO entregables(id_entregable, id_tutor, id_estudiante, dia, hora, porcentaje, descripcion) values($1,$2,$3,$4,$5,$6,$7)',[id_en,id_tu,id_es,dia,hora,porce,desc]);

    res.json({
        body:{
            user :{id_en,id_tu,id_es,dia,hora,porce,desc}
        }
    });

    
} catch (error) {
    
}
 
    
}

// ########### ESTUDIANTE #############
const getEstudiante = async (req, res) => {
    try {
        const response = await poll.query('SELECT * FROM estudiantes');
        console.log("Excelente")
        return res.json(response.rows);
        
    } catch (e) {

        return console.log('error en la consulta :(');
        
    }
   
}


/////##########GET FOR ID
const getIDestudiante= async(req,res) =>{
    try {
        const id = req.params.id;
        const response = await poll.query('SELECT * FROM estudiantes where id_estudiante = $1',[id]);
        res.json(response.rows);
        console.log('todo en orden');
                
    } catch (err) {
        
        console.log("error :(");
        
        console.error(err);
        
    }
}


///////###############POST#############
const Postestudiante = async (req, res) =>{
    const { nombre,pass } = req.body;
    const response = await poll.query('INSERT INTO estudiantes(usuario,pass) VALUES ($1,$2)',[nombre,pass]);
     res.json({
         body:{
             user :{nombre,pass}
         }
     });
};

// ##### INGRESO_N #######
//#####GET

const getIngresos = async (req, res) => {
    try {
        const response = await poll.query('SELECT * FROM ingreso_n ');
        console.log("Excelente")
        return res.json(response.rows);
        
    } catch (e) {

        return console.log('error en la consulta :(');
        
    }
   
}

// ##### REGISTROSOLICITUD #######
//######GET
const getRsolicitud = async (req, res) => {
    try {
        const response = await poll.query('SELECT * FROM registrosoli ');
        console.log("Excelente")
        return res.json(response.rows);
        
    } catch (e) {

        return console.log('error en la consulta :(');
        
    }
   
}

//######GET FOR ID

const getIDregistro = async(req,res) =>{
    try {
        const id = req.params.id;
        const response = await poll.query('SELECT * FROM registrosoli where id_solicitud = $1',[id]);
        res.json(response.rows);
        console.log('todo en orden');
        

        
    } catch (err) {
        
        console.log("error :(");
        
        console.error(err);
        
    }
}

//#######POST REGISTRO SOLICITUD

const PostSolici = async (req, res) =>{
    const { tipo,desti,cont } = req.body;
    const response = await poll.query('INSERT INTO registrosoli(id_estudiante, id_tutor, tipo_solicitud, destinatario, contenido)VALUES (1,1,$1,$2,$3)',[tipo,desti,cont]);
     res.json({
         body:{
             user :{tipo,desti,cont}
         }
     });
};

// ##### TUTOR #######

///######GET
const getTutor = async (req, res) => {
    try {
        const response = await poll.query('SELECT * FROM tutor ');
        console.log("Excelente")
        return res.json(response.rows);
        
    } catch (e) {

        return console.log('error en la consulta :(');
        
    }
   
}

const Posttutor = async (req, res) =>{
    try {
    const { nombre,pass } = req.body;
    const response = await poll.query('INSERT INTO tutor(usuario_tutor,pass_tutor) VALUES ($1,$2)',[nombre,pass]);
     res.json(response);
        
    } catch (err) {
        console.error(err)
        
    }

    
};


module.exports = {getConsejo,Posttutor,getEntregables,getEstudiante,getIDentrega
,getIDregistro,getIngresos,getIngresos,getRsolicitud,getTutor,Postestudiante,getIDestudiante,postEntregables,
PostSolici};