
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

object bigMac {
	method energiaPorGramo() { return 2 }
}

object alcaucil {
	method energiaPorGramo() {return 20}
	}

object sorgo {
	method energiaPorGramo() {return 9}
}

object mijo{
	var mojado = false
	var energiaBase = 20
	var energiaModificada 
	method mojarse() { mojado = true }
	method secarse() { mojado = false }
	method energiaPorGramo(){
		energiaModificada = energiaBase
		if (mojado)
			{
				energiaModificada -= 5
			}
		
			return energiaModificada
	}
}

object canelones{
	var salsa = false
	var queso = false
	var energiaBase = 20
	var energiaModificada
	method ponerQueso(){ queso = true } 
	method ponerSalsa(){ salsa = true }
	method sacarQueso(){ queso = false }
	method sacarSalsa(){ salsa = false }
	method energiaPorGramo(){
		energiaModificada = energiaBase
		if(queso)
		{
			energiaModificada += 7
		}
		if(salsa)
		{
			energiaModificada += 25
		}
		return energiaModificada

	}
}