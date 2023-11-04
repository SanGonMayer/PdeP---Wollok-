class Cupon {
	var fueUsado = false
	const porcentajeDescuento
	
	method fueUsado() = fueUsado	
	
	method usar(){
		fueUsado = true
	}
	
	method aplicarDescuento(unPrecio){
		var precioConDescuento
		precioConDescuento = unPrecio - unPrecio * porcentajeDescuento
	}
	
}
