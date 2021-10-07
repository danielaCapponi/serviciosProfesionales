import provincias.*

class Universidad {

	var property provincia
	var property honorarioRecomendado
	var property totalRecibidoDonaciones = 0

	method recibirDonacion(monto) {
		totalRecibidoDonaciones += monto
	}

}

const universidadSanMartin = new Universidad(provincia = buenosAires, honorarioRecomendado = 3500)

const universidadRosario = new Universidad(provincia = santaFe, honorarioRecomendado = 2800)

const universidadCorrientes = new Universidad(provincia = corrientes, honorarioRecomendado = 2800)

const universidadHurlingham = new Universidad(provincia = buenosAires, honorarioRecomendado = 8800)

