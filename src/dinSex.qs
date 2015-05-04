# dinSex
$universalklient = {
	if klient_needs = 0:$klientwanttext = 'минет'
	if klient_needs = 1:$klientwanttext = 'секс'
	if klient_needs = 2:$klientwanttext = 'анал'

	'<center><img src="images/pic/park2.jpg"></center>'
	'Вы сказали клиенту, что <<$klientwanttext>> будет стоить <<ProsMoney*100>> рублей.'
	dynamic $dinprostable

	if vnpr >= 0:
		if ProsMoney = 1:
			clientPRyes = 1
		end
		if ProsMoney > 1:
			if KlientMON >= ProsMoney:
				if vnpr >= klienVNPR:
					clientPRyes = 1
				else
					clientPRyes = 0
				end
			elseif KlientMON < ProsMoney:
				if vnpr >= klienVNPR:
					torgklirand = RAND(0,1)
					if torgklirand = 0:
						clientPRyes = 0
					elseif torgklirand = 1:
						'Клиент усмехается и предлагает вам <<KlientMON*100>> рублей за работу.'

						act 'Согласиться':
							cla
							clientPRyes = 1
							ProsMoney = KlientMON
							dynamic $dinklient
						end

						act 'Отказаться':gt'prostitute','start'
						exit
					end
				else
					clientPRyes = 0
				end
			end
		end
	end

	if vnpr < 0:clientPRyes = 0
	dynamic $dinklient
}

$dinprostable = {
	vnpr = 0
	if vidage >= 40:vnpr -= 20
	if vidage >= 35 and vidage < 40:vnpr -= 10
	if vidage >= 30 and vidage < 35:vnpr -= 5
	if vidage >= 25 and vidage < 30:vnpr += 1
	if vidage >= 20 and vidage < 25:vnpr += 5
	if vidage >= 18 and vidage < 20:vnpr += 10
	if vidage < 18:vnpr += 15

	if vnesh = -10:vnpr -= 100
	if vnesh < 5 and vnesh > -10:vnpr -= 10
	if vnesh >= 5 and vnesh < 15:vnpr -= 5
	if vnesh >= 15 and vnesh < 30:vnpr += 1
	if vnesh >= 30 and vnesh < 50:vnpr += 5
	if vnesh >= 50:vnpr += 10

	if cumSUM > 0:vnpr -= 10

	if mop = 0:vnpr -= 10
	if mop = 1:vnpr -= 1
	if mop = 2:vnpr += 1
	if mop = 3:vnpr += 5
	if mop = 4:vnpr += 10

	if leghair <= 0:vnpr += 1
	if leghair > 0:vnpr -= 5

	if lobok > 0:vnpr -= 5
	if lobok <= 0:vnpr += 1

	if tan > 0:vnpr += 1

	if curly > 0:vnpr += 1

	if sweat > 0:vnpr -= 10

	if hapri = 0:vnpr -= 1

	if lip = 4:vnpr += 1

	!максимум 40
	!минимум -161
}

$dinklient = {
	if clientPRyes = 1:
		'Клиент кивает вам головой и открывает дверь своей машины.'

		if klient_needs = 0:dynamic $din_prost_bj
		if klient_needs = 1:dynamic $din_prost_sex
		if klient_needs = 2:dynamic $din_prost_anal
	elseif clientPRyes = 0:
		'Клиент придирчиво осмотрел вас и сказал "Не, нахуй." После этого он тронул машину и уехал.'

		act 'Уйти':gt'prostitute','start'
	end
}

$din_prost_bj = {
	act 'Залезть в машину клиента':
		vidageday -= 5
		$nameV = 'незнакомец'
		$boy = 'Клиент'
		slutty += 1
		dick = RAND(12,21)
		money += ProsMoney*100
		gt'blowPR','start'
	end
}

$din_prost_sex = {
	act 'Залезть в машину клиента':
		vidageday -= 10
		$nameV = 'незнакомец'
		$boy = 'Клиент'
		dick = RAND(12,21)
		money += ProsMoney*100
		prosti = 1
		slutty += 1
		gt'blowPR','start'
	end
}

$din_prost_anal = {
	act 'Залезть в машину клиента':
		vidageday -= 20
		gs'boy'
		prosti = 2
		analprotect = 0
		slutty += 1
		gt'blowPR','start'
	end
}

