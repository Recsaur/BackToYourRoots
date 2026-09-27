extends Node2D
@export var dialogue_resource: DialogueResource

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var cust_tween = create_tween()
	cust_tween.tween_property($Falmo,"position",Vector2(219.0,326),1.5).set_trans(Tween.TRANS_BACK)
	await cust_tween.finished
	DialogueManager.show_example_dialogue_balloon(dialogue_resource, "start")
	await DialogueManager.dialogue_ended
	print("ended dialogue")
	print("SHOW UI AND STUFF HERE")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
