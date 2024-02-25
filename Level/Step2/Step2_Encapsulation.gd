extends Node2D

var step = 0

func _ready():
	$PackageHighlights/Header.visible = false
	$PackageHighlights/IP.visible = false
	$PackageHighlights/TCP.visible = false
	$PackageHighlights/Footer.visible = false

func _process(delta):	
	if $Control.get_step() == 3:
		$Control/Button.visible = false
		
func next_step():
	if step == 0:
		$PackageHighlights/TCP.visible = true
		$Control.display_data(1)
		$Control/Button.visible = false
		step += 1
	elif step == 1:
		$PackageHighlights/IP.visible = true
		$Control.display_TCP(1)
		step += 1
	elif step == 2:
		$PackageHighlights/Header.visible = true
		$PackageHighlights/Footer.visible = true
		$Control.display_IP(1)
		step += 1
	elif step == 3:
		step += 1
	elif step == 4:
		$Control.display_header_footer(1)
		$Control/Button.visible = true
		$Control.set_step(4)
		
func display_incorrect():
	if step == 0:
		$Control.display_data(0)
	elif step == 1:
		$Control.display_TCP(0)
	elif step == 2:
		$Control.display_IP(0)
	elif step == 3:
		$Control.display_header_footer(0)
	elif step == 4:
		$Control.display_header_footer(0)

func get_step():
	return step