$dinrandbj = {
	tperbjran = RAND(0,3)
	if tperbjran = 0:$tperbj = 'Вы обхватили своими <<$liptalk>> <<dick>> сантиметровый член.'
	if tperbjran = 1:$tperbj = 'Вы обхватили своими <<$liptalk>> багровую головку <<dick>> сантиметрового члена'
	if tperbjran = 2:$tperbj = 'Вы провели своими <<$liptalk>> по головке <<dick>> сантиметрового члена и вобрали его в свой ротик'
	if tperbjran = 3:$tperbj = '<<dick>> сантиметровый член уперся вам в ваши <<$liptalk>>, вы приоткрыли их и впустили член в свой рот.'
	if tperbjran = 4:$tperbj = ''
	if tperbjran = 5:$tperbj = ''

	tperbjran2 = RAND(0,2)
	if tperbjran2 = 0:$tperbj2 = 'Ваш ротик оказался быстро заполнен чуть солоноватым и твердым членом который вы начали сосать.'
	if tperbjran2 = 1:$tperbj2 = 'В ваш ротик вошел твердый и горячий член который вы начали сосать'
	if tperbjran2 = 2:$tperbj2 = 'Твердый член заполнял весь ваш рот, обхватывая его губами вы каждым движением его вбирали до горла.'
	if tperbjran2 = 3:$tperbj2 = ''
	if tperbjran2 = 4:$tperbj2 = ''
	if tperbjran2 = 5:$tperbj2 = ''
	'<<$tperbj>>. <<$tperbj2>>'
}

$dinrandswallow = {
	tperswalrand = RAND(0,2)
	if tperswalrand = 0:$tperswal = 'Внезапно в ваш рот стрельнула струя вязкого семени.'
	if tperswalrand = 1:$tperswal = 'Член дернулся и струя спермы влетела между ваших губ вам в рот.'
	if tperswalrand = 2:$tperswal = 'Ваш рот наполнился спермой когда член между ваших губ начал кончать.'

	tperswalrand2 = RAND(0,2)
	if tperswalrand2 = 0:$tperswal2 = 'Ваш ротик быстро заполнился теплой спермой и вы чувствовали ее резкий вкус.'
	if tperswalrand2 = 1:$tperswal2 = 'Сперма наполнила ваш рот и стала стекать по вашим <<$liptalk2>>'
	if tperswalrand2 = 2:$tperswal2 = 'Горячее семя быстро наполнило ваш рабочий рот заставляя прочувствовать всю гамму вкуса терпкой и резкой спермы.'

	tperswalrand3 = RAND(0,2)
	if tperswalrand3 = 0:$tperswal3 = 'Вы сглотнули и проглотили сперму находящуюся в вашем рабочем ротике. Во рту остался вкус спермы и чувствовался ее запах.'
	if tperswalrand3 = 1:$tperswal3 = 'Вы проглотили теплую сперму наполнявшую ваш рот и облизали свои <<$liptalk3>> слизывая остатки семени с них.'
	if tperswalrand3 = 2:$tperswal3 = 'Вы проглотили вязкую сперму заполнявшую ваш рабочий рот, после чего облизнулись.'
	'<<$tperswal>> <<$tperswal2>> <<$tperswal3>>'
}

$dinrandfacial = {
}

$venerasiak = {
	tipvenerarand = RAND(0,10)
	if prezik > 0:
		venrand = RAND(0,1000)
		if venrand = 1000:dynamic $veneradinitog
	elseif prezik <= 0:
		venrand = RAND(0,100)
		if venrand >= 80:dynamic $veneradinitog
	end
}

$veneradinitog = {
	if tipvenerarand >= 8:
		!герпес
		gerprand = RAND(0,100)
		if gerprand > 90:
			if GerpesOnce = 0:GerpesOnce = 1
			Venera += 1
			Gerpes += 1
		end
	elseif tipvenerarand = 7:
		!сифилис
		venerarand = RAND(0,100)
		if venerarand > 95:
			Venera += 1
			if SifacOnce = 0:SifacOnce = 1
			Sifilis += 1
		end
	elseif tipvenerarand >= 5 and tipvenerarand < 7:
		!гонорея/трипер
		venerarand = RAND(0,100)
		if venerarand > 95:
			Venera += 1
			if TriperOnce = 0:TriperOnce = 1
			Triper += 1
		end
	elseif tipvenerarand < 5:
		!кандидоз/молочница
		venerarand = RAND(0,100)
		if venerarand > 85:
			if KandidozOnce = 0:KandidozOnce = 1
			Kandidoz += 1
		end
	end
}

$sexstart = {
	protect = 0
	vidageday = vidageday - 1

	if prezik > 0:
		prezik = prezik - 1
		protect = 1

		'<<$boy>> взял у вас презерватив и одел его на свой <<dick>> сантиметровый член.'
	end
}

