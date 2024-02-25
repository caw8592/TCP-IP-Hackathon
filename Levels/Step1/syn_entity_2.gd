extends Node2D

var draggable = false
var dragging = false
var droppable = false
var dropLoc: Vector2
var offset: Vector2
var init: Vector2

var test = false

func _process(delta):
	if dragging:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) == false:
			dragging = false
			test = false
			if droppable == true:
				get_parent().get_parent().next_step()
				queue_free()
			else:
				position = init

func _input(event):
	if draggable:
		if event is InputEventMouseButton:
			if not test:
				test = true
				offset = get_global_mouse_position() - position
				dragging = true
				init = position
		if event is InputEventMouseMotion and dragging:
			position = get_global_mouse_position() - offset

func _on_syn_area_2_mouse_entered():
	if not dragging:
		draggable = true
		scale = Vector2(1.6, 1.6)


func _on_syn_area_2_mouse_exited():
	if not dragging:
		draggable = false
		scale = Vector2(1.5, 1.5)


func _on_syn_area_2_body_entered(body):
	if body.is_in_group('computer_drop'):
		droppable = true
		body.scale = Vector2(30.2, 30.2)
		dropLoc = body.position


func _on_syn_area_2_body_exited(body):
	if body.is_in_group('computer_drop'):
		droppable = false
		body.scale = Vector2(30, 30)
