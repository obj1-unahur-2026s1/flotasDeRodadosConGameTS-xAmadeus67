import autos.*


class Pedido {
  const distancia
  var tiempoMaximo
  var cantidadPasajeros
  const coloresIncompatibles = #{}
  
  method velocidadRequerida() {
     return distancia.div(tiempoMaximo)
  }

  method puedeSatisfacerlo(unAuto) {
     return 
unAuto.velocidad() >= self.velocidadRequerida() + 10 &&
unAuto.capacidad() >= cantidadPasajeros
&&
!coloresIncompatibles.contains(unAuto.color())
  }
  method agregarColorIncompatible(unColor) {
    return coloresIncompatibles.add(unColor)
  }
}