$sexstart2 = {
	frost = 0

	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna = manna - 10
		willpower = willpower - 10

		'У вас месячные и в то время пока член таранит вас, из влагалища потихоньку вытекает кровь. Ощущения болезненные и не приятные. Вы стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
	elseif mesec <= 0 and vagina > 0:
		!месячных нет
		!horny - возбужденность
		!vagina - эластичность вагины
		!silavag - умение парня 0-неумеха, 1-середняк 2-ебарь
		!dick - размер члена парня
		!orgazm - коэфициент удовольствия Итог
		!0 - очень больно, 1 - больно, 2 - не приятно, 3 - так себе, 4 - недооргазм 5 - оргазм
		smazka = horny/10
		prinat = smazka + vagina

		if dick >= prinat*2:
			!член критично больше возможностей гг
			if silavag = 0:orgazm = 0
			if silavag = 1:orgazm = 1
			if silavag = 2:orgazm = 2
		elseif dick < prinat*2 and dick > prinat:
			!член больше возможностей гг
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny >= 80 and horny < 90:orgazm = 3
				if horny >= 70 and horny < 80:orgazm = 2
				if horny >= 60 and horny < 70:orgazm = 1
				if horny < 60:orgazm = 0
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny >= 70 and horny < 80:orgazm = 3
				if horny >= 60 and horny < 70:orgazm = 2
				if horny >= 50 and horny < 60:orgazm = 1
				if horny < 50:orgazm = 0
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny >= 60 and horny < 70:orgazm = 3
				if horny >= 50 and horny < 60:orgazm = 2
				if horny >= 40 and horny < 50:orgazm = 1
				if horny < 40:orgazm = 0
			end
		elseif dick <= prinat and dick >= vagina:
			!член меньше возможностей гг
			if silavag = 0:
				if horny >= 80:orgazm = 5
				if horny >= 60 and horny < 80:orgazm = 4
				if horny >= 40 and horny < 60:orgazm = 3
				if horny < 40:orgazm = 2
			elseif silavag = 1:
				if horny >= 70:orgazm = 5
				if horny >= 50 and horny < 70:orgazm = 4
				if horny >= 30 and horny < 50:orgazm = 3
				if horny < 30:orgazm = 2
			elseif silavag = 2:
				if horny >= 60:orgazm = 5
				if horny >= 40 and horny < 60:orgazm = 4
				if horny >= 20 and horny < 40:orgazm = 3
				if horny < 20:orgazm = 2
			end
		elseif dick <= prinat and dick < vagina:
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny < 90:orgazm = 6
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny < 80:orgazm = 6
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny < 70:orgazm = 6
			end
		end

		if oragazm = 5:
			preOrg += 1
			if razeba < 4:
				if silavag = 2:
					orgrand = RAND(50,300)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					oragazm = 4
				end
			elseif razeba = 4:
				if silavag = 2:
					orgrand = RAND(0,100)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					orgrand = RAND(50,300)
					if orgrand > preOrg:oragazm = 4
				end
			elseif razeba >= 5:
				if silavag = 2:
					orgrand = RAND(0,50)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					orgrand = RAND(0,100)
					if orgrand > preOrg:oragazm = 4
				end
			end
		end

		if orgazm = 0:
			vgape = 3
			vgapetime = totminut
			horny = 0
			manna = manna - 15
			willpower = willpower - 15

			'Вы застонали от боли когда <<$boy>> вошел в вас, из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут. Вы плачете и стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 1:
			if vgape < 2:vgape = 2
			vgapetime = totminut
			horny = horny - 10
			manna = manna - 10
			willpower = willpower - 10

			'Вы закусили губу от боли когда <<$boy>> вошел в вас, между ног болезненные ощущения. Вы морщитесь и стонете от боли пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 2:
			if vgape < 1:vgape = 1
			vgapetime = totminut
			horny = horny - 5
			manna = manna - 5
			willpower = willpower - 5

			'Вы вздрогнули от внезапной боли когда <<$boy>> вошел в вас, между ног болезненные ощущения, которые плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока крепкий <<dick>> сантиметровый член трахает вашу киску, но у вас ничего не выходит.'
		elseif orgazm = 3:
			!horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 4:
			!horny = horny + 10
			manna = manna + 10
			willpower = willpower + 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно притное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny = 0
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1
			vaginalOrgasm += 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиваться принимая в себя член. Между ног становится очень тепло и приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на елде.'
		elseif orgazm = 6:
			horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы почувствовали как член проникает в вашу киску, когда <<$boy>> вошел в вас. Между ног приятно, но член значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end
		if vagina <= dick:vagina = vagina + 1
	elseif vagina = 0 and mesec <= 0:
		horny = 0
		manna = manna - 15
		willpower = willpower - 15
		vagina = vagina + 1

		'Вы закусили губу от боли и из глаз брызнули слезы когда <<$boy>> вошел в вас, разорвав вашу девственную плеву. Вы плачете и стоните пока крепкий <<dick>> сантиметровый член трахает вашу окровавленную киску.'
	end

	if vagina < dick:vagina += 1
	sex += 1
}

