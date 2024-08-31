object castillo {
    var nivelDeDefensa = 150

    method altura() {
        return 20
    }
    method nivelDeDefensa() {
        return nivelDeDefensa
    }
    method recibirAtaque(valorDeAtaque) {
        nivelDeDefensa = 0.max(nivelDeDefensa - valorDeAtaque)
        //no me quiero pasar del valor minimo 0, entonces 
        //comparo 0 con el resultado 
        //y si el resultado es negativo el maximo va a ser 0
    }
    method recibirTrabajo() {
        nivelDeDefensa = 200.min(nivelDeDefensa + 20)
    }//con tope maximo de 200
    method otorgarValor() {
        return nivelDeDefensa * 0.2
    }
}

object aurora {
    var estaViva = true

    method altura() {
        return 1
    }
    method estaViva() {
        return estaViva
    }
    method recibirAtaque(valorDeAtaque) {
       if (valorDeAtaque <= 10) estaViva = false 
        //cuando es una sola sentencia no hace falta poner las llaves
        //operador ternario:
        // estaViva = (valorDeAtaque <= 10) {false} else {estaViva} 
    }
    method recibirTrabajo() {
        //no hace nada, no se pone nada en el metodo
    }// de indicacion
    method otorgarValor() {
        return 15
    }// de consulta
}

object tipa {
  
    var altura = 8
    method altura() {
        return altura
    }
    //getter: xq obtengo el valor
    // de un atributo
    method recibirAtaque(valorDeAtaque) {
       //no hace nada, queda en blanco el metodo
       //son metodos polimórficos
       //es un metodfo de indicacion que no hace nada
       //tiene que ser de indicacion porque esta en todos los elementos
       //como metodo de indicacion y al ser polimorfico tiene 
       //el mismo nombre, misma cantidad de parametros y mismo tipo de metodo 
       //deb ser igual para todos los elementos
    }
    method recibirTrabajo() {
        altura = altura + 1
    }
    method otorgarValor() {
        return altura * 2
    }
    
}