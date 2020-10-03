class Mision {
    
    method cumpleRequisitosBarco(unBarco) {
        return unBarco.estaCasiLleno()
    }
}

object busquedaDelTesoro inherits Mision {

    method cumpleRequisitos(unPirata) {
       return unPirata.sabeBuscar() and unPirata.esPobre()      
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