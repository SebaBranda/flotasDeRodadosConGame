object traffic {
	
	var interior 
	var motor 
		
	method setInterior(unInterior) { interior = unInterior	}
	method setMotor(unMotor) { motor = unMotor }
	method peso() { return interior.peso() + motor.peso() + 4000}
	method velocidadMaxima() { return motor.velocidadMaxima() }
	method capacidad() { return interior.capacidad() }
	method color(){ return "blanco" }
	
}	
object motorPulenta {
		
	method peso(){ return 800 }
	method velocidadMaxima() { return 130 }
}
	
object motorBataton {
		
	method peso(){ return 500 }
	method velocidadMaxima() { return 80 }
}

object interiorPopular {
	
	method peso() { return 1000 }
	method capacidad() { return 12 }
	
}

object interiorComodo {
	
	method peso() { return 750 }
	method capacidad() { return 5 }
	
}


