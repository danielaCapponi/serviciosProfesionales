import provincias.*
import Universidades.*
import asociaciones.*

class ProfesionalVinculado {

	var property universidad
	var property recaudado = 0

	method puedeTrabajarEn() = #{ universidad.provincia() }

	method honorarios() = universidad.honorarioRecomendado()

	method cobrar(monto) {
		universidad.recibirDonacion(monto / 2)
	}

}

class ProfesionalAsociadoLitoral {

	var property universidad
	var property recaudado = 0

	method honorarios() = 3000

	method puedeTrabajarEn() = #{ entreRios, santaFe, corrientes }

	method cobrar(monto) {
		asociacionProfesionalesLitoral.recibirDonacion(monto)
	}

}

class ProfesionalLibre {

	var property universidad
	var property honorarios
	var property puedeTrabajarEn
	var property recaudado = 0

	method cobrar(monto) {
		recaudado += monto
	}

	method pasarDineroA(otroProfesional, monto) {
		otroProfesional.cobrar(monto)
			// No se especifica si se puede ir a números rojos
		recaudado -= monto
	}

}

