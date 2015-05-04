# orgazm
if $ARGS[0] = 'start':
	protect = 0
	vidageday = vidageday - 1
	frost = 0

	if tabletki <= 0 and prezik > 0 and prosta = 0:
		prezik = prezik - 1
		protect = 1
		'Вы дали презерватив парню и он молча одел его.'
	elseif tabletki >= 0 and prezik > 0 and prosta > 0:
		prezik = prezik - 1
		protect = 1
	elseif tabletki <= 0 and prezik > 0:
		prezik = prezik - 1
		protect = 1
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

		if orgazm = 0:
			horny = 0
			manna = manna - 15
			willpower = willpower - 15

			'Вы застонали от боли когда <<$nameV>> вошел в вас, из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут. Вы плачете и стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 1:
			horny = horny - 10
			manna = manna - 10
			willpower = willpower - 10

			'Вы закусили губу от боли когда <<$nameV>> вошел в вас, между ног болезненные ощущения. Вы морщитесь и стонете от боли пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 2:
			horny = horny - 5
			manna = manna - 5
			willpower = willpower - 5

			'Вы вздрогнули от внезапной боли когда <<$nameV>> вошел в вас, между ног болезненные ощущения, которые плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока крепкий <<dick>> сантиметровый член трахает вашу киску, но у вас ничего не выходит.'
		elseif orgazm = 3:
			!horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$nameV>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 4:
			!horny = horny + 10
			manna = manna + 10
			willpower = willpower + 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$nameV>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny = 0
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиваться принимая в себя член. Между ног становится очень тепло и приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на елде.'
		elseif orgazm = 6:
			horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы почувствовали как член проникает в вашу киску, когда <<$nameV>> вошел в вас. Между ног приятно, но член значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end
		if vagina <= dick:vagina = vagina + 1
	elseif vagina = 0 and mesec <= 0:
		horny = 0
		manna = manna - 15
		willpower = willpower - 15
		vagina = vagina + 1

		'Вы закусили губу от боли и из глаз брызнули слезы когда <<$nameV>> вошел в вас, разорвав вашу девственную плеву. Вы плачете и стоните пока крепкий <<dick>> сантиметровый член трахает вашу окровавленную киску.'
	end

	if protect ! 1:
		!не защищенный секс
		finrand = RAND(0,1)
		if finrand = 0:
			!внутрь
			cumpussy = cumpussy + 1

			'<<$nameV>> застонал и вы почувствовали как струя спермы ударила вам внутрь вашего тела.'

			if tabletki <= 0 and mesec <= 0:
				gs'preg'
				manna = manna - 15
				willpower = willpower - 15
				'Черт, так ведь и залететь можно, подумалось вам с ужасом.'
			end
		elseif finrand = 1:
			!наружу
			if pose = 0:
				cumbelly = cumbelly + 1
				'<<$nameV>> застонал и вынув член из вас, кончил на ваш живот.'
			elseif pose = 1:
				cumass = cumass + 1
				'<<$nameV>> застонал и вынув член из вас, кончил на вашу попу.'
			end
		end
	elseif protect = 1:
		protect = 0
		'<<$nameV>> застонал и вы поняли, что он кончил в презерватив.'
	end

	pose = 0
end
--- orgazm ---------------------------------

