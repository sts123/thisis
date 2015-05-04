# time
if month = 1 and pogodaday ! day:
	pogodaday = day

	temper = RAND(-30,8)
	if temper <= 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно.'
		elseif osadki >= painweather:
			$osadki = 'Идет пушистый снег.'
		end
	elseif temper > 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно, снег кое где начинает подтаивать образуя слякоть.'
		elseif osadki >= painweather:
			$osadki = 'Падает мокрый снег, который тут же тает образуя слякоть.'
		end
	end

	$pogoda = 'На улице лежит снег, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 2 and pogodaday ! day:
	pogodaday = day

	temper = RAND(-35,8)
	if temper <= 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно и ветрено.'
		elseif osadki >= painweather:
			$osadki = 'Идет снег.'
		end
	elseif temper > 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно, снег кое где начинает подтаивать образуя слякоть.'
		elseif osadki >= painweather:
			$osadki = 'Падает мокрый снег, который тут же тает образуя слякоть.'
		end
	end

	$pogoda = 'На улице лежит снег, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 3 and pogodaday ! day:
	pogodaday = day

	temper = RAND(-20,17)
	if temper <= 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно и безоблачно.'
		elseif osadki >= painweather:
			$osadki = 'Идет снег.'
		end
	elseif temper > 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно, снег кое где начинает подтаивать образуя слякоть.'
		elseif osadki >= painweather:
			$osadki = 'Падает мокрый снег, который тут же тает образуя слякоть.'
		end
	end

	$pogoda = 'На улице лежит снег, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 4 and pogodaday ! day:
	pogodaday = day

	temper = RAND(2,20)
	osadki = RAND(0,10)
	if osadki < painweather:
		if hour >= 7 and hour <= 20:
			$osadki = 'Ясно.'
		elseif hour < 7 or hour > 20:
			$osadki = 'Ясно.'
		end
	elseif osadki >= painweather:
		$osadki = 'Идет дождь.'
	end

	$pogoda = 'На улице тает снег, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 5 and pogodaday ! day:
	pogodaday = day

	temper = RAND(7,25)
	osadki = RAND(0,10)
	if osadki < painweather:
		$osadki = 'Ясно.'
	elseif osadki >= painweather:
		$osadki = 'Идет дождь.'
	end

	$pogoda = 'На улице лужи от растаявшего снега, кругом грязь и мусор показавшийся после зимы, кое где новая травка радует глаз своей зеленью, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 6 and pogodaday ! day:
	pogodaday = day

	temper = RAND(15,35)
	osadki = RAND(0,10)
	if osadki < painweather:
		$osadki = 'Ясно.'
	elseif osadki >= painweather:
		$osadki = 'Идет дождь.'
	end

	$pogoda = 'На улице зеленеет трава, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 7 and pogodaday ! day:
	pogodaday = day

	temper = RAND(20,40)
	osadki = RAND(0,10)
	if osadki < painweather:
		$osadki = 'Ясно.'
	elseif osadki >= painweather:
		$osadki = 'Идет теплый дождь.'
	end

	$pogoda = 'На улице зеленая трава, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 8 and pogodaday ! day:
	pogodaday = day

	temper = RAND(20,35)
	osadki = RAND(0,10)
	if osadki < painweather:
		$osadki = 'Ясно.'
	elseif osadki >= painweather:
		$osadki = 'Идет теплый дождь.'
	end

	$pogoda = 'На улице зеленая трава, кое где уже видны желтеющие листья, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 9 and pogodaday ! day:
	pogodaday = day

	temper = RAND(10,30)
	osadki = RAND(0,10)
	if osadki < painweather:
		$osadki = 'Ясно.'
	elseif osadki >= painweather:
		$osadki = 'Идет дождь.'
	end

	$pogoda = 'На улице жухнет трава, видны желтые листья, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 10 and pogodaday ! day:
	pogodaday = day

	temper = RAND(2,20)
	osadki = RAND(0,10)
	if osadki < painweather:
		$osadki = 'Ясно.'
	elseif osadki >= painweather:
		$osadki = 'Идет холодный дождь.'
	end

	$pogoda = 'На улице пожухла трава, опадают желтые листья, вокруг грязь и лужи, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 11 and pogodaday ! day:
	pogodaday = day

	temper = RAND(-20,17)
	if temper <= 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно и безоблачно.'
		elseif osadki >= painweather:
			$osadki = 'Идет снег.'
		end
	elseif temper > 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно, снег кое где начинает подтаивать образуя слякоть.'
		elseif osadki >= painweather:
			$osadki = 'Холодный дождь.'
		end
	end

	$pogoda = 'На улице лежит тонкий и грязный покров снега, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

