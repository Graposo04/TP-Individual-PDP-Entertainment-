// Bandas va a ser una clase abstracta ya que tengo varias bandas pero de distinto tipo por lo cual uso subclases para las 3

class Banda {
  const property nombre

  method canon() = 1000000
  method gastoExtra()
  method popularidad()

  method presupuesto() = self.canon() + self.gastoExtra()
}

class Rock inherits Banda {
  const solosDeGuitarra

  override method gastoExtra() = 10000
  override method popularidad() = 100 * solosDeGuitarra
}

class Trap inherits Banda {
  const tieneHielo

  override method gastoExtra() = 0
  override method popularidad() = if (tieneHielo) 1000 else 0
  override method canon() = super() * self.popularidad()
}

class Indie inherits Banda {
  const instrumentos = []

  override method popularidad() = 3.14 * nombre.length()
  override method gastoExtra() = 500 * instrumentos.size()
}