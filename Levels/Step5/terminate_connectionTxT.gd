extends Node

var txt
var step = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	display_next()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = txt
	
func get_step():
	return step
	
func set_step(x):
	step = x
	display_next()

func display_next():
	if step == 0:
		txt = "Now for the final step. Once either machine is finished sending or recieving information 
		it will terminate the connection established by the three way handshake."
		step += 1
	elif step == 1:
		txt = "Click on the computer to terminate the connection."
		step += 1
	elif step == 2:
		txt = "EXQUISITE!!!!!! youve completed our interactive guide on TCP/IP!
		Thank You and Keep Learning! o7"
		step += 1


func _on_button_pressed():
	display_next()
