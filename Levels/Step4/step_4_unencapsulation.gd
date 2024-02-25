extends Node2D

var step = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $UnencapsulationLabel.get_step() == 2:
		$UnencapsulationLabel/Button.visible = false

func next_step():
	if step == 0:
		$UnencapsulationLabel.header_footer_remove(1)
		$UnencapsulationLabel.set_step(1)
		$UnencapsulationLabel.display_next()
		step += 1
	elif step == 1:
		$UnencapsulationLabel.header_footer_remove(1)
		step += 1
	elif step == 2:
		$UnencapsulationLabel.ip_remove(1)
		step += 1
	elif step == 3:
		$UnencapsulationLabel.tcp_remove(1)
		step += 1
	elif step == 4:
		$UnencapsulationLabel.set_step(3)
		$UnencapsulationLabel.data_remove(1)
		$UnencapsulationLabel/Button.visible = true

func display_wrong():
	if step == 0 or step == 1:
		$UnencapsulationLabel.header_footer_remove(0)
	elif step == 2:
		$UnencapsulationLabel.ip_remove(0)
	elif step == 3: 
		$UnencapsulationLabel.tcp_remove(0)
	elif step == 4:
		$UnencapsulationLabel.data_remove(1)
		
func get_step():
	return step
