
class Regalo {
	var precio
	var destinatario
	
	method destinatario() =
		destinatario
	
	method precio() =
		precio
	
	method esRegaloTeQuieroMucho(unPromedio){
		return precio > unPromedio
	}
	
}

class Tarjeta{
	var destinatario
	const valorAdjunto
	const precio = 2
	
	method destinatario() =
		destinatario
	
	method precio() =
		precio
	
}

class Adorno{
	var pesoBase
	var importancia
	const coeficienteSuperioridad
	
	method importancia()=
		pesoBase * coeficienteSuperioridad
	
	method peso() = 
		pesoBase
	
}

class Luz inherits Adorno{
	const luminosidad
	
	override method importancia()=
		super() * luminosidad
}

class FiguraElaborada inherits Adorno{
	const volumen
	
	override method importancia()=
		super() + volumen
}

class Guirnalda inherits Adorno{
	var aniosEnUso
	
	override method peso(){
		return pesoBase - 100 * aniosEnUso
	}
	
}
