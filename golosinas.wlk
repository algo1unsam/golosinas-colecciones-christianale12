object bombon {
    const property precio=5
    var property peso = 15
    var property sabor = frutilla
    const property glutten = true
   
    method comer () {(peso * 0.8)-1}
      
    }

object alfajor {
    const property precio=12
    var property peso = 300
   
   var property sabor = chocolate
    method comer () {peso * 0.8}
}
object caramelo {
     const property precio = 1
    var property peso = 5
   
    const property glutten = true

   var property sabor = frutilla
    
    method comer () {peso -1}
}
object chupetin {
    const property precio=2
    var property peso = 7
    var property sabor= naranja
    const property glutten = true

    method comer () {if(peso<2){peso}else peso -(peso * 0.8)}
}
object obleas {
     const property precio = 5
    var property peso = 250
    var property sabor = vainilla
    const property glutten = false

 

    method comer () {if(peso > 70){peso * 0.5}else peso-(peso *0.25)}
}
object chocolatin {
    const property precio=0
    var property gramo=0
    var property sabor= chocolate
    
    const property glutten = false
    
    method precio() = 0.5 * gramo
 
    

    method comer () {gramo - 2}
}
object golosinabanada {
    
    var baniochocolate=4
   
   
    var property golosinabase = golosinabanada
    method golosinabase(golosina){
        golosinabase=golosina
    }
    method precio() = golosinabase.precio() + 2
    method peso() = golosinabase.peso() + baniochocolate
    method sabor() = golosinabase.sabor()
    method glutten() = golosinabase.tieneglutten()
    method comer () {golosinabase.mordisco()
    baniochocolate = (baniochocolate - 2).max(0)
 
}
}
object pastilla {
    const property glutten = true
    var property sabor = naranja
    //var gustos = ["furtilla","chocolate","naranja"]
    var property  precio= 0
    var peso = 5
    

    method comer(){
        sabor= sabor.siguiente()
    }
    
   
    method precio(algo) {return if(algo == glutten){precio=7}else precio=10}
    method peso() = peso
   
    method tieneglutten() = glutten
   
}
object naranja{
    method siguiente()=frutilla
}
object frutilla{
    method siguiente()=chocolate
}
object chocolate{
    method siguiente()=naranja
}
object vainilla{

}
object mariano{
    const property golosinas=[]
    //const property sabores=[]
    const property golosinasdeseadas=[bombon,alfajor,caramelo,chupetin,obleas,chocolatin,golosinabanada,pastilla]
    const property gustosdeseados=[chocolate,frutilla,vainilla,naranja]

    method comprar(unagolosina){golosinas.add(unagolosina)
    golosinasdeseadas.remove(unagolosina)
    gustosdeseados.remove(unagolosina.sabor())}

    method desechar(unagolosina){golosinas.remove(unagolosina)}

    method probargolosinas()= golosinas.forEach({golosinas=>golosinas.comer()})

    method golosinaSintacc()= golosinas.any({golosina => golosina.glutten()})

    method golosinascompradas(){return  golosinas.all({golosina => golosina.precio() < 10 })}

    method golosinadesabor() = golosinas.map({sabores=>sabores.sabor()})

    method golosinadesabor(gusto){ return golosinas.find({sabores=>sabores.sabor()==gusto})}

    method sabores()=golosinas.map({sabores=>sabores.sabor()}).asSet()

    method golosinamascara()=golosinas.max({golosina=>golosina.precio()})

    method pesogolosinas()=golosinas.sum({golosinas=>golosinas.peso()})

    method golosinasfaltantes(golosinasdesadas){return self.golosinasdeseadas()}

    method gustosfaltantes(gustosdeseados) = self.gustosdeseados()

    method baniar(unagolosina){ golosinabanada.golosinabase(unagolosina)
    golosinas.add(golosinabanada)}


    
}

class Golosina {
  var property gusto = [chocolate,naranja,frutilla]
	method sabor(gusto) = gusto

}