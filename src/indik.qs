# indik
if $ARGS[0] = '1':
	if a >= 100:			$ind = '<font color = green	> ██████████ <<a1>></font> '
	if a < 100 and a >= 90:	$ind = '<font color = green	> █████████_ <<a1>></font> '
	if a < 90 and a >= 80:	$ind = '<font color = green	> ████████__ <<a1>></font> '
	if a < 80 and a >= 70:	$ind = '<font color = green	> ███████___ <<a1>></font> '
	if a < 70 and a >= 60:	$ind = '<font color = blue	> ██████____ <<a1>></font> '
	if a < 60 and a >= 50:	$ind = '<font color = blue	> █████_____ <<a1>></font> '
	if a < 50 and a >= 40:	$ind = '<font color = blue	> ████______ <<a1>></font> '
	if a < 40 and a >= 30:	$ind = '<font color = red	> ███_______ <<a1>></font> '
	if a < 30 and a >= 20:	$ind = '<font color = red	> ██________ <<a1>></font> '
	if a < 20 and a >= 10:	$ind = '<font color = red	> █_________ <<a1>></font> '
	if a < 10 and a >= 1:	$ind = '<font color = red	> ▓_________ <<a1>></font> '
	if a <= 0:			$ind = '<font color = red	> __________ <<a1>></font> '
end
if $ARGS[0] = '2':
	if a >= 100:			$ind = '<font color = red	> ██████████ </font> '
	if a < 100 and a >= 90:	$ind = '<font color = red	> █████████_ </font> '
	if a < 90 and a >= 80:	$ind = '<font color = red	> ████████__ </font> '
	if a < 80 and a >= 70:	$ind = '<font color = orange	> ███████___ </font> '
	if a < 70 and a >= 60:	$ind = '<font color = orange	> ██████____ </font> '
	if a < 60 and a >= 50:	$ind = '<font color = yellow	> █████_____ </font> '
	if a < 50 and a >= 40:	$ind = '<font color = yellow	> ████______ </font> '
	if a < 40 and a >= 30:	$ind = '<font color = green	> ███_______ </font> '
	if a < 30 and a >= 20:	$ind = '<font color = green	> ██________ </font> '
	if a < 20 and a >= 10:	$ind = '<font color = blue	> █_________ </font> '
	if a < 10 and a >= 1:	$ind = '<font color = blue	> ▓_________ </font> '
	if a <= 0:			$ind = '<font color = blue	> __________ </font> '
end
--- indik ---------------------------------

