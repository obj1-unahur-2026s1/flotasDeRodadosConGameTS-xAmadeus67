/*

Object corsaBlanco {
   
    Method color() = "blanco"
    method capacidad() = 4
    Method velocidad() = 150
    method peso() = 1300
}

object corsaAzul {

    method color() = "azul"
    method capacidad() = 4
    Method velocidad() = 150
    method peso() = 1300
}

object corsaRojo {

    method color() = "rojo"
    method capacidad() = 4
    Method velocidad() = 150
    method peso() = 1300
}

*/

class Corsa {
 //los nombres en las clases empiezan en mayus y deben estar referenciados
    var color 
    method capacidad() = 4
    Method velocidad() = 150
    method peso() = 1300
    method pintarDe(unColor) {color = unColor}
    method color() = color 

}

// var unCorsaRojo = new Corsa(color="rojo")
// const listaDeAutos = [new Corsa(color="verde"), new Corsa(color="rojo")]

class Kwid {
  var tieneTanqueAdicional 

  method agregarTanqueAdicional() {
     tieneTanqueAdicional = true
  }
  method quitarTanqueAdicional() {
     tieneTanqueAdicional = false
  }
  method color() = "azul"
  method capacidad() = 
     if (tieneTanqueAdicional) 3 else 4
  method velocidad() = 
     if (tieneTanqueAdicional) 120 else 110
  method peso() =
     1200 + if (tieneTanqueAdicional) 150 else 0
}

// const kwidConTanque = new kwid(tieneTanqueAdicional = false)



object traffic {
   var interior = popular
   var motor = bataton

   method capacidad() = interior.capacidad()
   method velocidad() = motor.velocidad()
   method peso() = 4000 + motor.peso() + interior.peso()
   method color() = "blanco"
   method cambiarInterior(unInterior) {
      interior = unInterior 
   }
   method cambiarMotor(unMotor) {
      motor = unMotor
   }
   
}


// interiores

object comodo {

   method capacidad() = 5
   method peso() = 700
}

object popular {

   method capacidad() = 12
   method peso() = 1000
}


//Motores 

object pulenta {

  method peso() = 800
  method velocidad() = 130
}

object bataton {

  method peso() = 500
  method velocidad() = 80
}
