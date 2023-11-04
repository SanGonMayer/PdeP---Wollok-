import Mision.*
import Pirata.*

class Barco {
	var tripulantes = #{}
	var mision
	const capacidad 
	
	method temible(){
		mision.barcoUtilParaMision(self)
	}
	
	method tripulantes() = tripulantes.size()
	
	method tripulacionSuficiente(){
		return tripulantes >= (capacidad * 0.9)
	}
	
	method alguienTieneLlave(){
		return tripulantes.anyOne({unTripulante => unTripulante.tiene("llave de cofre")})
	}
	
	method barcoPasadoDeGrogXD(){
		return tripulantes.forall({unTripulante => unTripulante.estaPasadoDeGrogXD()})
	}
	
	method tieneLugarParaUnoMas(){
		return capacidad - self.tripulantes() + 1 > 0
	}
	
	method agregarPirataATripulacion(unPirata){
		return tripulantes.add(unPirata)
	}
	
	method cambiarMision(unaMision){
		tripulantes.filter({unTripulante => unTripulante.sirvePirataParaMision(unTripulante)})
	}
	
	method pirataMasEbrio(){
		return tripulantes.max({unPirata => unPirata.ebriedad()})
	}
	
	method anclar(){
		return self.hacerTomarALosTripulantes() && self.perderPirata()
	}
	
	method hacerTomarALosTripulantes(){
		return tripulantes.forEach({unTripulante => unTripulante.tomarTragoDeGrogXD()}) 
	}
	
	method perderPirata(){
		return tripulantes.remove(self.pirataMasEbrio())
	}
	
	method tripulantesEspiasDeLaCorona(){
		tripulantes.filter({unTripulante => })
	}
	
	method cantidadTripulantesPasadosDeGrogXD(){
		self.tripulantesPasadosDeGrogXD().size()
	}
	method tripulantesPasadosDeGrogXD(){
		return tripulantes.filter({unTripulante => unTripulante.estaPasadoDeGrogXD()})
	}
 	method tripulantePasadoDeGrogXDConMasDinero(){
 		return self.tripulantesPasadosDeGrogXD().max({unTripulante => unTripulante.dinero()})
 	}
	
}
