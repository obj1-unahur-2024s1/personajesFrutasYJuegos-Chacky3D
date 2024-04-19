object manzana{
	var estadoDeMaduracion = amarilla.energia()
	
	method energiaQueOtorga(){
		return estadoDeMaduracion
	}
	method estadoDeMaduracion(color){
		estadoDeMaduracion = color.energia()
	}
	method modificarPropiedades(){
		estadoDeMaduracion = roja.energia()
	}
}

object mandarina{
	var property gramos = 60
	
	method energiaQueOtorga(){
		return 2 * (gramos / 10)
	}
	method modificarPropiedades(){
		gramos = gramos * 0.9
	}
}

object banana{
	method energiaQueOtorga(){
		return 5
	}
	method modificarPropiedades(){}
}

object agua{
	method energiaQueOtorga(){
		return 0
	}
	method modificarPropiedades(){}
}

object amarilla{
	method energia(){
		return 5
	}
}

object verde{
	method energia(){
		return 7
	}
}

object roja{
	method energia(){
		return 14
	}
}
