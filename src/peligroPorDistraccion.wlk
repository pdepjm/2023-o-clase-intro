/** Código hecho en clase */
object homero {
	
	//estado del objeto
	var cantidadDonas = 0
	
	//método de efecto
	method comprarDonas(){
		cantidadDonas = cantidadDonas + 12	
	}
	
	//método de consulta - el = devuelve
	method cantidadDonas() = cantidadDonas
	
	method comerDonas(){
		cantidadDonas = cantidadDonas - 1
	}
	
	method estaDistraido() = cantidadDonas < 2
	
}

object plantaNuclear {
	
	//atributo - estado interno
	var barrasUranio = 1000000000000
	var encargado = homero
	
	method estaEnPeligro() = barrasUranio > 10000 and encargado.estaDistraido() 

	method recibirCargamento(cantidad) {
		barrasUranio = barrasUranio + cantidad
	}
	
	method encargado(nuevoEncargado) {
		encargado = nuevoEncargado
	}
}

object patoBalancin {
	
	method estaDistraido() = false
}
