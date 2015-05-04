# gdkin
$din_kotov_love = {
	if kotovLoveQW > 0:
		cls
		gs'stat'

		'<center><b><font color = maroon><<$npcName[9]>> <<$npcSurName[9]>></font></b></center>'
		'<center><img src="images/qwest/alter/npc/9.jpg"></center>'
		'К вам и парню подходит Витек. "Че за хуйня? Это что за хмырь?" Витек берет за грудки парня и злобно говорит "Ну ка съебал в ужасе от моей телки, а то сейчас ебальник расшибу вдребезги. Все понял?"'

		if DPgrup = 1:
			fightboyrand = RAND(0,10)
			if fightboyrand <= 5:
				'Парень испуганно начал говорить. "Да ладно тебя, я же не знал. Уже ухожу." Витек оттолкнул парня "Вали отсюда пока я добрый."'
			elseif fightboyrand > 5 and fightboyrand < 10:
				'Парень отталкивает Витька "Руки убери, олень!" Витек внезапно наносит очень быстрый и мощный удар.'
				'Парень от удара падает на танцпол. Витек подходит к нему и хватая за грудки поднимает на ноги, после чего отшвыривает парня к стенке. "Ну чо уебок? Еще надо? Или уже понял?" Парень держась за разбитое лицо бормочет "Все, все! Я понял!"'
			elseif fightboyrand >= 10:
				'Парень молча бьет Витьку по лицу кулаком. Витек отшатывается от парня и тут же наносит быстрый и мощный удар. Начинается драка, удары летят с обоих сторон, внезапно парень пропускает очень мощную подачу со стороны Витька и отлетая к стене падает на пол. Витек подбегает к нему и всаживает в лежащего противника еще пару мощных ударов. Парень больше не сопротивляется, видимо он потерял сознание.'
			end
		elseif DPgrup = 2:
			'Пацан начинает рамсить с Витьком "Слышь, ты кто по жизни?" Витек заметно свирепеет и к нему на помощь подходят друганы. К пацану в свою очередь тоже подтягиваются пацаны. Начинается разборка. Через некоторое время обе группировки расходятся мирно.'
		elseif DPgrup = 3:
			'Мужчина разводит руками "Извините молодой человек. Не знал." Витек отталкивает мужчину "Топай отсюда городской хмырь, пока я добрый."'
		end

		act 'Уйти с Витьком':numnpc = 9 & gt'Snpc'

		exit
	end
}

$din_reakt_dance = {
	if alko > 0:
		horny += 10
		manna += 5

		'Вы чувствуете, что действия парня вас возбуждают.'
	else
		if horny > 0:horny -= 5
		manna -= 5

		'Вы чувствуете отвращение к этим действиям парня.'
	end

	gs'stat'
}

$din_reverse_reakt_dance = {
	if alko <= 0:
		manna += 20
		horny += 1

		'Вам весело и интересно.'
	elseif alko > 0:
		if horny > 0:horny -= 5
		manna -= 5

		'Вам скучно и неинтересно.'
	end

	gs'stat'
}

$din_dance_vrp = {
	minut += 5
	if dance < 50 and agil >= dance:dance += 1
	gs'stat'

	'Вы приняли предложение и парень взяв вас за руку вывел вас на танцпол, где вы начали вместе танцевать.'

	if DPgrup = 1:
		if DPtipe = 1:
			'Парень танцует с вами удерживая вас за талию своими руками.'

			dynamic $din_reverse_reakt_dance
		elseif DPtipe = 2:
			'Пьяный парень прижимает вас к себе. Вы чувствуете как ваши мягкие груди буквально расплющиваются о грудь парня.'

			dynamic $din_reakt_dance
		end
	elseif DPgrup = 2:
		if DPtipe = 1:
			'Парень довольно развязано хватает вас за талию и его руки сползают вам на бедра.'

			dynamic $din_reakt_dance
		elseif DPtipe = 2:
			'Пяный парень хватает вас за попу и сильно сжимает ее, его голова наклоняется к вашему лицу и он впивается в ваши <<$liptalk3>> поцелуем.'

			dynamic $din_reakt_dance
		end
	elseif DPgrup = 3:
		if DPtipe = 1:
			'Мужчина очень уверенно и элегантно ведет вас в танце, удерживая вас за талию своими сильными руками.'

			dynamic $din_reverse_reakt_dance
		elseif DPtipe = 2:
			'Подвыпивший мужчина не смотря на свой солидный вид обнимает вас за талию и его руки спускаются вам на попку.'

			dynamic $din_reakt_dance
		end
	end

	dynamic $din_vibor_tipe_dance

	act 'Прекратить танец':
		cls
		gt $curloc
	end
}

