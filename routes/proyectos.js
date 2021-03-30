var express = require('express');
var router = express.Router();
const Sequelize= require('sequelize')
const db= require ('../config/db')

const proyectos = [
  {id : 1, titulo:"CASA PEZZI BARRIO NUEVO QUILMES" ,descripcion:"Proyecto de vivienda pensada como una solucion escultorica que rompe con lo rutinario. El diseño es consecuencia tambien de las condiciones del terrenoadquirido por el comitente." , img1:"img6.jpg" , img2:"img-6.jpg" , img3:"img-8.jpg" , img4:"img-9.jpg" ,},
  {id : 2, titulo: "STAND MILLER",descripcion:"Pensado como un contenedor muestrario de doble escala. Un pasaje a travez de los elementos producidos por la empresa metalurgica Miller. Resultando en las misma pieza dos escalas posibles de ejecucion." , img1:"img1.png" , img2: "img2.png", img3:"img3.png" , img4:"img4.png" ,},
  {id : 3, titulo:"PROPUESTA REMODELACION BAR GEEK" ,descripcion:"Propuesta realizada para reacondicionar el interior y fachada. La malla metalica recompone la fachada, generando un patio de ingreso mas resguardado" , img1: "bar1.png", img2:"bar2.png" , img3:"bar3.png" , img4:"bar4.png" ,}
]



router.get('/',function(req,res) {
  // res.send("Seccion productos")
  res.render('proyectos',{title:"Proyectos",proyectos})
})











module.exports = router;
