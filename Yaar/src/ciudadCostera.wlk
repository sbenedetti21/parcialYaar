class CiudadCostera {
    var cantidadDeHabitantes

    method esVulnerableA(unBarco) {
        return cantidadDeHabitantes * 0.4 <= unBarco.cantidadDeTripulantes()
    }

    method agregarHabitante(){
        cantidadDeHabitantes = cantidadDeHabitantes + 1
    }
    
    method cantidadDeHabitantes() {
    	return cantidadDeHabitantes
    }
}