$sexstart3 = {
	frost = 0

	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna = manna - 10
		willpower = willpower - 10

		'У вас месячные и в то время пока вы прыгаете на члене, из влагалища потихоньку вытекает кровь. Ощущения болезненные и не приятные. Вы стонете пока крепкий <<dick>> сантиметровый член входит в вас.'
	elseif mesec <= 0 and vagina > 0:
		!месячных нет
		!horny - возбужденность
		!vagina - эластичность вагины
		!silavag - умение парня 0-неумеха, 1-середняк 2-ебарь
		!dick - размер члена парня
		!orgazm - коэфициент удовольствия Итог
		!0 - очень больно, 1 - больно, 2 - не приятно, 3 - так себе, 4 - недооргазм 5 - оргазм
		smazka = horny/10
		prinat = smazka + vagina

		if dick >= prinat*2:
			!член критично больше возможностей гг
			if silavag = 0:orgazm = 0
			if silavag = 1:orgazm = 1
			if silavag = 2:orgazm = 2
		elseif dick < prinat*2 and dick > prinat:
			!член больше возможностей гг
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny >= 80 and horny < 90:orgazm = 3
				if horny >= 70 and horny < 80:orgazm = 2
				if horny >= 60 and horny < 70:orgazm = 1
				if horny < 60:orgazm = 0
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny >= 70 and horny < 80:orgazm = 3
				if horny >= 60 and horny < 70:orgazm = 2
				if horny >= 50 and horny < 60:orgazm = 1
				if horny < 50:orgazm = 0
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny >= 60 and horny < 70:orgazm = 3
				if horny >= 50 and horny < 60:orgazm = 2
				if horny >= 40 and horny < 50:orgazm = 1
				if horny < 40:orgazm = 0
			end
		elseif dick <= prinat and dick >= vagina:
			!член меньше возможностей гг
			if silavag = 0:
				if horny >= 80:orgazm = 5
				if horny >= 60 and horny < 80:orgazm = 4
				if horny >= 40 and horny < 60:orgazm = 3
				if horny < 40:orgazm = 2
			elseif silavag = 1:
				if horny >= 70:orgazm = 5
				if horny >= 50 and horny < 70:orgazm = 4
				if horny >= 30 and horny < 50:orgazm = 3
				if horny < 30:orgazm = 2
			elseif silavag = 2:
				if horny >= 60:orgazm = 5
				if horny >= 40 and horny < 60:orgazm = 4
				if horny >= 20 and horny < 40:orgazm = 3
				if horny < 20:orgazm = 2
			end
		elseif dick <= prinat and dick < vagina:
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny < 90:orgazm = 6
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny < 80:orgazm = 6
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny < 70:orgazm = 6
			end
		end

		if oragazm = 5:
			preOrg += 1
			if razeba < 4:
				if silavag = 2:
					orgrand = RAND(50,300)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					oragazm = 4
				end
			elseif razeba = 4:
				if silavag = 2:
					orgrand = RAND(0,100)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					orgrand = RAND(50,300)
					if orgrand > preOrg:oragazm = 4
				end
			elseif razeba >= 5:
				if silavag = 2:
					orgrand = RAND(0,50)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					orgrand = RAND(0,100)
					if orgrand > preOrg:oragazm = 4
				end
			end
		end

		if orgazm = 0:
			if vgape < 3:vgape = 3
			vgapetime = totminut
			horny = 0
			manna = manna - 15
			willpower = willpower - 15

			'Вы застонали от боли когда сели на член и почувствовали как <<$boy>> вошел в вас. Из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут. У вас текут слезы пока <<dick>> сантиметровый член входит в вас.'
		elseif orgazm = 1:
			if vgape < 2:vgape = 2
			vgapetime = totminut
			horny = horny - 10
			manna = manna - 10
			willpower = willpower - 10

			'Вы закусили губу от боли когда сели на член и почувствовали как <<$boy>> вошел в вас, между ног болезненные ощущения. Вы морщитесь и стонете от боли пока прыгаете на крепком <<dick>> сантиметровом члене.'
		elseif orgazm = 2:
			if vgape < 1:vgape = 1
			vgapetime = totminut
			horny = horny - 5
			manna = manna - 5
			willpower = willpower - 5

			'Вы вздрогнули от внезапной боли когда сели на член и почувствовали как <<$boy>> вошел в вас, между ног болезненные ощущения, которые плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока прыгаете на крепком <<dick>> сантиметровом члене трахающим вашу киску, но у вас ничего не выходит.'
		elseif orgazm = 3:
			!horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда сели на член и почувствовали как <<$boy>> вошел в вас. Между ног становится немного приятно, когда вы прыгаете на крепком <<dick>> сантиметровом члене.'
		elseif orgazm = 4:
			!horny = horny + 10
			manna = manna + 10
			willpower = willpower + 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда сели на член и почувствовали как <<$boy>> вошел в вас. Между ног становится немного приятно, когда вы прыгаете на крепком <<dick>> сантиметровом члене. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny = 0
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1
			vaginalOrgasm += 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиваться принимая в себя член. Между ног становится очень тепло и приятно, когда вы прыгаете на крепком <<dick>> сантиметровом члене. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на елде.'
		elseif orgazm = 6:
			horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы почувствовали как член проникает в вашу киску, когда сели на член и почувствовали как <<$boy>> вошел в вас. Между ног приятно, но член значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end
		if vagina <= dick:vagina = vagina + 1
	elseif vagina = 0 and mesec <= 0:
		horny = 0
		manna = manna - 15
		willpower = willpower - 15
		vagina = vagina + 1

		'Вы закусили губу от боли и из глаз брызнули слезы когда сели на член и почувствовали как <<$boy>> вошел в вас, разорвав вашу девственную плеву. Вы плачите и стоните пока вы прыгаете на крепком <<dick>> сантиметровом члене своей окровавленной киской.'
	end

	if vagina < dick:vagina += 1
	sex += 1
}

