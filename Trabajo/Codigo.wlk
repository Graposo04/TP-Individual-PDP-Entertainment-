// Productora la defino como un objeto ya que es una persona especifica
object productora {
    
    var property impuesto = 100
  const property bandas = [] //La productora trae una lista de bandas (Colecciones)
}


// La entrada la defino como una clase ya que tengo muchas entradas con distintas bandas y fechas poseen datos diferentes
//Entrada delega el impuesto en la productora (Delegacion)
class Entrada {
    const property banda 
    const property fecha
    const precioInicial = 1000

//Metodo que responde como consulta con el precio final
method precio() = precioInicial + productora.impuesto()

}

// Asistente lo defino como una clase ya que tengo muchos asistentes a los shows que comparte caracteristicas con datos !=
//Asistente delega el calculo del monot en el abono  (Delegacion)
class Asistente {
    const abono
    var dinero 
    const historial = [] //(Colecciones)

method hitorial() = historial.copy()
method tieneSaldoPositivo () = dinero > 0 

method comprarEntrada (banda, fecha){

    if(!self.tieneSaldoPositivo()){
        console.println ("Saldo insuficiente")
    }
    const entrada = new Entrada(banda = banda, fecha = fecha)
    dinero -= abono.montoAPagar(entrada.precio())
    historial.add(entrada)
}

method entradasDelAnioAnterior () =
historial.filter({ent => ent.fecha().year() == new Date().year() - 1 })

method nombresDeBandas () = historial.map({ent => ent.banda().nombre()})

method bonificar () { abono.bonificar() }
}
// Con respecto al abono puede ser fan o vip, por lo cual habra una herencia de abono--->Fan
//                                                                                 |--->Vip                           
//Historial devuelve una copia (Encapsulamiento)


class Abono{

    method descuento() //abstracto: lo definen las subclases

    method montoAPagar(precio) = precio * (100 -self.descuento()) / 100

    method bonificar () {} 
}

//"Inherits" -> declara la herencia | "override" aclara que pisa el metodo aproposito
class Fan inherits Abono {
    override method descuento() = 0
}

class Vip inherits Abono {
    var descuento

    override method descuento () = descuento
    override method bonificar () {descuento += 1}
}

//Tanto Fan y Vip responden a descuento y bonificar  (Polimorfismo)



// Bandas va a ser una clase abstracta ya que tengo varias bandas pero de distinto tipo por lo cual uso subclases para las 3

class Banda{

}