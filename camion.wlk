import cosas.*
object camion {
    const carga = []

    method cargar(unaCosa) {
        carga.add(unaCosa)
    }
    method descargar(unaCosa) {
        carga.remove(unaCosa)
    }
    method pesoTotal() {
        return 1000 + carga.sum({c => c.peso()})
    }
    method todoPesoPar() {
      return carga.all({c => c.esPesoPar()})
    }
    method algunaCosaPesa(unValor) {
        return carga.any({c => c.peso() == unValor})
    }
    method primerCosaConPeligrosidad(unValor){
        return carga.find({c => c.peligrosidad() == unValor})
    }
    method todasLasCosasConMasPeligrosidad(unValor) {
        return carga.filter({c => c.peligrosidad() > unValor})
    }
    method cosasSuperanPeligrosidadDe(unaCosa) {
        return carga.filter({c => c.peligrosidad() > unaCosa.peligrosidad()})
    }
}