class Producto{
	const nombre
	var precioBase
	
	method precio() =
		precioBase + precioBase * 0.21
		
	method precioFinal()
	
	method nombre(){
		return nombre
	}
	
	method nombreDeOferta(){
		return nombre + "SUPER OFERTA"
}
}

class Mueble inherits Producto{
	override method precioFinal() =
		self.precio() + 1000
}

class Indumentaria inherits Producto{
	var esDeTemporada 
	override method precioFinal() {
		if(esDeTemporada){
		return self.precio() + self.precio() * 0.1
		} else {
		return self.precio()
		}}
}

class Ganga inherits Producto{
	
	override method precioFinal(){
		return 0
		}
	
	override method nombreDeOferta(){
		return super() + "COMPRAME POR FAVOR"
	}
}
