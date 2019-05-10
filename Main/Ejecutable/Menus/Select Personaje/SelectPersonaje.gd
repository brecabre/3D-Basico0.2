extends Node

var SelecNiveles = preload("res://Ejecutable/Menus/Select Niveles/SelectNiveles.tscn").instance()
var viewport = null
var viewport_sprite = null
var modelo = null
const SPEED = 40

func _ready():
	$VBoxContainer.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
	$"HUD 3D".set_position(Vector2(-100,-100))#-get_viewport().size.x/4 , -get_viewport().size.y/4))
	
	viewport = $"HUD 3D/Viewport"
	viewport_sprite = $"HUD 3D/ViewPortSprite"
#	viewport.set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)
#	viewport_sprite.texture = viewport.get_texture()
	modelo = $"HUD 3D/Viewport/modelo"
	
#	print (viewport.get_texture())
	print (viewport.name)
	


func _process(delta):
	modelo.rotation_degrees.y += delta * SPEED
	
	pass
	
func _load_scene(personaje):
	Global.personaje = load(personaje).instance()
	Global.personaje.set_name("personaje")
	Global.RutaPersonajeSelect = personaje
	get_node("/root/Global Menus").add_child(SelecNiveles)
	$".".queue_free()

func _on_Player_1_pressed():
	_load_scene("res://Ejecutable/Juego/Personajes/Personaje 1/Personaje1.tscn")
	get_parent().get_node("boton").play()
	pass # replace with function body

func _on_Player_2_pressed():
	_load_scene("res://Ejecutable/Juego/Personajes/Personaje 2/Personaje2.tscn")
	get_parent().get_node("boton").play()
	pass # replace with function body

#func _process(delta):
#	print (Global.personaje)
#	print (Global.personajeSelect)
