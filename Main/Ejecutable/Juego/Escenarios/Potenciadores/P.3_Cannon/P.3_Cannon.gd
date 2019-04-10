extends Spatial

var preBala = preload("res://Ejecutable/Juego/Escenarios/Potenciadores/P.3_Cannon/Balika/balika.tscn")
var posPoseedorCannon
var rotPoseedorCannon

#func _ready():
#	pass


func _process(delta):
	
	posPoseedorCannon = get_parent().get_global_transform()
	rotPoseedorCannon = get_parent().get_rotation()

	
func Disparo():
	var bala = preBala.instance()
	get_parent().get_parent().add_child(bala) #instancia la bala a un nodo superior al cañon 
	bala.set_global_transform(posPoseedorCannon) # posiciona la bala en la posicion del cañon 
#	bala.set_rotation(rotPoseedorCannon) #  rota la bala segun el cañon
	bala.apply_impulse(rotPoseedorCannon, bala.get_global_transform().basis[0]*15) #impulsa la bala segun el cañon

