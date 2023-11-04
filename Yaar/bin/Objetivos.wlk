import Mision.*

class BarcoPirata inherits Saqueo{
	var tripulacion 
	
	method puedeSerSaqueado(unPirata){
		unPirata.estaPasadoDeGrogXD()
	}
	
	method esVulnerableAlBarco(unBarco){
		return tripulacion <= unBarco.tripulantes()/2
	}
}

class CiudadCostera inherits Saqueo{
	var habitantes 
	method puedeSerSaqueado(unPirata){
		return unPirata.ebriedad() >= 50
	}
	method esVulnerableAlBarco(unBarco){
		return habitantes <= unBarco.tripulantes() * 0.4 || unBarco.barcoPasadoDeGrogXD()
	}
}