$din_dance_otkaz = {
	if alko <= 2 and horny <= 75:
		act 'Отказаться':
			cls
			willpower += RAND(0,1)
			gt'gdkin'
		end
	end
}

$din_vibor_tipe_dance = {
!'
	if dance >= 50 and alko > 0 and horny >= 50:
		act 'Сексуально танцевать':
			cls
			dance += 1
			gs'stat'
			gt $curloc
		end
	end
'

	act 'Далее':
		cls
		gs'stat'

		'<center><img src="images/etogame/club_dance.jpg"></center>'

		if DPgrup = 1:
			if DPtipe = 1:
				'Парень в танце сказал вам "Меня зовут <<$bname>>. А тебя как зовут?" Вы ответили "Света". Песня заканчивается и парень предлагает вам посидеть с ним и поболтать.'
			elseif DPtipe = 2:
				'Парень в танце сказал вам "Меня зовут <<$bname>>. А тебя как зовут?" Вы ответили "Света". Весь танец пьяный парень мял ваше тело и теперь его лицо раскраснелось от возбуждения. Он предлагает вам выйти из клуба на улицу, подышать свежим воздухом, пообщаться.'
			end

			act 'Идти с парнем':gt'EvBoyBuh'
		elseif DPgrup = 2:
			if DPtipe = 1:
				'Весь танец парень хватал вас за задницу и он явно возбудился, когда он прижимается к вам, вы чувствуете, что то твердое в его штанах. Наконец песня заканчивается и парень предлагает вам выйти на улицу, бухнуть.'

				act 'Идти бухать':gt'EvgopBuh'
			elseif DPtipe = 2:
				'Весь танец парень хватал вас за задницу, груди и целовал вас, он явно возбудился, когда он прижимается к вам, вы чувствуете, что то твердое в его штанах. Наконец песня заканчивается и парень предлагает вам выйти на улицу, бухнуть.'

				act 'Идти бухать':gt'EvgopBuh'
			end
		elseif DPgrup = 3:
			if DPtipe = 1:
				'Мужчина весь танец был уверенным и элегантным, наконец песня закончилась и мужчина предлагает вам выйти подышать свежим воздухом и поговорить.'

				act 'Идти с мужчиной':
					cls
					gs'stat'

					'<center><img src="images/etogame/dk_night.jpg"></center>'
					'Вы вышли на улицу с мужчиной. Он подошел к вам и немного обнял за талию. "Меня зовут <<$bname>>. А тебя как зовут?" Вы ответили "Света". Мужчина продолжил "Светик, я в вашем городке в командировке. Живу в отеле, сам из города. Практически ничего в вашем городке не знаю. Пойдем ко мне в отель. возьмем виски, икры, посидим, поболтаем."'

					act 'Ехать в отель':gt'EvOtelMan'

					dynamic $din_dance_otkaz
				end
			elseif DPtipe = 2:
				'Весь танец подвыпивший мужчина приставал к вам и когда танец закончился он зашептал вам на ухо. "Меня зовут <<$bname>>. А тебя как зовут?" Вы ответили "Света". Мужчина продолжил "Светик, я не местный, живу в отеле, давай сейчас возьмем такси и поедем ко мне."'

				act 'Ехать в отель':gt'EvOtelMan'
			end
		end

		gs'stat'
		dynamic $din_dance_otkaz
		dynamic $din_kotov_love
	end
}