$sexstart4 = {
	frost = 0

	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna = manna - 10
		willpower = willpower - 10

		'У вас месячные и в то время пока член таранит вас, из влагалища потихоньку вытекает кровь. Ощущения болезненные и не приятные. Вы стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
	elseif mesec <= 0 and vagina > 0:
		!месячных нет
		!horny - возбужденность
		!vagina - эластичность вагины
		!silavag - умение парня 0-неумеха, 1-середняк 2-ебарь
		!dick - размер члена парня
		!orgazm - коэфициент удовольствия Итог
		!0 - очень больно, 1 - больно, 2 - не приятно, 3 - так себе, 4 - недооргазм 5 - оргазм
		smazka = horny/10
		prinat = smazka + vagina

		if dick >= prinat*2:
			!член критично больше возможностей гг
			if silavag = 0:orgazm = 0
			if silavag = 1:orgazm = 1
			if silavag = 2:orgazm = 2
		elseif dick < prinat*2 and dick > prinat:
			!член больше возможностей гг
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny >= 80 and horny < 90:orgazm = 3
				if horny >= 70 and horny < 80:orgazm = 2
				if horny >= 60 and horny < 70:orgazm = 1
				if horny < 60:orgazm = 0
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny >= 70 and horny < 80:orgazm = 3
				if horny >= 60 and horny < 70:orgazm = 2
				if horny >= 50 and horny < 60:orgazm = 1
				if horny < 50:orgazm = 0
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny >= 60 and horny < 70:orgazm = 3
				if horny >= 50 and horny < 60:orgazm = 2
				if horny >= 40 and horny < 50:orgazm = 1
				if horny < 40:orgazm = 0
			end
		elseif dick <= prinat and dick >= vagina:
			!член меньше возможностей гг
			if silavag = 0:
				if horny >= 80:orgazm = 5
				if horny >= 60 and horny < 80:orgazm = 4
				if horny >= 40 and horny < 60:orgazm = 3
				if horny < 40:orgazm = 2
			elseif silavag = 1:
				if horny >= 70:orgazm = 5
				if horny >= 50 and horny < 70:orgazm = 4
				if horny >= 30 and horny < 50:orgazm = 3
				if horny < 30:orgazm = 2
			elseif silavag = 2:
				if horny >= 60:orgazm = 5
				if horny >= 40 and horny < 60:orgazm = 4
				if horny >= 20 and horny < 40:orgazm = 3
				if horny < 20:orgazm = 2
			end
		elseif dick <= prinat and dick < vagina:
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny < 90:orgazm = 6
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny < 80:orgazm = 6
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny < 70:orgazm = 6
			end
		end

		if oragazm = 5:
			preOrg += 1
			if razeba < 4:
				if silavag = 2:
					orgrand = RAND(50,300)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					oragazm = 4
				end
			elseif razeba = 4:
				if silavag = 2:
					orgrand = RAND(0,100)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					orgrand = RAND(50,300)
					if orgrand > preOrg:oragazm = 4
				end
			elseif razeba >= 5:
				if silavag = 2:
					orgrand = RAND(0,50)
					if orgrand > preOrg:oragazm = 4
				elseif silavag < 2:
					orgrand = RAND(0,100)
					if orgrand > preOrg:oragazm = 4
				end
			end
		end

		if orgazm = 0:
			vgape = 3
			vgapetime = totminut
			horny = 0
			manna = manna - 15
			willpower = willpower - 15

			'Вы застонали от боли когда <<$boy>> вошел в вас, из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут. Вы плачете и стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 1:
			if vgape < 2:vgape = 2
			vgapetime = totminut
			horny = horny - 10
			manna = manna - 10
			willpower = willpower - 10

			'Вы закусили губу от боли когда <<$boy>> вошел в вас, между ног болезненные ощущения. Вы морщитесь и стонете от боли пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 2:
			if vgape < 1:vgape = 1
			vgapetime = totminut
			horny = horny - 5
			manna = manna - 5
			willpower = willpower - 5

			'Вы вздрогнули от внезапной боли когда <<$boy>> вошел в вас, между ног болезненные ощущения, которые плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока крепкий <<dick>> сантиметровый член трахает вашу киску, но у вас ничего не выходит.'
		elseif orgazm = 3:
			!horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 4:
			!horny = horny + 10
			manna = manna + 10
			willpower = willpower + 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny = 0
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1
			vaginalOrgasm += 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиватся принимая в себя член. Между ног становится очень тепло и приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на елде.'
		elseif orgazm = 6:
			horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы почувствовали как член проникает в вашу киску, когда <<$boy>> вошел в вас. Между ног приятно, но член значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end
		if vagina <= dick:vagina = vagina + 1
	elseif vagina = 0 and mesec <= 0:
		horny = 0
		manna = manna - 15
		willpower = willpower - 15
		vagina = vagina + 1
		'Вы закусили губу от боли и из глаз брызнули слезы когда <<$boy>> вошел в вас, разорвав вашу девственную плеву. Вы плачете и стоните пока крепкий <<dick>> сантиметровый член трахает вашу окровавленную киску.'
	end

	if vagina < dick:vagina += 1
	!sex += 1
}

