class Dependencia {
  const flota = #{}
  const pedidos = #{}
  const empleados 
  
  method flota() = flota
  method empleados() = empleados 
  method agregar(unRodado) {
     flota.add(unRodado)
  }
  method quitar(unRodado) {
     flota.remove(unRodado)
  }
  method pesoTotalFlota() = flota.sum({r => r.peso()})
  method estaBienEquipada() {
     return flota.size() > 2 && self.todosVanA(100)
  }
  method todosVanA(unaVelocidad) {
     return flota.all({r => r.velocidad() >= unaVelocidad})
  }
  method capacidadTotalEnColor(color) {
     return self.flotaDeColor(blanco).sum({r => r.capacidad()})
  }
  method flotaDeColor(unColor) {
     return flota.filter({r => r.color() == unColor})
  }
  method colorDelRodadoMasRapido() {
     return self.rodadoMasRapido().color()
  }
  method rodadoMasRapido() {
     return flota.max({r => r.velocidad()})
  }
  method capacidadFaltante() {
     return (empleados - self.capacidadTotalFlota()).max(0)
  }
  method capacidadTotalFlota() {
     return flota.sum({r => r.capacidad()})
  }
  method esGrande() = empleados => 40 && flota.size() => 5

   method agregarPedido(unPedido) {
      return pedidos.add(unPedido)
   }
   method quitarPedido(unPedido) {
      return pedidos.remove(unPedido)
   }
   method totalPasajerosPedidos() {
      return pedidos.sum({p => p.cantidadDePasajeros()})
   }
   method quePedidoNoPuedeSatisfacerEstaFlota() {
      pedidos.filter({p => !self.algunAutoSatisfacePedido()})
   }
  method algunAutoSatisfacePedido() {
     flota.any({a => a.unPedido.puedeSatisfacerlo(a)})
  }

}