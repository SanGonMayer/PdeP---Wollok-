object pdeplibre {
	var usuarios = []
	var productos = []
	
	method reducirPuntosAMoroso(){
		self.usuariosMorosos().forEach {unUsuario => unUsuario.reducirPuntos(1000)}
	}
	
	method usuariosMorosos(){
		return usuarios.filter{unUsuario => unUsuario.esMoroso()}
	}
	
	
	method obtenerNombreDeOferta(){
		return productos.map{unProducto => unProducto.nombreDeOferta()}
	}
	
	method actualizarNivelDeUsuario(){
		return usuarios.forEach{unUsuario => unUsuario.modificarNivel()}	
	}
	
	
	
}