$sexudo = {
	protect = 0
	vidageday = vidageday - 1
	frost = 0

	if tabletki <= 0 and prezik > 0:
		prezik = prezik - 1
		protect = 1

		'<<$boy>> взял у вас презерватив и одел его на свой <<dick>> сантиметровый член.'
	end

	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna = manna - 10
		willpower = willpower - 10

		'У вас месячные и в то время пока член таранит вас, из влагалища потихоньку вытекает кровь. Ощущения болезненные и не приятные. Вы стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
	elseif mesec <= 0 and vagina > 0:
		!месячных нет
		!horny - возбужденность
		!vagina - эластичность вагины
		!silavag - умение парня 0-неумеха, 1-середняк 2-ебарь
		!dick - размер члена парня
		!orgazm - коэфициент удовольствия Итог
		!0 - очень больно, 1 - больно, 2 - не приятно, 3 - так себе, 4 - недооргазм 5 - оргазм
		smazka = horny/10
		prinat = smazka + vagina

		if dick >= prinat*2:
			!член критично больше возможностей гг
			if silavag = 0:orgazm = 0
			if silavag = 1:orgazm = 1
			if silavag = 2:orgazm = 2
		elseif dick < prinat*2 and dick > prinat:
			!член больше возможностей гг
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny >= 80 and horny < 90:orgazm = 3
				if horny >= 70 and horny < 80:orgazm = 2
				if horny >= 60 and horny < 70:orgazm = 1
				if horny < 60:orgazm = 0
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny >= 70 and horny < 80:orgazm = 3
				if horny >= 60 and horny < 70:orgazm = 2
				if horny >= 50 and horny < 60:orgazm = 1
				if horny < 50:orgazm = 0
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny >= 60 and horny < 70:orgazm = 3
				if horny >= 50 and horny < 60:orgazm = 2
				if horny >= 40 and horny < 50:orgazm = 1
				if horny < 40:orgazm = 0
			end
		elseif dick <= prinat and dick >= vagina:
			!член меньше возможностей гг
			if silavag = 0:
				if horny >= 80:orgazm = 5
				if horny >= 60 and horny < 80:orgazm = 4
				if horny >= 40 and horny < 60:orgazm = 3
				if horny < 40:orgazm = 2
			elseif silavag = 1:
				if horny >= 70:orgazm = 5
				if horny >= 50 and horny < 70:orgazm = 4
				if horny >= 30 and horny < 50:orgazm = 3
				if horny < 30:orgazm = 2
			elseif silavag = 2:
				if horny >= 60:orgazm = 5
				if horny >= 40 and horny < 60:orgazm = 4
				if horny >= 20 and horny < 40:orgazm = 3
				if horny < 20:orgazm = 2
			end
		elseif dick <= prinat and dick < vagina:
			if silavag = 0:
				if horny >= 100:orgazm = 5
				if horny >= 90 and horny < 100:orgazm = 4
				if horny < 90:orgazm = 6
			elseif silavag = 1:
				if horny >= 90:orgazm = 5
				if horny >= 80 and horny < 90:orgazm = 4
				if horny < 80:orgazm = 6
			elseif silavag = 2:
				if horny >= 80:orgazm = 5
				if horny >= 70 and horny < 80:orgazm = 4
				if horny < 70:orgazm = 6
			end
		end

		if orgazm = 5:
			preOrg += 1
			if razeba < 4:
				if silavag = 2:
					orgrand = RAND(50,300)
					if orgrand > preOrg:orgazm = 4
				elseif silavag < 2:
					orgazm = 4
				end
			elseif razeba = 4:
				if silavag = 2:
					orgrand = RAND(0,100)
					if orgrand > preOrg:orgazm = 4
				elseif silavag < 2:
					orgrand = RAND(50,300)
					if orgrand > preOrg:orgazm = 4
				end
			elseif razeba >= 5:
				if silavag = 2:
					orgrand = RAND(0,50)
					if orgrand > preOrg:orgazm = 4
				elseif silavag < 2:
					orgrand = RAND(0,100)
					if orgrand > preOrg:orgazm = 4
				end
			end
		end

		if orgazm = 0:
			horny = 0
			manna = manna - 15
			willpower = willpower - 15
			if vgape < 3:vgape = 3
			vgapetime = totminut

			'Вы застонали от боли когда <<$boy>> вошел в вас, из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут. Вы плачете и стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 1:
			horny = horny - 40
			manna = manna - 10
			willpower = willpower - 10
			if vgape < 2:vgape = 2
			vgapetime = totminut

			'Вы закусили губу от боли когда <<$boy>> вошел в вас, между ног болезненные ощущения. Вы морщитесь и стонете от боли пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 2:
			horny = horny - 30
			manna = manna - 5
			willpower = willpower - 5
			if vgape < 1:vgape = 1
			vgapetime = totminut

			'Вы вздрогнули от внезапной боли когда <<$boy>> вошел в вас, между ног болезненные ощущения, которые плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока крепкий <<dick>> сантиметровый член трахает вашу киску, но у вас ничего не выходит.'
		elseif orgazm = 3:
			horny = horny - 20
			manna = manna + 5
			willpower = willpower + 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 4:
			horny = horny - 10
			manna = manna + 10
			willpower = willpower + 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny -= 5
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1
			vaginalOrgasm += 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиваться принимая в себя член. Между ног становится очень тепло и приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на елде.'
		elseif orgazm = 6:
			horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы почувствовали как член проникает в вашу киску, когда <<$boy>> вошел в вас. Между ног приятно, но член значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end

		if vagina <= dick:vagina = vagina + 1
	elseif vagina = 0 and mesec <= 0:
		horny = 0
		manna = manna - 15
		willpower = willpower - 15
		vagina = vagina + 1

		'Вы закусили губу от боли и из глаз брызнули слезы когда <<$boy>> вошел в вас, разорвав вашу девственную плеву. Вы плачете и стоните пока крепкий <<dick>> сантиметровый член трахает вашу окровавленную киску.'
	end

	if vagina < dick:vagina += 1
	sex += 1
}

