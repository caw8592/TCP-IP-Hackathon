extends Node2D

var step = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Entities/syn_ack_1.visible = false
	$Entities/syn_ack_2.visible = false
	$Entities/syn_entity_2.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $HandshakeLabel.get_step() == 0:
		pass
	elif $HandshakeLabel.get_step() % 2 == 0:
		$HandshakeLabel/Button.visible = false
	else:
		$HandshakeLabel/Button.visible = true

func next_step():
	if step == 0:
		$HandshakeLabel.display_step(2)
		$Entities/syn_ack_1.visible = true
		$Entities/syn_entity_2.visible = true
		step += 1
	elif step == 1:
		$HandshakeLabel.display_step(3)
		step += 1
	elif step == 2:
		$Entities/syn_ack_2.visible = true
		$HandshakeLabel.display_next()
		step += 1
	elif step == 3:
		$HandshakeLabel.display_step(6)

