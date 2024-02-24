extends Node2D

var draggable = false
var dragging = false
var doppable = false
var offset: Vector2

func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) == false:
		dragging = false

func _input(event):
	if draggable:
		if event is InputEventMouseButton:
			offset = get_global_mouse_position() - position
			dragging = true
		if event is InputEventMouseMotion and dragging:
			position = get_global_mouse_position() - offset

func _on_area_2d_mouse_entered():
	if not dragging:
		draggable = true
		scale = Vector2(3.1, 3.1)


func _on_area_2d_mouse_exited():
	if not dragging:
		draggable = false
		scale = Vector2(3, 3)


func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	pass # Replace with function body.


func _on_area_2d_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	pass # Replace with function body.
