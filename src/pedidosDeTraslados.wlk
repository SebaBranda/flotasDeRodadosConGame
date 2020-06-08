import autos.*

class Pedido {
	
	var property distancia
	var property tiempoMaximoDeViaje
	var property cantidadDePasajeros
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida(){
		return distancia / tiempoMaximoDeViaje
	}
	method esteAutoCumple(unAuto){
		return ((unAuto.velocidadMaxima() - self.velocidadRequerida()).abs() >= 10
				and unAuto.capacidad() <= self.cantidadDePasajeros()
				and not coloresIncompatibles.any({c=>c == unAuto.color()}))
	}
	
	method acelerar(){ tiempoMaximoDeViaje -= 1 }
	method relajar() { tiempoMaximoDeViaje += 1 }
	
	
}