$din_otbor_dance_pertner = {
	!создание партнера для танца
	sozboyrand = RAND(1,300)
	if sozboyrand > boynum:
		gs'BnameGen'

		DaPaTipeRand = RAND(0,100)
		if DaPaTipeRand < 70:
			!обыкновенный местный парень
			bmtimeTipe = 0
			DrunkDPTrand = RAND(0,100)
			if DrunkDPTrand < 70:
				DPtipe = 1
				DPgrup = 1

				$din_disc_dance = 'К вам подходит парень в джинсах и футболке, и предлагает вам потанцевать.'
				$din_disc_dance2 = 'Рядом с вами танцует парень в джинсах и футболке.'
			elseif DrunkDPTrand >= 70:
				DPtipe = 2
				DPgrup = 1

				$din_disc_dance = 'К вам подходит пьяный парень в джинсах и футболке, и предлагает вам потанцевать.'
				$din_disc_dance2 = 'Рядом с вами танцует пьяный парень в джинсах и футболке.'
			end
		elseif DaPaTipeRand >= 70 and DaPaTipeRand < 90:
			!местный гопарь
			bmtimeTipe = 1
			DrunkDPTrand = RAND(0,100)
			if DrunkDPTrand < 50:
				DPtipe = 1
				DPgrup = 2

				$din_disc_dance = 'К вам подходит парень одетый в спортивные штаны и такую же олимпийку и предлагает вам потанцевать.'
				$din_disc_dance2 = 'Рядом с вами танцует парень в спортивных штанах и олимпийке.'
			elseif DrunkDPTrand >= 50:
				DPtipe = 2
				DPgrup = 2

				$din_disc_dance = 'К вам подходит пьяный парень одетый в спортивные штаны и такую же олимпийку и берет вас руками за талию предлагая потанцевать.'
				$din_disc_dance2 = 'Рядом с вами танцует пьяный парень в спортивных штанах и олимпийке.'
			end
		elseif DaPaTipeRand >= 90:
			!командировочный
			bmtimeTipe = 2
			DrunkDPTrand = RAND(0,100)
			if DrunkDPTrand < 90:
				DPtipe = 1
				DPgrup = 3

				$din_disc_dance = 'К вам подходит мужчина в приличном пиджаке, брюках со стрелками, дорогих туфлях, и предлагает вам потанцевать.'
				$din_disc_dance2 = 'Рядом с вами танцует мужчина в приличном пиджаке, брюках со стрелками, дорогих туфлях.'
			elseif DrunkDPTrand >= 90:
				DPtipe = 2
				DPgrup = 3

				$din_disc_dance = 'К вам подходит выпивший мужчина в приличном пиджаке, брюках со стрелками, дорогих туфлях, и предлагает вам потанцевать.'
				$din_disc_dance2 = 'Рядом с вами танцует выпивший мужчина в приличном пиджаке, брюках со стрелками, дорогих туфлях.'
			end
		end

		gs'boymass'
	elseif sozboyrand <= boynum:
		Tboynum = sozboyrand
		if bmTip[Tboynum] = 0:
			$niknameboy = 'Парень'
			rudeboy = 1
			$text = 'К вам подходит парень в джинсах и футболке, и предлагает вам потанцевать. Внешность парня кажется вам знакомой, видимо вы уже танцевали с ним.'
		elseif bmTip[Tboynum] = 1:
			$niknameboy = 'Гопник'
			rudeboy = 2
			$text = 'К вам подходит парень одетый в спортивные штаны и такую же олимпийку и предлагает вам потанцевать. Внешность парня кажется вам знакомой, видимо вы уже танцевали с ним.'
		elseif bmTip[Tboynum] = 2:
			$niknameboy = 'Мужчина'
			rudeboy = 0
			$text = 'К вам подходит мужчина в приличном пиджаке, брюках со стрелками, дорогих туфлях, и предлагает вам потанцевать. Внешность мужчины кажется вам знакомой, видимо вы уже танцевали с ним.'
		end

		gt'BMloc'
	end
}

$din_too_drunk_dance = {
	if StoryLine = 1 and BeInSchool > 0:
		cls
		gs'stat'

		'К вам подходит Катя Мейнольд "Свет, ты что так нажралась? Пойдем домой, я тебя провожу."'

		act 'Идти с Катей':
			cls
			minut += 15
			grupNPC[14] = 100
			if meynoldQW = 0:meynoldQW = 1
			gs'stat'

			'<center><img src="images/etogame/club_dance.jpg"></center>'
			'Катя отвела вас к вашему дому поддерживая под руки.'

			act 'Идти домой':gt'korrPar'
		end

		exit
	end
}

$metka = $ARGS[0]
$loc = $CURLOC

boynumBlock = 0
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

if music_on = 0:
	inited = 1
	music_on = 1
	volume = 100
	$music_theme = 'gdis'
	gs'init_music'
end

'<center><b><font color = maroon>Дискотека</font></b></center>'
'<center><img src="images/etogame/club_yaho.jpg"></center>'

if hour >= 20 and hour <= 23:
	if StoryLine = 1 and BeInSchool > 0:'В клубе вы видите и несколько <a href="exec:GT ''SgrupDisco''">знакомых вам людей</a>.'
	if soniaslut < 5:soniaslut += 1

	if grupTipe[25] = 0 and StoryLine = 1 and BeInSchool > 0 and soniaslut >= 5 and hour < 23:
		'Вы замечаете на дискотеке Соню Иванько из вашего класса. Она о чем то разговаривает с Витьком Котовым.'

		act 'Посмотреть на Соню':gt'soniaDisco'

		exit
	end
