extends Node2D
@export var dialogue_resource: DialogueResource
@export var dialogue_resource1: DialogueResource
@export var dialogue_resource2: DialogueResource
@export var dialogue_resource3: DialogueResource
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not GameController.talk1:
		var cust_tween = create_tween()
		cust_tween.tween_property($Falmo,"position",Vector2(219.0,326),1.5).set_trans(Tween.TRANS_BACK)
		await cust_tween.finished
		AudioHandler.chill()
		DialogueManager.show_example_dialogue_balloon(dialogue_resource, "start")
		await DialogueManager.dialogue_ended
		$stations.show()
		print("ended dialogue")
		print("SHOW UI AND STUFF HERE")
	else:
		$duo.show()
		$Falmo.position = Vector2(219.0,326)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_serve_pressed() -> void:
	if GameController.cust == 1:
		if GameController.cupinsides.count("Salt Tiles") >= 1 and GameController.cupinsides.count("Sugar Cane") == 0 and GameController.cupinsides.count("Volcanic") == 0:
			GameController.cust1_win = true
			var cust_tween = create_tween()
			cust_tween.tween_property($Flamsip,"position",Vector2(267.249,315),1.5).set_trans(Tween.TRANS_BACK)
			AudioHandler.drink()
			await get_tree().create_timer(1.5).timeout
			var wow_tween = create_tween()
			wow_tween.tween_property($Flamwow,"position",Vector2(715.0,315),1.5).set_trans(Tween.TRANS_BACK)
			await get_tree().create_timer(1.5).timeout
			await get_tree().create_timer(2.5).timeout
			var bow_tween = create_tween()
			bow_tween.tween_property($FalmoB,"position",Vector2(492.0,315),1.5).set_trans(Tween.TRANS_BACK)
			await get_tree().create_timer(5.5).timeout
			$FalmoB.hide()
			$Flamwow.hide()
			$Flamsip.hide()
			GameController.cupinsides.clear()
			$duo.hide()
			DialogueManager.show_example_dialogue_balloon(dialogue_resource1, "start")
			await DialogueManager.dialogue_ended
			$Falmo.hide()
			var pget_tween = create_tween()
			pget_tween.tween_property($guanya,"position",Vector2(254.0,274),1.5).set_trans(Tween.TRANS_BACK)
			await pget_tween.finished
			DialogueManager.show_example_dialogue_balloon(dialogue_resource2, "start")
			await DialogueManager.dialogue_ended
			$stations.show()
	if GameController.cust == 2:
		if GameController.cupinsides.count("Salt Tiles") == 0 and GameController.cupinsides.count("Sugar Cane") >= 1 and GameController.cupinsides.count("Volcanic") >= 1:
			GameController.cust2_win = true
			#elephant
	if GameController.cust == 3:
		if GameController.cupinsides.count("Salt Tiles") >= 0 and GameController.cupinsides.count("Sugar Cane") == 0 and GameController.cupinsides.count("Volcanic") == 0:
			GameController.cust4_win = true
