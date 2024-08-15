
PROGRAM _INIT
	(* Insert code here *)

END_PROGRAM

PROGRAM _CYCLIC
	(* Increment counter below *)
	IF bButtonPressed THEN
		nCounter := nCounter + 1;
		bButtonPressed := FALSE; // Reset the button press to prevent continuous increment
	ELSIF bButtonMinPressed THEN
		nCounter := nCounter - 1;
		bButtonMinPressed := FALSE; // Reset the button press to prevent continuous increment
	END_IF;
	(* Text message below *)
	IF bDisplayText THEN
		IF sMessage = '' THEN
			sMessage := 'There be cake!';
		ELSE
		sMessage := ''; // Clear the message when button is not pressed
		END_IF;
		bDisplayText := FALSE;  // Reset the display button press to prevent continuous toggling
	END_IF;
	
	(* Update the current time*)
	 dtCurrentTime := TIME();
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM
