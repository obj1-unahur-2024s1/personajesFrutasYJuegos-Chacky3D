import personajes.*

object equipo {
	var property jugadorDerecho = maria
	var property jugadorIzquierdo = pepe
	var property directorTecnico = mario
	
	method rotarPosiciones(){
		const auxiliarJugador = jugadorDerecho
		jugadorDerecho = jugadorIzquierdo
		jugadorIzquierdo = auxiliarJugador
	}
	method incorporarNuevo(tecnico){
		directorTecnico = if (tecnico.energia() > directorTecnico.energia()) tecnico else directorTecnico
	}
	method promedioDeEnergia(){
		return (jugadorDerecho.energia() + jugadorIzquierdo.energia() + martin.energia()) / 3
	}
	method todosFelices(){
		return jugadorDerecho.estaFeliz() and jugadorIzquierdo.estaFeliz() and martin.estaFeliz()
	}
}
