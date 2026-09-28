extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func backstory():
	$backstory.play()
	
func chill():
	$chill.play()
func pour():
	$PouringLiquid.play()
func bell():
	$BellSfx.play()
	
func drink():
	$SippingSfx.play()
	
func mainmenu():
	$mainmenu.play()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
