import comidas.*


object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	method estaDebil() { return energia < 50} 
	method estaFeliz() { return energia.between(500 , 1000) }  
	
	method cuantoQuiereVolar() { 
		var cuanto = energia / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() {
		self.volar(5)
		self.comer(alpiste, 80)
		self.volar(5)
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} else if (self.estaFeliz()) {
			self.volar(8)	
		}
	}
}