import Profesionales.*
import provincias.*
import Universidades.*

class Empresa {

	var property profesionalesContratados
	var property honorarioDeReferencia

	method cantidadDeProfesionalesContratados() = profesionalesContratados.size()

	method cuantosEstudiaronEn(universidad) = profesionalesContratados.count({ profesional => profesional.universidad() == universidad })

	method profesionalesCaros() = profesionalesContratados.filter{ profesional => profesional.honorarios() > honorarioDeReferencia }

	method universidadesFormadoras() = profesionalesContratados.map({ profesional => profesional.universidad() }).asSet()

	method profesionalMasBarato() = profesionalesContratados.min{ profesional => profesional.honorarios() }

	method genteAcotada() = profesionalesContratados.any{ profesional => profesional.puedeTrabajarEn().size() > 3 }

	method puedeSatisfacerA(solicitante) = profesionalesContratados.any{ profesional => solicitante.puedeSerAtendidoPor(profesional) }

}

