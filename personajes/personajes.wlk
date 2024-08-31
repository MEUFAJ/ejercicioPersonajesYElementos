import elementos.*
import armas.*
object floki {
    var arma = ballesta

    method encontrar(elemento) {
        if(arma.estaCargada()){
            elemento.recibirAtaque(arma.potenciaDeAtaque())
            arma.registrarUso()
        }
    }
    method arma() {
        return arma
    }
    method arma(unArma) {
        arma = unArma
    }
    //setter: le pasamos un arma
    // al personaje
}

object mario {
    var valorRecolectado = 0
    var ultimoElemento = aurora

    method encontrar(elemento) {
         //se tiene que encomtrar on un elemento
         //el castillo le otorga 20% de su defensa, o sea el
         //castillo recupera parte de su defensa
        valorRecolectado = valorRecolectado + elemento.otorgarValor()
        elemento.recibirTrabajo()
        ultimoElemento = elemento
    }
    method esFeliz(){
        return valorRecolectado >= 50 or ultimoElemento.altura() >= 10
    }
}