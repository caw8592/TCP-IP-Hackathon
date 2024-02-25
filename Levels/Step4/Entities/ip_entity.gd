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
			if droppable:
				position = init
			elif get_parent().get_parent().get_step() == 2:
				get_parent().get_parent().next_step()
				queue_free()
			else:
				position = init
				get_parent().get_parent().display_wrong()

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

func _on_ip_area_mouse_entered():
	if not dragging:
		draggable = true
		scale = Vector2(5.1, 5.1)


func _on_ip_area_mouse_exited():
	if not dragging:
		draggable = false
		scale = Vector2(5, 5)
		
func _on_ip_area_body_entered(body):
	if body.is_in_group('droppable'):
		droppable = true
		dropLoc = body.position

func _on_ip_area_body_exited(body):
	if body.is_in_group('droppable'):
		droppable = false
