object tito {
  var peso = 70
  var ultimaBebida = whisky
  var dosis = 0

  method peso() = peso
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }

  method beber(bebida, cantidad) {
    ultimaBebida = bebida
    dosis = cantidad
  }

  method velocidad() = (ultimaBebida.rendimiento(dosis, self) * 490) / self.peso()
}

//BEBIDAS
object whisky {
  method rendimiento(dosis, deportista) = (0.9) ** dosis
}

object terere {
  method rendimiento(dosis, deportista) = ((0.1) * dosis).max(1)
}

object cianuro {
  method rendimiento(dosis, deportista) {
    if (deportista.peso() <= 70) {
      return 0
    }
    else {
      return ((deportista.peso() / 100) + dosis)
    }
  }
}