object voley{
	var property cantidadDeMinutos = 10
	
	method practicarDeporte(){
		return -(2 * cantidadDeMinutos)
	}
	
}

object futbol{
	var property energia = 10
	
	method practicarDeporte(){
		return - energia
	}
}

object aerobic{
	var property temperatura = 20
	const energia = 5
	
	method practicarDeporte(){
		return energia * (temperatura / 2)
	}
}

object basket{
	method practicarDeporte(){
		return -50
	}
}