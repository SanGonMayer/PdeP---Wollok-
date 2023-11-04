 class Pirata{
 	var items = []
 	var ebriedad
 	var dinero
 	
 	method dinero() = dinero
 	method cantidadItems() = items.size()
 	method ebriedad() = ebriedad
 	
 	method esUtilPara(unaMision){
 		return unaMision.tripulanteUtilParaMision(self)
 	}
 	
 	method tiene(unItem){
 		return items.contains(unItem)
 	}
 	
 	method seAnimaASaquear(unObjetivo){
 		unObjetivo.puedeSerSaqueado(self)
 	}
 	
 	method estaPasadoDeGrogXD(){
 		return ebriedad >= 90
 	}
 	
 	method puedeFormarParteDeUnaTripulacion(unBarco){
 		return unBarco.tieneLugarParaUnoMas() && unBarco.sirvePirataParaMision(self)
 	}
 	
 	method incorporarseATripulacion(unBarco){
 		if(self.puedeFormarParteDeUnaTripulacion(unBarco)){
 			unBarco.agregarPirataATripulacion(self)
 		}
 	}
 	
 	method tomarTragoDeGrogXD(){
 		self.aumentarEbriedad(5) && self.gastarDinero(1) 
 	}
 	
 	method aumentarEbriedad(unaCantidad){
 		return ebriedad + unaCantidad
 	}
 	
 	method gastarDinero(unaCantidad){
 		return dinero - unaCantidad
 	}
 	
 	method esEspiaDeLaCorona(){
 		return not self.estaPasadoDeGrogXD() //falta completar 
 	}

 }