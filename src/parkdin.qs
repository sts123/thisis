# parkdin
$parkrandivdin = {
	if hour > 7 and hour < 21:
		!день
		if parkrand < 10 and parkrand > 0:
			if parkrand = 1:dynamic $parkivent1
			if parkrand = 2:dynamic $parkivent2
			if parkrand = 3:dynamic $parkivent3
			if parkrand = 4:dynamic $parkivent4
			if parkrand = 5:dynamic $parkivent5
			if parkrand = 6:dynamic $parkivent6
			if parkrand = 7:dynamic $parkivent7
			if parkrand = 8:dynamic $parkivent8
			if parkrand = 9:dynamic $parkivent9
		else
			dynamic $parkemptyevent
		end
	else
		!ночь
		if parkrand >= 15:
			dynamic $parkivent1
		else
			dynamic $parkemptyevent
		end
	end
}
--- parkdin ---------------------------------

