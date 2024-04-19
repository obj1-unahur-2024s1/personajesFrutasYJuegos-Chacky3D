import frutas.*
import juegos.*

object martin{
	var energia = 100
	var tieneHambre = false
	var estaFeliz = true
	var enLaDespensa = agua
	var actividadFisicaRealizada = 0
	
	method comprar(fruta){
		enLaDespensa = fruta
	}
	method alimentarse(){
		energia = energia + enLaDespensa.energiaQueOtorga()
		tieneHambre = false
		enLaDespensa = agua
		self.modificarEstado()
	}
	method practicar(deporte){
		energia = 0.max(energia + deporte.practicarDeporte())
		tieneHambre = true
		actividadFisicaRealizada = actividadFisicaRealizada + 1
		self.modificarEstado()
	}
	method nuevoDia(){
		energia = energia * 1.5
		enLaDespensa.modificarPropiedades()
		self.modificarEstado()
	}
	method modificarEstado(){
		estaFeliz = energia > 80 or (actividadFisicaRealizada >= 2 and !tieneHambre)
	}
	method energia() { return energia }
	method tieneHambre() { return tieneHambre }
	method estaFeliz() { return estaFeliz }
	method enLaDespensa() { return enLaDespensa }
}

object maria{
	var endorfina = 100
	var amuleto = roja.energia()
	var estaFeliz = endorfina > amuleto
	var energia = 214
	
	method practicar(deporte){
		endorfina = 0.max(endorfina + deporte.practicarDeporte())
		self.modificarEstado()
	}
	method cambiar(deAmuleto){
		amuleto = deAmuleto.energia()
		self.modificarEstado()
	}
	method modificarEstado(){
		energia = endorfina * 2 + amuleto
		estaFeliz = endorfina > amuleto
	}
	method endorfina() { return endorfina }
	method amuleto() { return amuleto }
	method energia() { return energia }
	method estaFeliz() { return estaFeliz }
}

object pepe{
	const estaFeliz = true
	const energia = 77
	
	method estaFeliz() { return estaFeliz }
	method energia() { return energia }
	method modificarEstado(){}
}

object carlos{
	const estaFeliz = false
	var energia = 0
	
	method modificarEstado(){
		energia = martin.energia() + maria.energia() + pepe.energia()
	}
	method estaFeliz() { return estaFeliz }
	method energia() { return energia }
	
}

object mario{
	const energia = pepe.energia() * manzana.energiaQueOtorga() / 2
	
	method energia() { return energia }
	method modificarEstado(){}
}

object luis{
	var energia = 193.randomUpTo(mario.energia() * 2)
	
	method energia() { return energia }
	method modificarEstado(){
		energia = 193.randomUpTo(mario.energia() * 2)
	}
}



