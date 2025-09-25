object knightRider {
    method peso() = 500
    method peligrosidad() = 10
    method esPesoPar() {
        return self.peso().even()
    }
}
object bumblebee {
    var esAuto = true
    method peso() = 800
    
    method transformarEnAuto() {
      esAuto = true
    }
    method transformarEnRobot() {
      esAuto = false
    }
    method peligrosidad() = if(esAuto) 15 else 30
    method esPesoPar() {
        return self.peso().even()
    }
}
object paqueteDeLadrillos {
    var cantidad = 10

    method cantidad(nuevaCantidad) {
        cantidad = nuevaCantidad
    }
    method peso() = 2 * cantidad
    method peligrosidad() = 2
    method esPesoPar() {
        return self.peso().even()
    }
}
object arena {
    var peso = 0 //Se puede poner tambien var property peso = 0 (un geter y un seter de una)

    method cambiarPeso(nuevoPeso) {
      peso = nuevoPeso
    }
    method peso() = peso 
    method peligrosidad() = 1
    method esPesoPar() {
        return self.peso().even()
    }
}
object bateriaAntiaerea {
    var estaConMisiles = false

    method cargarMisiles() {
        estaConMisiles = true
    }
    method descargarMisiles(){
        estaConMisiles = false
    }
    method peso (){
        if(estaConMisiles){
            return 300
        }
        else{
            return 200
        }
    }
    method peligrosidad(){
        if(estaConMisiles){
            return 100
        }
        else{
            return 0
        }
    }
    method esPesoPar() {
        return self.peso().even()
    }
}
object contenedor {
    const cosasAdentro = []

    method agregar(unaCosa) {
        cosasAdentro.add(unaCosa)
    }
    method agregarVariasCosas(variasCosas) {
        cosasAdentro.addAll(variasCosas)
    }
    method quitarCosa(unaCosa) {
        cosasAdentro.remove(unaCosa)
    }
    method peso(){
        return 100 + cosasAdentro.sum({cosa => cosa.peso()})
    }
    method peligrosidad() {
        if(cosasAdentro.isEmpty()){
            return 0
        }
        else{
            return cosasAdentro.max({c =>c.peligrosidad()}).peligrosidad()
        }
    }
    method esPesoPar() {
        return self.peso().even()
    }
}
object residuos {
    var property peso = 0
    method peligrosidad() = 200
    method esPesoPar() {
        return self.peso().even()
    }
}
object embalaje {
    var cosaEnvuelta = arena

    method envolver(unaCosa) {
        cosaEnvuelta = unaCosa
    }
    method peso() = cosaEnvuelta.peso()
    method peligrosidad() = cosaEnvuelta.peligrosidad() / 2
    method esPesoPar() {
        return self.peso().even()
    }
}