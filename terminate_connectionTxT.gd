extends Node

var txt
var step = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	display_next()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = txt

func display_next():
	if step == 0:
		txt = "Now for the final step. Once either machine is finished sending or recieving information 
		it will terminate the connection established by the three way handshake."
	if step == 1:
		txt = "Choose a machine to terminate the connection."
	if step == 2:
		txt = "EXQUISITE!!!!!! youve completed our interactive guide on TCP/IP!
		Thank You and Keep Learning! o7"
