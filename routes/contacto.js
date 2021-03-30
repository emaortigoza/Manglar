const express = require('express')
const router = express.Router();
const nodemailer = require('nodemailer')
const Sequelize = require('sequelize')
const db = require('../config/db')


router.get('/',function(req,res){
  res.render('contacto', {title: "Contacto"})
})


router.post('/', function(req, res){
  let nombreForm, emailFrom, localidadFrom, mensajeFrom
  nombreForm = req.body.nombre
  emailForm= req.body.email
  localidadForm= req.body.localidad
  mensajeForm= req.body.mensaje

  function validacion(){
    if (nombreForm == "" || emailForm =="" || localidadForm =="") {
      let validacion ="Flatan completar todos los datos"
      
      
      res.render('contacto', {
        validacion,
        nombreForm,
        emailForm,
        localidadForm,
        mensajeForm,
      })
    } else {
      async function main(){
        
        let transporter = nodemailer.createTransport({
          host: "smtp.gmail.com",
          port:465,
          secure: true,
          auth:{
            user: "emaortigoza@gmail.com",
            pass:"tcqdfbdkbqpcdwdi",
          },
        });

        let info = await transporter.sendMail({
          from:`${nombreForm} <${emailForm}>`,
          to: "emaortigoza@gmail.com",
          subject: "Nuevo contacto",
          html: `Nombre: ${nombreForm} <br> Email: ${emailForm} <br> Localidad ${localidadForm} <br> Mensaje ${mensajeFrom}`,

        });

        const envioForm =db.define('contacto',{
          id:{
            type: Sequelize.NUMBER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true,
          },
          nombre:{
            type:Sequelize.STRING},
          email:{
            type:Sequelize.STRING
          },
          localidad:{
            type:Sequelize.STRING
          },
          mensaje:{
            type:Sequelize.STRING
          }, 
        })

        try{
          const enviar = await envioForm.create({
            id:'',
            nombre: nombreForm,
            email: emailForm,
            localidad: localidadForm,
            mensaje: mensajeForm,
          })
          console.log(enviar)
          console.log("Dato enviado")
        }

        catch(error) {
          console.log(error + "/ Enviado desde el form contacto")
        }

        res.render('contacto', {
          nombreForm,
          emailForm,
          localidadForm,
          envio: true
        })

      }
      main().catch(console.error);
    }
  }
   
  validacion()
})

module.exports = router;