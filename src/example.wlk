/** OBJ1 ejercicio 1 el spa */

object olivia {
var concentracion = 6	

method gradoDeConcentracion(){
	return concentracion
}
method discuteConAlguien (){
	concentracion = concentracion - 1
}
method recibeMasaje(){
	concentracion = concentracion + 3
}
method pielGrasosa(){
	
}
}


object bruno {

var estaFeliz = true
var tieneSed = false
var peso = 5500 /** el peso esta en gramos no en kilos, lo hice
de esta manera para que sea mas facil de entender */

method recibeMasaje(){
	 estaFeliz = true
}
 method tomaAgua(){
 	tieneSed = true
 }

 method tomarUnBano(){
 	peso = peso -500
 	tieneSed = true
 }
 method comerFideos(){
   peso = peso + 250
 	tieneSed = true
 } 
 method correr(){
 	peso = peso - 300
 }
 method mirarElNoticiero(){
 	estaFeliz = false
 }
/** methods de los que nosinteresa */

/** como saber si bruno esta perfecto */

method estaPerfecto(){
return ( self.estaFelizAhora() and self.tieneSed() and (self.peso()> 50 and self.peso() < 80))
}

/** mehotd para simular un dia en su casa */
method mediodiaEnCasa(){
  self.comerFideos()
}

 /** method para saber el estado de su felicidad,
si tiene sed y peso */
 method estaFelizAhora(){
 	return estaFeliz
 }
  method peso(){
 	return peso
 }
  method tieneSed(){
 	return tieneSed
 }
 
}

object ramiro {
var contractura = 0
var pielGrasosa =false	

method recibirMasaje(){
	 contractura = (contractura - 1).max(0)
}

method banoDeVapor(){
	pielGrasosa = false
}
method ComerBicMac(){
 pielGrasosa = true
}
method bajarALaFosa(){

contractura = contractura + 1
pielGrasosa = true
}
method jugarAlPaddle(){
	contractura = contractura + 3
}
method diaDeTrabajo(){
  self.bajarALaFosa()
  self.ComerBicMac()
  self.bajarALaFosa()
}
/** methods para saber de los estados de ramiro */
method tieneLaPielGrasosa(){
	return pielGrasosa
}
method contracturaActual(){
	return contractura
}
}
object spa{
	method atender(persona) {
	persona.recibeMasaje()
	persona.banoDeVapor()
	}
}

