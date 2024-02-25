extends Node2D

var draggable = false
var dragging = false
var droppable = false
var dropLoc: Vector2
var offset: Vector2
var init: Vector2
var incorrect = false
var correct = false

var test = false

func _ready():
	$Label.text = "TCP"

func _process(delta):
	if dragging and not correct:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) == false:
			dragging = false
			test = false
			if droppable == true and get_parent().get_parent().get_step() == 1:
				position = dropLoc
				correct = true
				get_parent().get_parent().next_step()
			else:
				get_parent().get_parent().display_incorrect()
				position = init

func _input(event):
	if draggable and not correct:
		if event is InputEventMouseButton:
			if not test:
				test = true
				offset = get_global_mouse_position() - position
				dragging = true
				init = position
		if event is InputEventMouseMotion and dragging:
			position = get_global_mouse_position() - offset

func _on_tcp_entity_collision_mouse_entered():
	if not dragging and not correct:
		draggable = true
		scale = Vector2(5.1, 5.1)


func _on_tcp_entity_collision_mouse_exited():
	if not dragging and not correct:
		draggable = false
		scale = Vector2(5, 5)


func _on_tcp_entity_collision_body_entered(body):
	if body.is_in_group('tcp_droppable'):
		droppable = true
		body.scale = Vector2(5.1, 5.1)
		dropLoc = body.position
		
	if not body.is_in_group('tcp_droppable'):
		incorrect = true
		body.scale = Vector2(5.1, 5.1)
		dropLoc = body.position
		droppable = false


func _on_tcp_entity_collision_body_exited(body):
	if body.is_in_group('tcp_droppable'):
		droppable = false
		body.scale = Vector2(5, 5)

	if not body.is_in_group('tcp_droppable'):
		incorrect = false
		body.scale = Vector2(5, 5)
