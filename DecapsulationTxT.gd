extends Node

var step = 0
var txt

# Called when the node enters the scene tree for the first time.
func _ready():
	display_next()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = txt
	
func header_footer_remove(x):
	if x == 0:
		txt = "The first piece that should be removed is the header/footer."
	elif x == 1:
		txt = "The header/footer has been parsed. This will provide some information confirming the data made it to the 
		right spot and what to do if the data was damaged in processing."
		
func ip_remove(x):
	if x == 0:
		txt = "The second piece that should be removed is the IP information."
	elif x == 1:
		txt = "The IP has been parsed. This is important information used to ensure the
		 data made it to the correct location and also came from the correct place."
		
func tcp_remove(x):
	if x == 0:
		txt = "The third piece that should be removed is the TCP information."
	elif x == 1:
		txt = "The TCP information has been parsed. After this last check to make 
		sure the data made it to the correct spot were ready to get to the data."
		
func data_remove(x):
	if x == 0:
		txt = "The final piece to be removed is the data (this should never show up methinks)"
	elif x == 1:
		txt = "Now that all other information has been parsed this data will finally make it 
		to the application it was originally being sent to."

func display_next():
	if step == 0:
		txt = "The remote terminal has just recieved a frame encapsulating your data. 
		Now it must decapsulate this data in order to deliver it to the application it 
		must get to"
		step += 1
	elif step == 1:
		txt = "To do this the machine will essentially reverse the process of encapsulation. 
		Remove eache piece of the frame in the reverse order that you put them into the frame."
		step += 1
	elif step == 2:
		txt = "EXCELSIOR!!!!! Our data has finally made it to its destination. Were almost done 
		just one last thing to do...."
