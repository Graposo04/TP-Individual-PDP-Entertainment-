// Productora la defino como un objeto ya que es una persona especifica
object productora {
    
    var property impuesto = 100
  const property bandas = [] //La productora trae una lista de bandas
}


// La entrada la defino como una clase ya que tengo muchas entradas con distintas bandas y fechas poseen datos diferentes
class Entrada {
    const property banda 
    const property fecha
    const precioInicial = 1000

//Metodo que responde como consulta con el precio final
method precio() = precioInicial + productora.impuesto()

}

// Asistente lo defino como una clase ya que tengo muchos asistentes a los shows que comparte caracteristicas con datos !=
class Asistente {


}

// Con respecto al abono puede ser fan o vip, por lo cual habra una herencia de abono--->Fan
//                                                                                 |--->Vip                           



// Bandas va a ser una clase abstracta ya que tengo varias bandas pero de distinto tipo por lo cual uso subclases para las 3

class Banda{

}