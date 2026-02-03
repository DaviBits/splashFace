extends Node


var SOUNDS={
	
}

func play_sound(audio_player: AudioStreamPlayer2D, clip_key: String):
	audio_player.stream = SOUNDS[clip_key]
	audio_player.play()
