extends Label

func _physics_process(_delta: float) -> void:
	var ppxy = str(int($"../..".position.x),", ", int($"../..".position.y))
	text = "player pos(x,y): " + ppxy
