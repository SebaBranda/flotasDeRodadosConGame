import wollok.game.*
import colores.*

class ChevroletCorsa {

	var color
	var property position = game.origin()
	var property listaDePosiciones = [position]
	var property image = "autitorojo.png"

	method velocidadMaxima() {
		return 150
	}

	method color() {
		return color
	}

	method setColor(unColor) {
		color = unColor
	}

	method capacidad() {
		return 4
	}

	method peso() {
		return 1300
	}
	method guardarposicion(){
		listaDePosiciones.add(self.position())
	}

	method pasoPor(posX,posY) {
		return listaDePosiciones.map({pos => [pos.x(),pos.y()]}).contains([posX,posY])
	}
	
	method pasoPorFila(numero){
		return listaDePosiciones.map({pos => pos.y()}).asSet().contains(numero)
	}
	
	method  recorrioFilas(lista_de_numeros) {
		return lista_de_numeros.all({numero => self.pasoPorFila(numero)})
	}

	method moverseArriba() {
		self.position(self.position().up(1))
		self.guardarposicion()
	}

	method moverseAbajo() {
		self.position(self.position().down(1))
		self.guardarposicion()
	}

	method moverseDerecha() {
		self.position(self.position().right(1))
		self.guardarposicion()
	}

	method moverseIzquierda() {
		self.position(self.position().left(1))
		self.guardarposicion()
	}
	
	method cambiarAVerde(){ image = verde.image() }
	method cambiarAAzul(){ image = azul.image() }
	method cambiarARojo(){ image = rojo.image() }

}

class RenaultKwid {

	var tanqueAdicional = true

	method velocidadMaxima() {
		return if (tanqueAdicional) {
			110
		} else {
			120
		}
	}

	method color() {
		return "azul"
	}

	method capacidad() {
		if (tanqueAdicional) {
			return 3
		} else {
			return 4
		}
	}

	method tanqueAdicional() {
		return tanqueAdicional
	}

	method setTanqueAdicional() {
		tanqueAdicional = not tanqueAdicional
	}

	method peso() {
		return if (tanqueAdicional) {
			1350
		} else {
			1200
		}
	}

}

class AutosEspeciales {

	var capacidad = 0
	var peso = 1300
	var color
	var velocidadMaxima = 0

	method velocidadMaxima() {
		return velocidadMaxima
	}

	method setVelocidadMaxima(vel) {
		velocidadMaxima = vel
	}

	method color() {
		return color
	}

	method setColor(unColor) {
		color = unColor
	}

	method capacidad() {
		return capacidad
	}

	method setCapacidad(cant) {
		capacidad = cant
	}

	method peso() {
		return peso
	}

	method setPeso(unPeso) {
		peso = unPeso
	}

}

