class CiudadCostera {
    var cantidadDeHabitantes

    method esVulnerableA(unBarco) {
        return cantidadDeHabitantes * 0.4 <= unBarco.cantidadDeTripulantes() || unBarco.estanTodosBorrachos()
    }

    method agregarHabitante(){
        cantidadDeHabitantes = cantidadDeHabitantes + 1
    }
     
    method cantidadDeHabitantes() {
    	return cantidadDeHabitantes
    }

    method puedeSerSaqueadoPor(unPirata){
        return unPirata.estaPasadoDeGrogXD()
    }

}

