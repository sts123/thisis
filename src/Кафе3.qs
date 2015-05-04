# Кафе3
if $ARGS[0] = 'дом':
	cla
	*clr
	money += 100
	minut += 15
	gs'stat'

	'<<$boy>> оплатил ваш счет и поймал такси.'
	'Вы сели с ним на заднее сиденье автомобиля. <<$boy>> положил свою руку вам на колено и начал его гладить забираясь все выше к вашей киске.'

	act 'Наслаждаться ласками':
		cla
		minut += 15
		horny += 15
		gs'stat'
		dynamic $venerasiak

		'<<$boy>> добрался до вашей киски и начал ласкать ее пальцами.'

		act 'Постараться убрать его руки':
			cla
			minut += 15
			horny += 10
			gs'stat'

			'Вы постарались убрать руки парня от промежности, но <<$boy>> повернувшись к вам начал ласкать ваши груди руками через одежду.'

			act 'Приехать':gt'BDsex','start'
		end
		act 'Ласкать руками его член':
			cla
			minut += 15
			horny += 10
			gs'stat'

			'Вы залезли в штаны к парню и достали его <<dick>> сантиметровый член начав ласкать его руками.'

			derand = RAND(0,100)
			if derand >= 95:
				'<<$boy>> застонал и взяв вас за затылок стал приближать ваше лицо к своему члену.'

				act 'Взять в рот':
					cla
					*clr
					minut += 15
					horny += 10
					guy += 1
					bj += 1
					gs'stat'

					'<center><img src="images/studia/car.gif"></center>'
					'Вы наклонились приблизив свое лицо к паху парня и обхватили своими губами его член начав сосать его.'

					gs'oral','0'
					swallow += 1
					cumlip += 1

					'Наконец парень наполнил ваш рот своей горячей спермой которую вам девать было некуда и вы ее проглотили. Такси остановилось. И <<$boy>> вас выставил из него на улицу.'

					act 'Уйти':gt'street'
				end
				act 'Постараться убрать его руки':
					cla
					minut += 15
					horny += 10
					gs'stat'

					'Вы постарались убрать руки парня от своей головы, но <<$boy>> повернувшись к вам начал ласкать ваши груди руками через одежду.'

					act 'Приехать':gt'BDsex','start'
				end
			else
				act 'Приехать':gt'BDsex','start'
			end
		end
	end
	act 'Постараться убрать его руки':
		cla
		minut += 15
		horny += 10
		gs'stat'

		'Вы постарались убрать руки парня от промежности, но <<$boy>> повернувшись к вам начал ласкать ваши груди руками через одежду.'

		act 'Приехать':gt'BDsex','start'
	end
end

