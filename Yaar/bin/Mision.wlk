class Mision {
	
	method tripulanteUtilParaMision(unTripulante)
	
	method barcoUtilParaMision(unBarco){
		return unBarco.tripulacionSuficiente() 
	}
	
}

class BusquedaDelTesoro inherits Mision{
	override method tripulanteUtilParaMision(unTripulante){
		return unTripulante.tiene("brujula") || unTripulante.tiene("mapa") || unTripulante.tiene("botellaGrogXD") && unTripulante.dinero() <= 5
	}
	
	override method barcoUtilParaMision(unBarco){
		return super(unBarco) && unBarco.alguienTieneLlave()
	}
}

class ConvertirseEnLeyenda inherits Mision{
	var itemObligatorio
	
	override method tripulanteUtilParaMision(unTripulante){
		return unTripulante.tiene(itemObligatorio) && unTripulante.cantidadItems() >= 10
	}
}

class Saqueo inherits Mision{
	const objetivo
	var dineroNecesario
	
	method objetivo() = objetivo 
	
	override method tripulanteUtilParaMision(unTripulante){
		return unTripulante.dinero() < dineroNecesario && unTripulante.seAnimaASaquear(objetivo)
	}
	
	override method barcoUtilParaMision(unBarco){
		return objetivo.esVulnerableAlBarco(unBarco)
	}
}


