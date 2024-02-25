extends Control
var step = 0

var txt

func _ready():
	txt = "hewwo"

# Called when the node enters the scene tree for the first time.
func _process(delta):
	$Label.text = txt
	

func display_error():
	txt = "NO!!"

func display_next():
	if step == 0:
		txt = "no!!"
		step += 1
	elif step == 1:
		txt = "Drag your host computer's syncronization request to the remote terminal."
		step += 1
	elif step == 2:
		txt = "Now that the request has been recieved by the remote terminal it will send back
		both an acknowledgement of the request and also another syncronization request to the host.
		This is the second part of the \"Three Way Handshake\"."
		step += 1
	elif step == 3:
		txt = "Drag the remote computers acknowledgement and syncronization request to your host terminal."
		step += 1
	elif step == 4:
		txt = "The third and final step of this handshake is for your host terminal to acknowledge the 
		syncronization information from the remote terminal."
		step += 1
	elif step == 5:
		txt = "Drag your host computer's acknowledgement to the remote terminal to complete the handshake."
		step += 1
	elif step == 6:
		txt = "CONGRATULATIONS! you have now set up a secure connection to a remote terminal and are ready to 
		begin sending data. Next we will talk about how this data must be encapsulated for sending and then 
		decapsulated after being sent."
		step += 1
	elif step == 7:
		txt = ""