!'
	if soniaPS >= 1 and hour <= 21 and meynoldQW = 0 and BeInSchool > 0:
		''
		exit
	end
'
	act 'Танцевать одной':
		cls
		'<center><img src="images/etogame/club_dance.jpg"></center>'
		minut += 5
		!fat -= 1
		if dance < 50 and agil >= dance:dance += 1
		manna += 10
		willpower += 10
		frost = 0
		gs'stat'

		if cumface > 0 or cumfrot > 0:
			if GorSlut < 2:GorSlut = 2
			manna -= 100

			'К вам подходит парень и начинает клеиться, внезапно он видит на вас сперму. Парень отпрыгивает от вас "Фууу, вафлерша. Пацаны прикиньте, эта телка вся в конче перемазана." К вам подходят еще парни посмотреть. "Ага точно. Слышь соска, неудачно высморкалась что ли?" У вас краснеют щеки от стыда и вы направляетесь к выходу.'

			act 'Уйти':gt'gdk'

			exit
		end

		if alko >= 4:
			'Вы пьяны в хлам и пытаетесь танцевать, но пол уходит из под ног и вы вместо танца просто пьяно мотаетесь регулярно натыкаясь на других людей.'

			dynamic $din_too_drunk_dance
		elseif alko < 4 and alko > 0:
			'Вы пьяны и весело скачите по танцполу не обращая внимания на окружающих и даже на музыку.'
		else
			'Музыка довольно устаревшая, но зажигательная. И вы весело кружитесь в танце, не обращая ни на кого внимания.'
		end

		if alko < 4:
			verprigrand = RAND(0,100)
			if verprigrand <= dance:
				dynamic $din_otbor_dance_pertner
				gs'stat'

				'<<$din_disc_dance2>>'

				act 'Танцевать с парнем':
					cls

					'<center><img src="images/etogame/club_dance.jpg"></center>'

					dynamic $din_dance_vrp
				end
				act 'Отойти':
					cls
					gt $curloc
				end

				exit
			end
		end

		gs'stat'

		act 'Далее':gt'gdkin'
	end
	act 'Стоять у стенки':
		cls
		minut += 5
		!fat -= 1
		manna -= 5
		frost = 0
		gs'stat'

		'<center><img src="images/etogame/club_yaho.jpg"></center>'

		if cumface > 0 or cumfrot > 0:
			if GorSlut < 2:GorSlut = 2
			manna -= 100

			'К вам подходит парень и начинает клеиться, внезапно он видит на вас сперму. Парень отпрыгивает от вас "Фууу, вафлерша. Пацаны прикиньте, эта телка вся в конче перемазана." К вам подходят еще парни посмотреть. "Ага точно. Слышь соска, неудачно высморкалась что ли?" У вас краснеют щеки от стыда и вы направляетесь к выходу.'

			act 'Уйти':gt'gdk'

			exit
		end

		if alko >= 4:
			'Вы пьяны в хлам и стоите у стенки с трудом удерживаясь за нее из за того что пол плывет у вас из под ног.'

			dynamic $din_too_drunk_dance
		elseif alko < 4 and alko > 0:
			'Вы пьяны и стоите у стенки наблюдая за танцующими.'
		else
			'Вы скромно стоите у стеночки наблюдая за танцующими.'
		end

		if alko < 4:
			verodance = 0
			if hapri = 1:verodance += 1
			if glamur = 1:verodance += 2
			if ski = 1:verodance += 1
			if mop = 2:verodance += 1
			if mop = 3:verodance += 2
			if mop = 4:verodance += 3
			verodance += alko
			verodance += 5

			verprigrand = RAND(0,20)
			if verprigrand <= verodance:
				dynamic $din_otbor_dance_pertner
				gs'stat'

				'<<$din_disc_dance>>'

				act 'Танцевать':
					cls
					gs'stat'

					'<center><img src="images/etogame/club_dance.jpg"></center>'

					dynamic $din_dance_vrp
				end
				act 'Отказаться':
					cls
					gt $curloc
				end

				exit
			end
		end

		gs'stat'

		act 'Далее':gt'gdkin'
	end
elseif hour < 20:
	'Клуб закрывается. Включается свет, затухает музыка и все начинают расходиться.'
end

act 'Выйти наружу':gt'gdk'
--- gdkin ---------------------------------

