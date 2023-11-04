import NoSePuedeAgregarException.*

class ArbolNavidenio{
	var regalos = []
	var tarjetas = []
	var adornos = []
	var beneficiarios = []
	
	method capacidadParaContenerRegalos()
	
	method agregarRegalo(unRegalo){
		if(self.cantidadRegalos() < self.capacidadParaContenerRegalos()){
			unRegalo.add(regalos)
		}else {
			throw new NoSePuedeAgregarException(message="No hay mas espacio")
		}
	}
	
	method cantidadRegalos() = 
		regalos.sum()
		
	method beneficiarios(){
		regalos.map({unRegalo => unRegalo.destinatario()})
		tarjetas.map({unaTarjeta => unaTarjeta.destinatario()})
	}
	
	method costoTotalRegalos() =
		self.preciosRegalos().sum()
	
	method preciosRegalos(){
		return regalos.map({unRegalo => unRegalo.precio()})
	}
	
	method importanciaArbolNavidenio(){
		return self.importanciaAdornosArbol().sum()
	}
	
	method importanciaAdornosArbol(){
		return adornos.map({unAdorno => unAdorno.importancia()})
	}
	
	method adornoMasPesado(){
		adornos.max({unAdorno => unAdorno.peso()})
	}
	
	method regalosTeQuieroMucho(){
		return regalos.filter({unRegalo => unRegalo.esRegaloTeQuieroMucho(self.umbralDePrecioRegaloPromedio())})
	}
	
	method umbralDePrecioRegaloPromedio(){
		return self.costoTotalRegalos() / regalos.size()
	}
}

class ArbolNatural inherits ArbolNavidenio{
	var vejez
	var tamanioTronco
	
	override method capacidadParaContenerRegalos() =
		vejez * tamanioTronco
}

class ArbolArtificial inherits ArbolNavidenio{
	var varas
	
	override method capacidadParaContenerRegalos() =
		varas
}