if $ARGS[0] = '0':
	cla
	*clr
	$nameV = $boy
	minut += 15
	gs'stat'

	deyst = RAND(1,100)
	if deyst < 70:
		:vag

		'<<$boy>> укладывает вас на кровать и раздевает.'

		deysts = RAND(1,3)
		if deysts = 1:
			guy = guy + 1
			sex = sex + 1
			vagina += 1

			picrand = RAND(1,5)
			if picrand = 1:'<center><img src="images/pics/vagmis.jpg"></center>'
			if picrand = 2:'<center><img src="images/pics/vagmis2.jpg"></center>'
			if picrand = 3:'<center><img src="images/pics/vagmis3.jpg"></center>'
			if picrand = 4:'<center><img src="images/pics/vagmis4.jpg"></center>'
			if picrand = 5:'<center><img src="images/pics/vagmis5.jpg"></center>'

			pose = 0
			gs'orgasm','start'

			'<<$boy>> раздвигает ваши ноги и входит в вас.'
			!'Член как молот долбит внутри вас, вам очень приятно и вы готовы кончить.'

			act 'Уйти':gt'street'
		elseif deysts = 2:
			guy = guy + 1
			sex = sex + 1
			vagina += 1
			cumass = cumass + 1

			'<<$boy>> ставит вас раком и входит в вас'
			!'<<$boy>> раздвигает ваши ноги и входит в вас.'

			picrand = RAND(1,5)
			if picrand = 1:'<center><img src="images/pics/vagdog.jpg"></center>'
			if picrand = 2:'<center><img src="images/pics/vagdog2.jpg"></center>'
			if picrand = 3:'<center><img src="images/pics/vagdog3.jpg"></center>'
			if picrand = 4:'<center><img src="images/pics/vagdog4.jpg"></center>'
			if picrand = 5:'<center><img src="images/pics/vagdog5.jpg"></center>'

			pose = 1
			gs'orgasm','start'

			act 'Уйти':gt'street'
		elseif deysts = 3:
			guy = guy + 1
			sex = sex + 1
			cumass = cumass + 1

			'<<$boy>> ложится на кровать и сажает вас сверху, вы чувствуете как его член входит в вас'
			'Его член вошел в вас и вы начали прыгать на его елде.'

			picrand = RAND(1,5)
			if picrand = 1:'<center><img src="images/pics/vagcow.jpg"></center>'
			if picrand = 2:'<center><img src="images/pics/vagcow2.jpg"></center>'
			if picrand = 3:'<center><img src="images/pics/vagcow3.jpg"></center>'
			if picrand = 4:'<center><img src="images/pics/vagcow4.jpg"></center>'
			if picrand = 5:'<center><img src="images/pics/vagcow5.jpg"></center>'

			pose = 0
			gs'orgasm','start'

			act 'Уйти':gt'street'
		end
	elseif deyst >= 70 and deyst < 85:
		'<<$boy>> говорит вам что хочет что бы вы у него отсосали'

		act 'Отказаться':gt'Кафе3','0'
		act 'Взять в рот':
			guy = guy + 1
			bj += 1
			throat = throat + 1
			vaf = vaf+1

			picrand = RAND(1,10)
			if picrand = 1:'<center><img src="images/pics/bj.jpg"></center>'
			if picrand = 2:'<center><img src="images/pics/bj2.jpg"></center>'
			if picrand = 3:'<center><img src="images/pics/bj3.jpg"></center>'
			if picrand = 4:'<center><img src="images/pics/bj4.jpg"></center>'
			if picrand = 5:'<center><img src="images/pics/bj5.jpg"></center>'
			if picrand = 6:'<center><img src="images/pics/bj6.jpg"></center>'
			if picrand = 7:'<center><img src="images/pics/bj7.jpg"></center>'
			if picrand = 8:'<center><img src="images/pics/bj8.jpg"></center>'
			if picrand = 9:'<center><img src="images/pics/bj9.jpg"></center>'
			if picrand = 10:'<center><img src="images/pics/bj10.jpg"></center>'

			'<<$boy>> достает свой член'
			'Вы взяли его член в рот и начали сосать.'
			'<<$boy>> стонет и вот вот кончит.'

			act 'Вынуть член изо рта':
				*clr
				cla

				bjrand = RAND(1,100)
				if bjrand < 50 and vaf > 100:'Вы успеваете вынуть член изо рта и <<$boy>> кончает мимо вас.'
				if bjrand >= 50 or vaf <= 100:cumface = cumface + 1 & '<<$boy>> кончает вам на лицо.'

				picrand = RAND(1,5)
				if picrand = 1 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial.jpg"></center>'
				if picrand = 2 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial2.jpg"></center>'
				if picrand = 3 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial3.jpg"></center>'
				if picrand = 4 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial4.jpg"></center>'
				if picrand = 5 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial5.jpg"></center>'

				'Вы стараетесь стереть сперму с лица, но сперма стирается плохо.'

				act 'Уйти':gt'street'
			end
			act 'Сосать дальше':
				*clr
				cla
				vaf = vaf+1

				picrand = RAND(1,10)
				if picrand = 1:'<center><img src="images/pics/cum.jpg"></center>'
				if picrand = 2:'<center><img src="images/pics/cum2.jpg"></center>'
				if picrand = 3:'<center><img src="images/pics/cum3.jpg"></center>'
				if picrand = 4:'<center><img src="images/pics/cum4.jpg"></center>'
				if picrand = 5:'<center><img src="images/pics/cum5.jpg"></center>'
				if picrand = 6:'<center><img src="images/pics/cum6.jpg"></center>'
				if picrand = 7:'<center><img src="images/pics/cum7.jpg"></center>'
				if picrand = 8:'<center><img src="images/pics/cum8.jpg"></center>'
				if picrand = 9:'<center><img src="images/pics/cum9.jpg"></center>'
				if picrand = 10:'<center><img src="images/pics/cum10.jpg"></center>'

				'Вы чувствуете как горячая струя спермы ударяет вам в горло. У вас полный рот спермы.'

				act 'Проглотить':
					cla
					vaf = vaf+2
					cumlip = cumlip + 1

					'<<$boy>> смотрит как вы глотаете сперму.'

					act 'Уйти':gt'street'
				end
				act 'Выплюнуть':
					cla
					'Вы идете в ванную и там выплевываете сперму'

					act 'Уйти':gt'street'
				end
			end
			!act 'Уйти':gt'street'
		end
	elseif deyst >= 85:
		'<<$boy>> говорит вам что хочет вас отиметь в зад'

		act 'Отказаться':gt'Кафе3','0'
		act 'Согласиться':
			cla
			guy = guy + 1
			anal = anal + 1
			anus += 1
			if lubri > 0:lubri = lubri - 1
			cumass = cumass + 1

			picrand = RAND(1,10)
			if picrand = 1:'<center><img src="images/pics/anal.jpg"></center>'
			if picrand = 2:'<center><img src="images/pics/anal2.jpg"></center>'
			if picrand = 3:'<center><img src="images/pics/anal3.jpg"></center>'
			if picrand = 4:'<center><img src="images/pics/anal4.jpg"></center>'
			if picrand = 5:'<center><img src="images/pics/anal5.jpg"></center>'
			if picrand = 6:'<center><img src="images/pics/anal6.jpg"></center>'
			if picrand = 7:'<center><img src="images/pics/anal7.jpg"></center>'
			if picrand = 8:'<center><img src="images/pics/anal8.jpg"></center>'
			if picrand = 9:'<center><img src="images/pics/anal9.jpg"></center>'
			if picrand = 10:'<center><img src="images/pics/anal10.jpg"></center>'

			'<<$boy>> ставит вас раком и смазывает вам зад каким то кремом. Вы чувствуете как что то тугое уперлось вам в задний проход.'
			'Резкая боль в заднем проходе сменяется на легкое удовольствие. <<$boy>> вас трахает в задницу плавно, что бы не порвать ничего.'
			'Вы чувствуете как ваш задний проход наполняется какой то теплой жидкостью. Вы приводите себя в порядок в ванной и одеваетесь.'

			act 'Уйти':gt'street'
		end
	end
