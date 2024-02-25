extends Control
var step = 0

var txt

func _ready():
	display_next()

# Called when the node enters the scene tree for the first time.
func _process(delta):
	$Label.text = txt
	
func get_step():
	return step
	
func set_step(x):
	step = x
		
func display_data(x):
	if x == 0:
		txt = "This is the data block, it should go in first!"
	if x == 1:
		txt = "Correct! you now have a block of data"
		
func display_TCP(x):
	if x == 0:
		txt = "This is the TCP block, it should go in second!"
	if x == 1:
		txt = "Correct! you now have a segment"
		
func display_IP(x):
	if x == 0:
		txt = "This is the IP block, it should go in third!"
	if x == 1:
		txt = "Correct! you now have a packet"
		
func display_header_footer(x):
	if x == 0:
		txt = "This is the header/footer, they should go in fourth"
	if x == 1:
		txt = "Correct! you now have a frame"

func display_next():
	if step == 0:
		txt = "Before we can send data off to a remote terminal well have to complete the process of encapsulatiion. This will 
		result in a frame that will ensure the information will make it to the correct location and be parcable by whatever is at 
		its destination"
		step += 1
	elif step == 1:
		txt = "Encapsulation occurs in 5 stages of adding data. First the data that you wish to be send, second TCP information that
		will assist in the three way handshake that we just went over, third ip information providing the source and destination IP 
		addresses, fourth a header and a footer providing some meta information about the frame and what should happen say it fails, 
		finally the information gets sent"
		step += 1
	elif step == 2:
		txt = "Lets see if you remember that order! drag these \"data blocks\" into the next glowing area in the correct order. Keep in mind, 
		while you wont need to know the structure for this exsersize, the structure these are being inserted in is how a frame will always be 
		structured"
		step += 1
	elif step == 4:
		txt = "FELICITATIONS!!! you have completed a full frame. Hit that send button, you deserve it champ"
		step += 1

func _on_button_pressed():
	display_next()
	if step == 5:
		$Button.text = "Send"
