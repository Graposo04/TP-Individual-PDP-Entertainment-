// Productora la defino como un objeto ya que es una persona especifica
object productora {
    
    var property impuesto = 100
    const property bandas = [] //La productora trae una lista de bandas (Colecciones)
    const property asistentes = [] //Lista de asistentes (Colecciones)

  method registrarAsistente(asistente) { asistentes.add(asistente) }

  method registrarBanda(banda) { bandas.add(banda) }

  method todasLasEntradasVendidas() = asistentes.flatMap({ a => a.historial() })

  method cantidadEntradasVendidas() = self.todasLasEntradasVendidas().size()

  method recaudacion() = self.todasLasEntradasVendidas().sum({ e => e.precio() })

  method gastoEnBandas() = bandas.sum({ b => b.presupuesto() })

  method gananciaTotal() = self.recaudacion() - self.gastoEnBandas()

  method entradasVendidasDe(banda) =
    self.todasLasEntradasVendidas().count({ ent => ent.banda() == banda })

  method bandaMasPopular() = bandas.max({ ban => self.entradasVendidasDe(ban) })
}


