import piratas.*
import misiones.*
import barcos.*

class Pirata { 
    
    var items = []
    var nivelDeEbriedad
    var cantidadDeDinero
    
    method nivelDeEbriedad(){
        return nivelDeEbriedad
    }

    method esUtil(unaMision) {
        return unaMision.cumpleRequisitos(self)
    }
    
    method tieneMasDeXMonedas(cantidad) {
        return cantidadDeDinero < cantidad
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

    method tomarGrogXD(){
        nivelDeEbriedad = nivelDeEbriedad + 5
        cantidadDeDinero -= 1
    }

    method esPobre(){
        return cantidadDeDinero == 0 
    }

} 

const barbanegra = new Pirata(items = ["brujula", "cuchillo", "cuchillo", "dienteDeOro", "grogXD", "grogXD", "grogXD"], nivelDeEbriedad = 0, cantidadDeDinero = 0)
