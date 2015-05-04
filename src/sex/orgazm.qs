# orgazm

!horny - возбужденность
!vagina - эластичность вагины
!silavag - умение парня 0-неумеха, 1-середняк 2-ебарь
!dick - размер члена парня
!orgazm - коэфициент удовольствия Итог
!0 - очень больно, 1 - больно, 2 - не приятно, 3 - так себе, 4 - недооргазм 5 - оргазм

if $ARGS[0] = 'start':
	vidageday = vidageday - 1
	frost = 0

	if tabletki > 0:protect = 1
        if vagina <= dick:vagina += 1
        
	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna -= 10
		willpower -= 10
		'У вас месячные и в то время пока член таранит вас, из влагалища потихоньку вытекает кровь. Ощущения болезненные и не приятные. Вы стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
	elseif vagina > 0:
		!месячных нет
		smazka = horny/10
		prinat = smazka + vagina

		if dick >= prinat*2:
			!член критично больше возможностей гг
			if silavag = 0:orgazm = 0
			if silavag = 1:orgazm = 1
			if silavag = 2:orgazm = 2
		elseif dick > prinat:
			!член больше возможностей гг
                        a=100
                        b=90
                        c=80
                        d=70
                        e=60
                        
			if silavag = 0:
                                silshift = 0
			elseif silavag = 1:
                                silshift = 10
			elseif silavag = 2:
                                silshift = 20
			end

                        if horny >= a - silshift:
                                orgazm = 5
                        elseif horny >= b - silshift:
                                orgazm = 4
                        elseif horny >= c - silshift:
                                orgazm = 3
                        elseif horny >= d - silshift:
                                orgazm = 2
                        elseif horny >= e - silshift:
                                orgazm = 1
                        else:
                                orgazm = 0
                        end
		elseif dick >= vagina:
			!член меньше возможностей гг
                        a=80
                        b=60
                        c=40
                        
			if silavag = 0:
                                silshift = 0
                                
			elseif silavag = 1:
                                silshift = 10
			elseif silavag = 2:
                                silshift = 20
			end

                        if horny >= a - silshift:
                                orgazm = 5
                        elseif horny >= b - silshift:
                                orgazm = 4
                        elseif horny >= c - silshift:
                                orgazm = 3
                        else:
                                orgazm = 2
                        end
		else:
                        a=100
                        b=90
                        
			if silavag = 0:
				silshift = 0
			elseif silavag = 1:
				silshift = 10
			elseif silavag = 2:
				silshift = 20
			end

                        if horny >= a - silshift:
                                orgazm = 5
                        elseif horny >= b - silshift:
                                orgazm = 4
                        else:
                                orgazm = 6
                        end
		end

		if orgazm = 0:
			horny = 0
			manna -= 15
			willpower -= 15

			'Вы застонали от боли когда <<$nameV>> вошел в вас, из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут. Вы плачете и стонете пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 1:
			horny -= 10
			manna -= 10
			willpower -= 10

			'Вы закусили губу от боли когда <<$nameV>> вошел в вас, между ног болезненные ощущения. Вы морщитесь и стонете от боли пока крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 2:
			horny -= 5
			manna -= 5
			willpower -= 5

			'Вы вздрогнули от внезапной боли когда <<$nameV>> вошел в вас, между ног болезненные ощущения, которые плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока крепкий <<dick>> сантиметровый член трахает вашу киску, но у вас ничего не выходит.'
		elseif orgazm = 3:
			!horny = horny
			manna += 5
			willpower += 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$nameV>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску.'
		elseif orgazm = 4:
			!horny = horny
			manna += 10
			willpower += 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$nameV>> вошел в вас. Между ног становится немного приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny = 0
			manna += 15
			willpower += 15
			orgasm += 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиваться принимая в себя член. Между ног становится очень тепло и приятно, когда крепкий <<dick>> сантиметровый член трахает вашу киску. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на елде.'
		elseif orgazm = 6:
			horny += 5
			manna += 5
			willpower += 5

			'Вы почувствовали как член проникает в вашу киску, когда <<$nameV>> вошел в вас. Между ног приятно, но член значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end
		
	else:
		horny = 0
		manna -= 15
		willpower -= 15
		vagina += 1

		'Вы закусили губу от боли и из глаз брызнули слезы когда <<$nameV>> вошел в вас, разорвав вашу девственную плеву. Вы плачете и стоните пока крепкий <<dick>> сантиметровый член трахает вашу окровавленную киску.'
	end

	if protect ! 1:
		!не защищенный секс
		finrand = RAND(0,1)
		if finrand = 0:
                        !внутрь
			cumpussy += 1

			'<<$nameV>> застонал и вы почувствовали как струя спермы ударила внутрь вашего тела.'

			if tabletki <= 0 and mesec <= 0:
				manna -= 15
				willpower -= 15
				'Черт, так ведь и залететь можно, подумалось вам с ужасом.'
			end
		else:
			!наружу
			if pose = 0:
				cumbelly += 1
				'<<$nameV>> застонал и вынув член из вас, кончил на ваш живот.'
			elseif pose = 1:
				cumass += 1
				'<<$nameV>> застонал и вынув член из вас, кончил на вашу попу.'
			end
		end
	else:
		'<<$nameV>> застонал и вы поняли, что он кончил в презерватив.'
	end

        gs 'ovulation'

end
--- orgazm ---------------------------------