$sexcum = {
	frost = 0

	if protect ! 1:
		!не защищенный секс
		finrand = RAND(0,1)
		if finrand = 0:
			!внутрь
			cumpussy = cumpussy + 1
			'<<$boy>> застонал и вы почувствовали как струя спермы ударила вам внутрь вашего тела.'
			gs'preg'

			manna = manna - 15
			willpower = willpower - 15
			if preg = 0 or preg = 1 and pregtime < 7:'Черт, так ведь и залететь можно, подумалось вам с ужасом.'
			if preg = 1 and pregtime >= 7:'Вы усмехнулись про себя, ну по крайней мере вы не залетите.'
		elseif finrand = 1:
			!наружу
			if pose = 0:
				cumbelly = cumbelly + 1
				'<<$boy>> застонал и вынув член из вас, кончил на ваш живот.'
			elseif pose = 1:
				cumass = cumass + 1

				'<<$boy>> застонал и вынув член из вас, кончил на вашу попу.'
			end

			narrand = RAND(0,100)
			if narrand = 0:
				gs'preg'
			end
		end
	elseif protect = 1:
		protect = 0
		'<<$boy>> застонал и вы поняли, что он кончил в презерватив.'

		prezrand = RAND(0,100)
		if prezrand <= 2:
			'Вынув из вас член <<$boy>> сказал "Хмм, презерватив лопнул"'
			gs'preg'
		end
	end

	pose = 0
}

$analsex = {
	frost = 0

	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0
		'<<$boy>> вытащил из вашей ещё узкой и тугой попки пробку,'
	end

	if dick >= anus:anus = anus + 3
	'<<$boy>> раздвинув ваши ягодицы стал массировать ваше анальное отверстие пальцами, сначала одним, потом двумя.'

	if lubri > 0:
		lubri -= 1
		lubonus += RAND(2,5)
		'Вы выдавили анальной смазки себе на руку и начали намазывать свою попку. После этого вы дали парню тюбик и он намазал свой член смазкой.'
	end

	if anus < 10:'Когда в вашу попку вошло три пальца вы невольно застонали от боли.'
	if anus >= 10:'Потом парень ввел вам три пальца и начал растягивать ваш анус.'
	'<<$boy>> вытащил пальцы из вашей попы и вы почувствовали как его твердый член уперся в вашу дырочку.'
	if anus + 10 < dick:'Вы взвизгнули и закусили губы от резкой боли когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
	if anus + 10 >= dick:'Вы застонали от чувства переполненности когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
	'<<$boy>> замер на минуту, давая вашей попе приспособится к торчащему в ней члену, после чего начал водить им все настойчивей, растягивая ваш анус.'

	if anus + lubonus + 2 < dick:
		if mop > 1:mop = 0
		horny -= 20
		manna -= 20
		if agape < 3:agape = 3
		agapetime = totminut
		'Вы заплакали и прикусили губу, когда <<dick>> сантиметровый член начал трахать вашу попу на полную силу. В попе все горит огнем и вы мечтаете только о том, что бы эта пытка побыстрее кончилась.'
	elseif anus + lubonus + 2 >= dick:
		horny += 10
		if agape < 2 and lubonus = 0:agape = 2
		agapetime = totminut
		'Вы начали ритмично стонать в такт движениям члена внутри вас. Вы чувствуете как ваш анус растягивается когда член входит в вас.'

		if horny >= 100:
			if anal >= 10 and orgasm > 0:
				manna += 20
				if agape < 1 and lubonus = 0:agape = 1 & agapetime = totminut
				'Вам становиться немного приятно когда член движется внутри вашей попки и вы стоните от удовольствия.'
			end
		end
	end

	lubonus = 0
	!'Через некоторое время парень застонал и вы почувствовали как вашу попу наполняет приятное тепло.'
	anal += 1
}

