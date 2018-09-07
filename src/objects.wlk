
object homero {
	var cantRosquillas = 0
	
	method comerRosquilla(){
		cantRosquillas += 1
		if(cantRosquillas == 10){
			self.irAlMedico()
		}
	}
	
	method irAlMedico(){
		drNick.recibir(self)
	}
	
	method serAtendido(){
		cantRosquillas = 0
	}
	method cantRosquillas() {
		return cantRosquillas
	}
}

object abuelo{

	var resistencia = 15
	
	method caminar(){
		resistencia -= 1
		if(resistencia == 0){
			self.irAlMedico()
		}
	}
	
	method irAlMedico(){
		drNick.recibir(self)
	}
	
	method serAtendido(){
		resistencia = 10
	}	
}

object maggie{
	
	method irAlMedico(){
		drNick.recibir(self)
	}
	
	method escaparse(){
		self.irAlMedico()
	}
	
	method serAtendido(){
		//recibe la paleta pero no hace nada
	}	
}

object drNick{
	
	var salaDeEspera = []
	var nivelLocura = 0
	
	method recibir(paciente){
		salaDeEspera.add(paciente)
	}
	
	method atenderNormal(){
		self.atender(self.primerPaciente())
	}
	
	method atender(paciente){
		salaDeEspera.remove(paciente)
		paciente.serAtendido()
		nivelLocura += 10
	}
	
	method primerPaciente(){
		return salaDeEspera.first()
	}
	
	method irseTemprano(){
		salaDeEspera.remove(salaDeEspera.last())
	}	
	
	method nivelLocura(){
		return nivelLocura
	}
	
}

