import NoPuedeAgregarAlCarritoExcpetion.*
import Nivel.*

class Usuario {
	const nombre
	var dineroDisponible
	var puntos
	var nivel
	var carrito = []
	var cupones = []
	
	method agregarAlCarrito(unProducto){
		if(nivel.puedeAgregarAlCarrito(carrito.size())){
		carrito.add(unProducto)
		}else{
			throw new NoPuedeAgregarAlCarritoExcpetion(message = "No puede agregar al carrito")
		}
	}
	
	method comprar(){
		const cuponSinUsar = self.cuponSinUsar()
		cuponSinUsar.usar()
		
		const precioCarrito = cuponSinUsar.aplicarDescuento(self.precioCarrito())
		dineroDisponible -= precioCarrito
		
		puntos += self.aumentoDePuntos(precioCarrito)
	}
	
	method aumentoDePuntos(unaCantidad) = 
		unaCantidad * 0.1
	
	method cuponSinUsar()=
		cupones.filter{unCupon => unCupon.fueUsado()}.anyOne()
	
	
	method precioCarrito() =
		carrito.sum{unProducto => unProducto.precioFinal()}
		
	method esMoroso() {
		return dineroDisponible < 0
	}
	
	method reducirPuntos(unaCantidad){
		puntos -= unaCantidad
	}
	
	method eliminarCuponesUsados(){
		cupones.removeAllSuchThat{unCupon => unCupon.fueUsado()}
		}
	
	method modificarNivel(){
		if(puntos < 5000){
			nivel = bronce
		}else { if(puntos >= 5000 && puntos < 15000){
				nivel = plata
			}else{
				nivel = oro
			}
		}
	}
}
		
