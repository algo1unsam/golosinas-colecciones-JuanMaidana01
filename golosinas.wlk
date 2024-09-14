object bombon {
    method precio() = 5
    method sabor() = frutilla
    method peso() = _peso
    method gluten() = false
    var _peso = 15
    
    method morder() {
        _peso = (_peso*0.8) - 1
    }

    method morderBanado() {
        self.morder()
        _peso -= 2
    }

    method banarGolosina() {
        _peso += 4
    }
}

object alfajor {
    method precio() = 12
    method sabor() = chocolate
    method peso() = _peso
    method gluten() = true
    var _peso = 300

    method morder() {
        _peso *= 0.8
    }

    method morderBanado() {
        self.morder()
        _peso -= 2
    }

    method banarGolosina() {
        _peso += 4
    }
}

object caramelo {
    method precio() = 1
    method sabor() = frutilla
    method peso() =_peso
    method gluten() = false
    var _peso = 5

    method morder() {
        _peso -= 1
    }

    method morderBanado() {
        self.morder()
        _peso -= 2
    }

    method banarGolosina() {
        _peso += 4
    }
}

object chupetin {
    method precio() = 2
    method sabor() = naranja
    method peso() = _peso
    method gluten() = false
    var _peso = 7

    method morder() {
        if (_peso >= 2){
            _peso *= 0.9
        }
        return _peso
    }

    method morderBanado() {
        self.morder()
        _peso -= 2
        return _peso
    }

    method banarGolosina() {
        _peso += 4
    }
}

object oblea {
    method precio() = 5
    method sabor() = vainilla
    method peso() = _peso
    method gluten() = true
    var _peso = 250

    method morder() {
        if (_peso > 70){
            _peso *= 0.5
        }
        else{
            _peso *= 0.75
        }
    }

    method morderBanado() {
        self.morder()
        _peso -= 2
    }

    method banarGolosina() {
        _peso += 4
    } 
}

object chocolatin {
    method precio() = _precio
    method sabor() = chocolate
    method peso() = _peso
    method gluten() = true
    var _peso = 0
    var _precio = 0

    method pesoInicial(grs) {
        _peso = grs
        _precio = _peso*0.5
    }

    method morder() {
        _peso -= 2
        return _peso
    }

    method morderBanado() {
        self.morder()
        _peso -= 2
        return _peso
    }

    method banarGolosina() {
        _peso += 4
    }
}

object golosinaBanada {
    method precio() = _precio
    method sabor() = _sabor
    method peso() = _peso
    method gluten() = _gluten

    var _precio = null
    var _sabor = null
    var _peso = null
    var _gluten = null
    var golosinaAux = null
    var mordidas = 1

    method golosinaBase(golosina) {
        golosina.banarGolosina()
        _precio = golosina.precio() + 2
        _sabor = golosina.sabor()
        _peso = golosina.peso() // No sumo porque ya bañé la golosina.
        _gluten = golosina.gluten()
        golosinaAux = golosina
        mordidas = 1
    }

    method morder() {
        if (mordidas >= 0){
            _peso = golosinaAux.morderBanado()
            mordidas -= 1
        }
        else{
            _peso = golosinaAux.morder()
        }
        _sabor = golosinaAux.sabor()
    }
}

object tuttiFrutti {
    method precio() = _precio
    method sabor() = _sabor
    method peso() = _peso
    method gluten() = _gluten

    var _precio = null
    var _sabor = frutilla
    var _peso = 5
    var _gluten = null

    method gluten(opcion) {
        if (opcion == 0){
            // Libre de gluten.
            _precio = 7
            _gluten = false
        }
        else{
            _precio = 10
            _gluten = true
        }
    }

    method morder() {
        _sabor = _sabor.siguiente()
        return _peso
    }

    method morderBanado() {
        self.morder()
        _peso -= 2
        return _peso
    }

    method banarGolosina() {
        _peso += 4
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

object mariano {
    const property bolsaGolosinas = #{}

    method comprar(unaGolosina) {
        bolsaGolosinas.add(unaGolosina)
    }

    method desechar(unaGolosina) {
        bolsaGolosinas.pop(unaGolosina)
    }

    method probarGolosinas() {}

    method hayGolosinaSinTACC() {}

    method preciosCuidados() {}

    method golosinaDeSabor(unSabor) {}

    method golosinasDeSabor(unSabor) {}

    method sabores() {}
}