end

if $ARGS[0] = 'туалет':
	cla
	$nameV = $boy
	dynamic $venerasiak

	'Вы зашли в туалет вместе с парнем. <<$boy>> начал вас целовать и ласкать. Потом он предложил вам отсосать у него.'

	act 'Отказаться':
		cla
		guy = guy + 1
		sex = sex + 1
		cumass = cumass + 1
		vagina += 1
		pose = 1

		'<center><img src="images/pics/vagtualet.jpg"></center>'
		'Вы отказались но вашего горячего любовника это не смутило, он развернул вас спиной к себе и нагнул.'
		'Вы почувствовали, что <<$boy>> обнажил ваш зад и что то твердое упирается вам во влагалище'
		'Вас трахают раком в сортире.'

		gs'orgazm','start'

		act 'Уйти':gt'street'
	end
	act 'Взять в рот':
		cla
		vaf = vaf+1
		guy = guy + 1
		bj += 1
		throat = throat + 1

		picrand = RAND(1,10)
		if picrand = 1:'<center><img src="images/pics/bj.jpg"></center>'
		if picrand = 2:'<center><img src="images/pics/bj2.jpg"></center>'
		if picrand = 3:'<center><img src="images/pics/bj3.jpg"></center>'
		if picrand = 4:'<center><img src="images/pics/bj4.jpg"></center>'
		if picrand = 5:'<center><img src="images/pics/bj5.jpg"></center>'
		if picrand = 6:'<center><img src="images/pics/bj6.jpg"></center>'
		if picrand = 7:'<center><img src="images/pics/bj7.jpg"></center>'
		if picrand = 8:'<center><img src="images/pics/bj8.jpg"></center>'
		if picrand = 9:'<center><img src="images/pics/bj9.jpg"></center>'
		if picrand = 10:'<center><img src="images/pics/bj10.jpg"></center>'

		'<<$boy>> достает свой член'
		'Вы взяли его член в рот и начали сосать.'
		'<<$boy>> стонет и вот вот кончит.'

		act 'Вынуть член изо рта':
			cla
			*clr

			bjrand = RAND(1,100)
			if bjrand < 50 and vaf < 100:'Вы успеваете вынуть член изо рта и <<$boy>> кончает мимо вас.'
			if bjrand >= 50 or vaf >= 100:cumface = cumface + 1 & '<<$boy>> кончает вам на лицо.'

			picrand = RAND(1,5)
			if picrand = 1 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial.jpg"></center>'
			if picrand = 2 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial2.jpg"></center>'
			if picrand = 3 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial3.jpg"></center>'
			if picrand = 4 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial4.jpg"></center>'
			if picrand = 5 and bjrand >= 50 or repa = 6:'<center><img src="images/pics/facial5.jpg"></center>'

			act 'Уйти':gt'street'
		end
		act 'Сосать дальше':
			cla
			*clr
			vaf = vaf+2

			picrand = RAND(1,10)
			if picrand = 1:'<center><img src="images/pics/cum.jpg"></center>'
			if picrand = 2:'<center><img src="images/pics/cum2.jpg"></center>'
			if picrand = 3:'<center><img src="images/pics/cum3.jpg"></center>'
			if picrand = 4:'<center><img src="images/pics/cum4.jpg"></center>'
			if picrand = 5:'<center><img src="images/pics/cum5.jpg"></center>'
			if picrand = 6:'<center><img src="images/pics/cum6.jpg"></center>'
			if picrand = 7:'<center><img src="images/pics/cum7.jpg"></center>'
			if picrand = 8:'<center><img src="images/pics/cum8.jpg"></center>'
			if picrand = 9:'<center><img src="images/pics/cum9.jpg"></center>'
			if picrand = 10:'<center><img src="images/pics/cum10.jpg"></center>'

			'Вы чувствуете как горячая струя спермы ударяет вам в горло. У вас полный рот спермы.'

			act 'Проглотить':
				cla
				vaf = vaf+1
				cumlip = cumlip + 1
				swallow += 1

				'<<$boy>> смотрит как вы глотаете сперму.'

				act 'Уйти':gt'street'
			end
			act 'Выплюнуть':
				cla
				'Вы идете в ванную и там выплевываете сперму'

				act 'Уйти':gt'street'
			end
		end
	end
