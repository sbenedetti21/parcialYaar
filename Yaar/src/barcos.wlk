class Barco {
    
    var mision
    var tripulantes = #{}
    var capacidad
  
    method estaCasiLleno() {
        return self.cantidadDeTripulantes() >= (capacidad * 0.9)
    }
    
    method agregarTripulante(unTripulante){
        if(self.puedeSerTripulante(unTripulante)){
        tripulantes.add(unTripulante)
        }
    }

    method puedeSerTripulante(unTripulante){
        return unTripulante.esUtil(mision) and self.cantidadDeTripulantes() < capacidad 
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

    method elMasEbrio(){
        return tripulantes.max({tripulante => tripulante.nivelDeEbriedad()})
    }

    method anclarEn(ciudad){
        if (tripulantes.any({unTripulante => unTripulante.esPobre()})) {
            throw new Exception(message = "Hay uno o mas tripulantes sin dinero") 
        } else {
            tripulantes.forEach({unTripulante => unTripulante.tomarGrogXD()})
            tripulantes.remove(self.elMasEbrio())     
            ciudad.agregarHabitante()

        }
    }

    method cantidadDeTripulantes() {
        return tripulantes.size()
    }

    method esTemible(){
        return mision.cumpleRequisitosBarco(self)
    }

    method esVulnerableA(unBarco){
        return self.cantidadDeTripulantes() <= unBarco.cantidadDeTripulantes() / 2 
    }

    method puedeSerSaqueadoPor(unPirata) {
        return unPirata.estaPasadoDeGrogXD()
    }

    method estanTodosBorrachos() {
        return tripulantes.all({unPirata => unPirata.estaPasadoDeGrogXD()})
    }
    
    method cuantosEstanBorrachos(){
        return tripulantes.count({tripulante => tripulante.estaPasadoDeGrogXD() })
    }
    
    method quienesEstanBorrachos(){
        return tripulantes.filter({tripulante => tripulante.estaPasadoDeGrogXD()})
    }

    method elBorrachoMasRico(){
        return self.quienesEstanBorrachos().max({ tripulanteBorrracho => tripulanteBorrracho.cantidadDeDinero() })
    }
    
    method cantidadDeItemsDistintosEnLaTripulacion(){
        return tripulantes.flatMap({tripulante => tripulante.items()}).size()
    }
}