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

//Tanto Fan y Vip responden igual a descuento y bonificar  (Polimorfismo) el asistente no sabe cual tiene
