import entrada.*
// Asistente lo defino como una clase ya que tengo muchos asistentes a los shows que comparte caracteristicas con datos distintos
//Asistente delega el calculo del monto en el abono  (Delegacion)
class Asistente {
    const abono
    var property dinero 
    const historial = [] //(Colecciones)

method historial() = historial.copy()
method tieneSaldoPositivo () = dinero > 0 

method comprarEntrada (banda, fecha){

    if(!self.tieneSaldoPositivo()){
         self.error("Saldo insuficiente: no se puede comprar la entrada")//Manejo de errores
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
//Historial devuelve una copia (Encapsulamiento) y quien quiera comprar debe usar comprarEntrada

