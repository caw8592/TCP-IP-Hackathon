extends Label
var step = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	text = "Welcome to your interactive education of TCP/IP (Transmision
	Control Protocol/Internet Protocol). This guide will walk you through
	what happens from the moment your machine decides to send data to the 
	termination of connection between machines"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func display_next():
	if step == 0:
		text = "The first step in when a computer wishes to send information
		is to setup a secure connection using a \"Three Way Handshake\". To do 
		this the host machine will begin by sending a syncronization request to 
		the remote machine."
		step += 1
	elif step == 1:
		text = "Drag your host computer's syncronization request to the remote terminal."
		step += 1
	elif step == 2:
		text = "Now that the request has been recieved by the remote terminal it will send back
		both an acknowledgement of the request and also another syncronization request to the host.
		This is the second part of the \"Three Way Handshake\"."
		step += 1
	elif step == 3:
		text = "Drag the remote computers acknowledgement and syncronization request to your host terminal."
		step += 1
	elif step == 4:
		text = "The third and final step of this handshake is for your host terminal to acknowledge the 
		syncronization information from the remote terminal."
		step += 1
	elif step == 5:
		text = "Drag your host computer's acknowledgement to the remote terminal to complete the handshake."
		step += 1
	elif step == 6:
		text = "CONGRATULATIONS! you have now set up a secure connection to a remote terminal and are ready to 
		begin sending data. Next we will talk about how this data must be encapsulated for sending and then 
		decapsulated after being sent."
		step += 1
	elif step == 7:
		text = ""
