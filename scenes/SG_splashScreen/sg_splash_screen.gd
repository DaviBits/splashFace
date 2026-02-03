extends Control
@onready var rich_text_label: RichTextLabel = $RichTextLabel
@onready var comp_animation: AnimationPlayer = $comp_animation
@onready var name_animation: AnimationPlayer = $name_animation
@onready var fade_courtain: ColorRect = $fade_courtain
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _ready() -> void:
	play_splash_screen()
	
func play_splash_screen()->void:
	fade_in()
	comp_animation.play("turning_on")
	name_animation.play("appear_letters")
	await  name_animation.animation_finished
	fade_out()
func fade_in()->void:
	var tween= get_tree().create_tween()
	tween.tween_property(fade_courtain, "modulate:a", 0, 1.5)
	await tween.finished
	pass
	
func fade_out()->void:
	var tween= get_tree().create_tween()
	tween.tween_property(fade_courtain, "modulate:a", 1, 1.5)
	await tween.finished
	pass
	
