import productora.*
// La entrada la defino como una clase ya que tengo muchas entradas con distintas bandas y fechas poseen datos diferentes

//Entrada delega el impuesto en la productora (Delegacion)
class Entrada {
    const property banda 
    const property fecha
    const precioInicial = 1000

//Metodo que responde como consulta con el precio final
method precio() = precioInicial + productora.impuesto()

}
