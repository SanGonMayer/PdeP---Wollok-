class Nivel {
	const limite
	
	method puedeAgregarAlCarrito(unaCantidad){
		return unaCantidad < limite
	}
	
}

const bronce = new Nivel(limite=1)
const plata = new Nivel(limite = 5)

object oro{
	method puedeAgregarAlCarrito(unaCantidad){
		return true
	}
}