end

if $ARGS[0] = 'компашка':
	cla
	dynamic $venerasiak

	picrand = RAND(1,15)
	if picrand = 1:'<center><img src="images/pics/gang.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/gang2.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/gang3.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/gang4.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/gang5.jpg"></center>'
	if picrand = 6:'<center><img src="images/pics/gang6.jpg"></center>'
	if picrand = 7:'<center><img src="images/pics/gang7.jpg"></center>'
	if picrand = 8:'<center><img src="images/pics/gang8.jpg"></center>'
	if picrand = 9:'<center><img src="images/pics/gang9.jpg"></center>'
	if picrand = 10:'<center><img src="images/pics/gang10.jpg"></center>'
	if picrand = 11:'<center><img src="images/pics/gang11.jpg"></center>'
	if picrand = 12:'<center><img src="images/pics/gang12.jpg"></center>'
	if picrand = 13:'<center><img src="images/pics/gang13.jpg"></center>'
	if picrand = 14:'<center><img src="images/pics/gang14.jpg"></center>'
	if picrand = 15:'<center><img src="images/pics/gang15.jpg"></center>'

	'Вы едeте куда то с парнями на машине. Вы пьяны и вас на заднем сиденье ласкают сразу двое парней. Наконец-то машина останавливается и вас вынимают из машины.'
	'Вас раздевают, и вы чувствуете как в вас входит член, вы пытаетесь что то сказать, в этот момент вам вставляют член в рот.'
	'Вас отодрали во все щели, еще и не по одному разу. Вы сильно пьяны и не можете сосредоточится и запомнить подробности. Какие то смутные ощущения, всюду тела, руки, члены. После этого вас довезли и выбросили у подъезда.'

	guy = guy + 3
	sex = sex + 1
	bj += 1
	anal = anal + 1
	throat = throat + 1
	cumlip = cumlip + 1
	cumface = cumface + 1
	cumbutt = cumbutt + 1
	cumass = cumass + 1
	cumpussy = cumpussy+1
	rape = rape+1
	gang = gang+1
	vagina += 1
	anus += 1

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'кофе':
	cla
	dynamic $venerasiak
	$nameV = $boy
	minut += 30
	gs'stat'

	picrand = RAND(1,5)
	if picrand = 1:'<center><img src="images/pics/vagmis.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/vagmis2.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/vagmis3.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/vagmis4.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/vagmis5.jpg"></center>'

	'<<$boy>> согласился на ваше предложение. Вы привели его к себе домой, там долго обнимались и продолжили ласкаться на кровати. <<$boy>> вошел в вас со всей силы.'

	pose = 0
	gs'orgasm','start'
	guy = guy + 1
	sex = sex + 1
	vagina += 1

	act 'Вымыться':gt'Vanr'
end
--- Кафе3 ---------------------------------

