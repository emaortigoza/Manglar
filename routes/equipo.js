var express = require('express');
var router = express.Router();
const Sequelize= require('sequelize')
const db= require ('../config/db')

function equipo(nombre, img, redes, bio){
  this.nombre = nombre
  this.img = img
  this.redes = redes
  this.bio = bio
}

let equipo1 = new equipo("Arq. Gabriel Galeano", "gaboperfil.jpg", "@ggaleano.art", "Manejos de proyectos")
let equipo2 = new equipo("Arq. Nicolas Salvatore","nicolas.jpg", "@nicosalvatore",  "Manejo de obras")

const equipos =[]
equipos.push(equipo1, equipo2)

router.get('/', function(req,res,next){

  res.render('equipo', {
    title:"Equipo",
    equipos
  })

})



module.exports = router;
