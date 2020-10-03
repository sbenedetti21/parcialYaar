class Barco {
    
    var mision
    var tripulantes = #{}
    var capacidad

    method estaCasiLleno() {
        return tripulantes.size() >= (capacidad * 0.9)
    }
    
    method agregarTripulante(unTripulante){
        if(self.puedeSerTripulante(unTripulante)){
        tripulantes.add(unTripulante)
        }
    }

    method puedeSerTripulante(unTripulante){
        return unTripulante.esUtil(mision) and tripulantes.size() < capacidad 
    }
    
    method formaParte(unTripulante) {
    	return tripulantes.contains(unTripulante)
    }
    
    method cambiarMision(unaMision){
        mision = unaMision
        tripulantes = tripulantes.filter({unTripulante => unTripulante.esUtil(unaMision)})
    }
    
    method algunoTiene(unItem){
        return tripulantes.any({ unTripulante => unTripulante.tiene(unItem)})
    }
    
    method tripulantes(){
        return tripulantes
    }
}