object bombon {
    const property precio = 5
    const property sabor = frutilla
    var property peso = 15
    const property gluten = 0
    
    method morder() {
        peso = (peso*0.8) -1
    }
}

object alfajor {
    const property precio = 12
    const property sabor = chocolate
    var property peso = 300
    const property gluten = 1

    method morder() {
        peso *= 0.8
    }
}

object caramelo {
    const property precio = 1
    const property sabor = frutilla
    var property peso = 5
    const property gluten = 0

    method morder() {
        peso -= 1
    }
}

object chupetin {
    const property precio = 2
    const property sabor = naranja
    var property peso = 7
    const property gluten = 0

    method morder() {
        if (peso < 2){
            peso *= 0.9
        }
    }
}

object oblea {
    const property precio = 5
    const property sabor = vainilla
    var property peso = 250
    const property gluten = 1

    method morder() {
        if (peso > 70){
            peso *= 0.5
        }
        else{
            peso *= 0.75
        }
    }
}

// Si pongo null no pasan los test.
object chocolatin {
    var property precio = 0
    const property sabor = chocolate
    var property peso = 0
    const property gluten = 1

    method pesoInicial(grs) {
        peso = grs
        precio = peso*0.5
    }

    method morder() {
        peso -= 2
    }
}

object golosinaBanada {
    var property precio = null
    var property sabor = null
    var property peso = null
    var property gluten = null
    var property golosinaAux = null

    method golosinaBase(golosina) {
        precio = golosina.precio() + 2
        sabor = golosina.sabor()
        peso = golosina.peso() + 4
        gluten = golosina.gluten()
        golosinaAux = golosina
    }

    method morder() {
        var mordidas = 1
        peso = golosinaAux.morder()
        if (mordidas >= 0){
            peso -= 2
            mordidas -= 1
        }
    }
}

object tuttiFrutti {
    var property precio = null
    var property sabor = frutilla
    var property index = 0
    var property peso = 5
    var property gluten = null

    method gluten(opcion) {
        if (opcion == 0){
            // Libre de gluten.
            precio = 7
            gluten = 0
        }
        else{
            precio = 10
            gluten = 1
        }
    }

    method morder() {
        sabor = sabor.siguiente()
    }
}

object frutilla {
    method siguiente() {
        return chocolate
    }
}
object chocolate {
    method siguiente() {
        return naranja
    }
}
object naranja {
    method siguiente() {
        return frutilla
    }
}
object vainilla {}