class_name MonLabel
extends Label

var toto : int = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("toto %s" % get_my_name());
	var monlabel2:MonLabel = $"../Label2"
	monlabel2.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func get_my_name() -> String: 
	return "Toto"
