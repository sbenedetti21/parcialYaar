import piratas.*
import misiones.*
import barcos.*

class Pirata { 
    
    var items = []
    var nivelDeEbriedad
    var cantidadDeDinero
    
    method esUtil(unaMision) {
        return unaMision.cumpleRequisitos(self)
    }
    
    method esPobre() {
        return cantidadDeDinero < 5
    }

    method tiene(unItem) {
       return items.contains(unItem) 
    }
    
    method sabeBuscar() {
        return self.tiene("mapa") or self.tiene("brujula") or self.tiene("grogXD")
    }
    
    method tieneMasDeDiezItems(){
        return items.size() >= 10
    }
} 

const barbanegra = new Pirata(items = ["brujula", "cuchillo", "cuchillo", "dienteDeOro", "grogXD", "grogXD", "grogXD"], nivelDeEbriedad = 0, cantidadDeDinero = 0)