if month = 12 and pogodaday ! day:
	pogodaday = day

	temper = RAND(-30,8)
	if temper <= 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно и ветрено.'
		elseif osadki >= painweather:
			$osadki = 'Идет пушистый снег.'
		end
	elseif temper > 0:
		osadki = RAND(0,10)
		if osadki < painweather:
			$osadki = 'Ясно, снег кое где начинает подтаивать образуя слякоть.'
		elseif osadki >= painweather:
			$osadki = 'Падает мокрый снег, который тут же тает образуя слякоть.'
		end
	end

	$pogoda = 'На улице лежит снег, температура <<temper>> градусов по цельсию. <<$osadki>>'
end

pl'<<$pogoda>>'

if osadki >= painweather and umbrella = 0:
	if mop > 1:
		mop = 0
		'У вас нет зонтика и из за влажности потекла ваша косметика.'
	end
	if hapri = 1:
		hapri = 0
		if curly > 0:curly = curly - 1
		'У вас нет зонтика и из за влажности ваша прическа испортилась.'
	end
end

if isprok = 0 and mesec > 0 and preg = 0:
	'<b><font color = red>У вас кровь течет по ногам пачкая белье и одежду.</font></b>'
	if clrbelo > 0:clrbelo = clrbelo - 1
	sweat = sweat + 1
	manna = manna - 10
	willpower = willpower - 10
	gs'starenie'
end

if hour = 0:
	FColor = RGB(255,255,255)
	BColor = RGB(0,0,0)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 1:
	FColor = RGB(255,255,255)
	BColor = RGB(5,5,5)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 2:
	FColor = RGB(255,255,255)
	BColor = RGB(10,10,10)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 3:
	FColor = RGB(255,255,255)
	BColor = RGB(30,15,15)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 4:
	FColor = RGB(255,255,255)
	BColor = RGB(60,20,20)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 5:
	FColor = RGB(255,255,255)
	BColor = RGB(100,40,40)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 6:
	FColor = RGB(0,0,0)
	BColor = RGB(200,100,100)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 7:
	FColor = RGB(0,0,0)
	BColor = RGB(250,150,150)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 8:
	FColor = RGB(0,0,0)
	BColor = RGB(250,200,200)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 9:
	FColor = RGB(0,0,0)
	BColor = RGB(250,245,245)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 10:
	FColor = RGB(0,0,0)
	BColor = RGB(255,250,250)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 11:
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 12:
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 13:
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 14:
	FColor = RGB(0,0,0)
	BColor = RGB(255,250,250)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 15:
	FColor = RGB(0,0,0)
	BColor = RGB(255,245,245)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 16:
	FColor = RGB(0,0,0)
	BColor = RGB(250,240,240)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 17:
	FColor = RGB(0,0,0)
	BColor = RGB(250,230,230)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 18:
	FColor = RGB(0,0,0)
	BColor = RGB(250,220,220)

	if vibratorin = 1:
		horny = horny+RAND(1,5)
	end
elseif hour = 19:
	FColor = RGB(0,0,0)
	BColor = RGB(250,210,210)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 20:
	FColor = RGB(0,0,0)
	BColor = RGB(250,200,200)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 21:
	FColor = RGB(0,0,0)
	BColor = RGB(250,150,150)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 22:
	FColor = RGB(255,255,255)
	BColor = RGB(25,25,25)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
elseif hour = 23:
	FColor = RGB(255,255,255)
	BColor = RGB(5,5,5)

	if vibratorin = 1:
		horny = horny + RAND(1,5)
	end
end

if temper <= 0:
	if palto = 1:bonusZ = -3
	if palto = 2:bonusZ = 0
	if palto = 3:bonusZ = 3

	if temper < -10 and palto = 1:
		frost += 1
		if energy < 5:frost += 1
		if tanga = 0:frost += 1
		if sweat > 0:frost += 1
	elseif temper < -20 and palto = 2:
		frost += 1
		if energy < 5:frost += 1
		if sweat > 0:frost += 1
	elseif temper < -30 and palto = 3:
		frost += 1
	end

	if palto <= 0:
		if temper < -10:frost += 1
		if temper < -20:frost += 2
		if temper < -30:frost += 5
	end

	if frost >= 12:sick += 1
	if sick > 0 and sickstage = 0:sickstage = 1
end
--- time ---------------------------------

