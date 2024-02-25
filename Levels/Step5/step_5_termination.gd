extends Node2D

func _process(delta):
	if $termination_label.get_step() >= 2:
		$termination_label/Button.visible = false

func trigger_end():
	$termination_label.set_step(2)
