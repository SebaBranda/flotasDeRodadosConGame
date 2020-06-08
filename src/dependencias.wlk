import autos.*
import trafic.*

class Dependencia{

	const pedidos = []
	const flota = []	
	var cantidadEmpleados = 0
	
	method cantidadEmpleados(cant) { cantidadEmpleados = cant }
	method cantidadEmpleados(){ return cantidadEmpleados }
	method agregarAFlota(rodado) {
		flota.add(rodado)	
	}
	
	method cantidadDeAutos(){
		return flota.size()
	}
	
	method  quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	
	method  pesoTotalFlota() {
		return flota.sum({auto=>auto.peso()})
	}
	
	method  estaBienEquipada(){
		return flota.size() >= 3 and flota.all({auto=>auto.velocidadMaxima() > 100})
	}
	
	method   capacidadTotalEnColor(color) {
		return flota.filter({auto=>auto.color() == color }).sum({auto=>auto.capacidad()})
		
	}
	
	method  colorDelRodadoMasRapido() {
		return flota.max({auto=>auto.velocidadMaxima()}).color()
	}
	
	method capacidadFlota(){
		return flota.sum({auto=>auto.capacidad()})
	}
	
	method  capacidadFaltante() {
		return cantidadEmpleados - self.capacidadFlota()
	}
	
	method  esGrande() {
		return cantidadEmpleados >= 40 and flota.size() >= 5
	}
	method agregarPedido(unPedido){
		pedidos.add(unPedido)
	}
	method quitarPedido(unPedido){
		pedidos.remove(unPedido)
	}
	method totalDePasajerosEnPedidos(){
		return pedidos.sum({pedido=>pedido.cantidadDePasajeros()})
	}
	method colorIncompatibleGeneral(unColor){
		return pedidos.any({p=>p.coloresIncompatibles() == unColor})
	}
	
	method pedidosFrustrados(){
		return pedidos.filter({pedido=>pedido == not self.puedeSatisfacerPedido(pedido)})
	}
	
	method puedeSatisfacerPedido(pedido){
		return flota.all({auto=> pedido.esteAutoCumple(auto)})
	}
	
	method relajarGeneral(){
		pedidos.forEach({pedido=>pedido.relajar()})
	}
	
}