$analsex2 = {
	frost = 0

	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0
		'<<$boy>> вытащил из вашей ещё узкой и тугой попки пробку,'
	end

	if dick >= anus:anus = anus + 3
	'<<$boy>> раздвинув ваши ягодицы стал массировать ваше анальное отверстие пальцами, сначала одним, потом двумя.'

	if lubri > 0:
		lubri -= 1
		lubonus += RAND(2,5)
		'Вы выдавили анальной смазки себе на руку и начали намазывать свою попку. После этого вы дали парню тюбик и он намазал свой член смазкой.'
	end

	if anus < 10:'Когда в вашу попку вошло три пальца вы невольно застонали от боли.'
	if anus >= 10:'Потом парень ввел вам три пальца и начал растягивать ваш анус.'
	'<<$boy>> вытащил пальцы из вашей попы и вы почувствовали как его твердый член уперся в вашу дырочку.'
	if anus + 10 < dick:'Вы взвизгнули и закусили губы от резкой боли когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
	if anus + 10 >= dick:'Вы застонали от чувства переполненности когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
	'<<$boy>> замер на минуту, давая вашей попе приспособится к торчащему в ней члену, после чего начал водить им все настойчивей, растягивая ваш анус.'

	if anus + lubonus + 2 < dick:
		if mop > 1:mop = 0
		horny -= 20
		manna -= 20
		if agape < 3:agape = 3
		agapetime = totminut
		'Вы заплакали и прикусили губу, когда <<dick>> сантиметровый член начал трахать вашу попу на полную силу. В попе все горит огнем и вы мечтаете только о том, что бы эта пытка побыстрее кончилась.'
	elseif anus + lubonus + 2 >= dick:
		horny += 10
		if agape < 2 and lubonus = 0:agape = 2
		agapetime = totminut
		'Вы начали ритмично стонать в такт движениям члена внутри вас. Вы чувствуете как ваш анус растягивается когда член входит в вас.'

		if horny >= 100:
			if anal >= 10 and orgasm > 0:
				manna += 20
				if agape < 1 and lubonus = 0:agape = 1 & agapetime = totminut
				'Вам становиться немного приятно когда член движется внутри вашей попки и вы стоните от удовольствия.'
			end
		end
	end

	lubonus = 0
	!'Через некоторое время парень застонал и вы почувствовали как вашу попу наполняет приятное тепло.'
	!anal += 1
}

$analsexrude = {
	frost = 0

	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0
		'<<$boy>> вытащил из вашей ещё узкой и тугой попки пробку,'
	end

	if dick >= anus:anus = anus + 3
	'<<$boy>> засунул в ваше анальное отверстие палец, затем второй и начал ими двигать.'
	if anus < 10:'Когда в вашу попку вошло три пальца вы невольно застонали от боли.'
	if anus >= 10:'Потом парень ввел вам три пальца и начал растягивать ваш анус.'
	'<<$boy>> вытащил пальцы из вашей попы и вы почувствовали как его твердый член уперся в вашу дырочку.'
	if anus + 10 < dick:'Вы взвизгнули и закусили губы от резкой боли когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
	if anus + 10 >= dick:'Вы застонали от чувства переполненности когда его <<dick>> сантиметровый член раздвинув вашу попку вошел в вас.'
	'<<$boy>> замер на минуту, давая вашей попе приспособится к торчащему в ней члену, после чего начал водить им все настойчивей, растягивая ваш анус.'

	if anus + lubonus + 2 < dick:
		if mop > 1:mop = 0
		horny -= 20
		manna -= 20
		if agape < 3:agape = 3
		agapetime = totminut
		'Вы заплакали и прикусили губу, когда <<dick>> сантиметровый член начал трахать вашу попу на полную силу. В попе все горит огнем и вы мечтаете только о том, что бы эта пытка побыстрее кончилась.'
	elseif anus + lubonus + 2 >= dick:
		horny += 10
		if agape < 2 and lubonus = 0:agape = 2
		agapetime = totminut
		'Вы начали ритмично стонать в такт движениям члена внутри вас. Вы чувствуете как ваш анус растягивается когда член входит в вас.'

		if horny >= 100:
			if anal >= 10 and orgasm > 0:
				manna += 20
				if agape < 1 and lubonus = 0:agape = 1
				agapetime = totminut
				'Вам становиться немного приятно когда член движется внутри вашей попки и вы стоните от удовольствия.'
			end
		end
	end

	lubonus = 0
	cumanus += 1
	'Через некоторое время <<$boy>> застонал и вы почувствовали как вашу попу наполняет тепло.'
	anal += 1
}
--- dinSex ---------------------------------

