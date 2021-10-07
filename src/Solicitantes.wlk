class Persona {

	var property provincia

	method puedeSerAtendidoPor(profesional) = profesional.puedeTrabajarEn().contains(provincia)

}

class Institucion {

	var property universidadesReconocidas

	method puedeSerAtendidoPor(profesional) = universidadesReconocidas.contains(profesional.universidad())

}

