extends Node2D

var step = 0

func _ready():
	$PackageHighlights/Header.visible = false
	$PackageHighlights/IP.visible = false
	$PackageHighlights/TCP.visible = false
	$PackageHighlights/Data.visible = false
	$PackageHighlights/Footer.visible = false

func _process(delta):
	if step == 0:
		$PackageHighlights/Data.visible = true
	elif step == 1:
		$PackageHighlights/TCP.visible = true
	elif step == 2:
		$PackageHighlights/IP.visible = true
	elif step == 3:
		$PackageHighlights/Header.visible = true
		$PackageHighlights/Footer.visible = true
		

func next_step():
	step += 1

func get_step():
	return step
