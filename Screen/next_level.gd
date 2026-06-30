extends Node2D

@onready var livecontainer: HBoxContainer = $Live_counter
@onready var live: TextureRect = $Live_count/LIVE
@onready var live2: TextureRect = $Live_count/LIVE2
@onready var live3: TextureRect = $Live_count/LIVE3
@onready var live4: TextureRect = $Live_count/LIVE4
@onready var live5: TextureRect = $Live_count/LIVE5
@onready var level: Label = $LEVEL
@onready var timer: Label = $TIMER
var time

func _ready()-> void:
	await Timer(5.0)
	
	if Global.minigames_done < 5:
		Global.minigames_done = Global.minigames_done +1
		get_tree().change_scene_to_file("res://Screen/Minigame_" + str(Global.minigames_done)+ ".tscn")
		
		
	else:
		get_tree().change_scene_to_file("res://Screen/Title Screen.tscn")
		
func _process(delta:float) -> void:
	match Global.lives:
		4:
			live.hide()
		3:
			live.hide()
			live2.hide()
		2:
			live.hide()
			live2.hide()
			live3.hide()
		1:
			live.hide()
			live2.hide()
			live3.hide()
			live4.hide()
		0:
			livecontainer.hide()
	timer.text = str(time)
	level.text = "Level" + str(Global.minigames_done)
	
func Timer(start_time: float):
	
	time =start_time
	
	while time>0.0:
			await wait(0.1)
			time -=0.1
	return
	
func wait(seconds:float) -> void:
	await get_tree().create_timer(seconds).timeout
			
			
	
