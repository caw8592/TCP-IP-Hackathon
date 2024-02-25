extends Node2D

var draggable = false
var dragging = false
var droppable = false
var dropLoc: Vector2
var offset: Vector2
var init: Vector2

var test = false

func _input(event):
	if draggable:
		if event is InputEventMouseButton:
			if not test:
				test = true
				dragging = true
				get_parent().get_node("Line").visible = false
				get_parent().trigger_end()

func _on_area_2d_mouse_entered():
	if not dragging:
		draggable = true
		scale = Vector2(8.1, 8.1)


func _on_area_2d_mouse_exited():
	if not dragging:
		draggable = false
		scale = Vector2(8, 8)
