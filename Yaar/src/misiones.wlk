class Mision {
    
    method cumpleRequisitosBarco(unBarco) {
        return unBarco.estaCasiLleno()
    }
}

object busquedaDelTesoro inherits Mision {

    method cumpleRequisitos(unPirata) {
       return unPirata.sabeBuscar() and unPirata.tieneMasDeXMonedas(5)     
    }
    
    override method cumpleRequisitosBarco(unBarco) {
        return super(unBarco) and unBarco.algunoTiene("llaveDelTesoro")
    }
}

class ConvertirseEnLeyenda inherits Mision {
    
    const itemParaSerLeyenda

    method cumpleRequisitos(unPirata) {
       return unPirata.tieneMasDeDiezItems() and unPirata.tiene(itemParaSerLeyenda)    
    }

}

class Saqueo inherits Mision {
    
    var property cantidadDeMonedasNecesarias
    var victima
    
    method cumpleRequisitos(unPirata) {
        return unPirata.seAnimaASaquearA(victima) and unPirata.tieneMasDeXMonedas(cantidadDeMonedasNecesarias)
    }

    override method cumpleRequisitosBarco(unBarco) {
        return super(unBarco) and victima.esVulnerableA(unBarco)
    }
   
}