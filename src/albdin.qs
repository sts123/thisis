# albdin
$d_albina_home_start = {
	tipalbevrand = RAND(0,3)
	if tipalbevrand = 0:
		'Альбина предлагает вам поиграть в видео игру.'

		dynamic $d_albina_home_game
	elseif tipalbevrand = 1:
		'Альбина предлагает вам вместе с ней развлечься примеряя наряды.'

		dynamic $d_albina_home_dressing
	elseif tipalbevrand = 2:
		'Альбина предлагает вам поболтать.'

		dynamic $d_albina_home_chat
	elseif tipalbevrand = 3:
		'Альбина предлагает вам выпить вина.'

		dynamic $d_albina_home_vine
	elseif tipalbevrand = 4:
		'Альбина предлагает вам.'

		dynamic $d_albina_home_dressing
	elseif tipalbevrand = 5:
		'Альбина предлагает вам.'

		dynamic $d_albina_home_dressing
	end
}

$d_albina_home_game = {
	act 'Играть':
		cls
		minut += 60
		manna += 100
		willpower += 20
		react += RAND(0,1)
		gs'stat'

		'<center><img src="images/qwest/alter/albina/game.jpg"></center>'
		'Вы вместе с Альбиной легли перед огромным телевизором к которому была подсоединена приставка.'
		'Альбина включила игру и вы начали с ней играть.'

		if albsexday ! daystart:
			'Альбина подмигивает вам "Светик, а давай сыграем на желания, если я выиграю, то я сделаю с тобой кое что, а если ты выиграешь, то можешь сделать со мной все что угодно"'

			act 'Ну уж нет':gt $curloc
			act 'Давай':
				cls
				albsexday = daystart
				if react < 25:
					albplay = 0
				elseif react >= 25 and react < 50:
					tipalbrand = RAND(1,100)
					if tipalbrand < 75:albplay = 0
					if tipalbrand >= 75:albplay = 1
				elseif react >= 50 and react < 75:
					tipalbrand = RAND(1,100)
					if tipalbrand < 50:albplay = 0
					if tipalbrand >= 50:albplay = 1
				elseif react >= 75:
					tipalbrand = RAND(1,100)
					if tipalbrand < 40:albplay = 0
					if tipalbrand >= 40:albplay = 1
				end

				gs'stat'

				'<center><img src="images/qwest/alter/albina/game.jpg"></center>'

				if albplay = 0:
					'Альбина с легкостью вас обыграла и хохоча как злодей из водевиля шлепнула вас по заднице ладошкой "Вставай раком Светик! Будешь моей сучкой."'

					tipdesrand = RAND(0,1)
					if tipdesrand = 0:dynamic $d_albina_vag_strapon
					if tipdesrand = 1:dynamic $d_albina_anal_strapon
				else
					'Альбина продула вам и молча сунула вам страпон в руки. "На, бей не жалей Чапая."'

					dynamic $d_albina_akt_vag
					dynamic $d_albina_akt_anal
				end
			end
		elseif albsexday = daystart:
			act 'Передохнуть':gt $curloc
		end
	end
}

$d_albina_home_dressing = {
	act 'Примерять наряды':
		cls
		minut += 60
		manna += 100
		willpower += 20
		gs'stat'

		'<center><img src="images/qwest/alter/albina/dressing.jpg"></center>'
		'Вы вместе с Альбиной открыли ее огромный шкаф и начали весело копаться в шмотках. У нее оказался просто бездонный гардероб набитый самой разнообразной одеждой и вы битый час примеряли вместе с Альбиной разные наряды.'

		if albsexday ! daystart:
			act 'Передохнуть':gt $curloc
		elseif albsexday = daystart:
			act 'Передохнуть':gt $curloc
		end
	end
}

$d_albina_home_chat = {
	act 'Болтать':
		cls
		minut += 60
		manna += 100
		willpower += 20
		gs'stat'

		'<center><img src="images/qwest/alter/albina/drunk.jpg"></center>'
		''

		if albsexday ! daystart:
			act 'Передохнуть':gt $curloc
		elseif albsexday = daystart:
			act 'Передохнуть':gt $curloc
		end
	end
}

$d_albina_home_vine = {
	act 'Пить вино':
		cls
		minut += 60
		manna += 100
		willpower += 20
		alko += 4
		gs'stat'

		'<center><img src="images/qwest/alter/albina/drunk.jpg"></center>'
		''

		if albsexday ! daystart:
			act 'Передохнуть':gt $curloc
		elseif albsexday = daystart:
			act 'Передохнуть':gt $curloc
		end
	end
}

$d_albina_vag_strapon = {
	act 'Встать раком':
		cls
		albsexday = daystart
		minut += 15
		$boy = 'Альбина'
		if vagina < 10:dick = 10
		if vagina >= 10:dick = vagina+5
		if npcSex[23] = 0:npcSex[23] = 1 & girl += 1
		lesbian += 1
		straponVagPass += 1
		gs'stat'

		'<center><img src="images/qwest/alter/albina/strapon.jpg"></center>'
		'Альбина достала <<dick>> сантиметровый страпон и прикрепила его ремнями к себе. Ее руки нежно погладили вас между ног и вы ощутили как ее пальцы стали ласкать вашу киску.'

		dynamic $d_strapon_vag

		act 'Передохнуть':gt $curloc
	end
}

$d_albina_anal_strapon = {
	act 'Встать раком':
		cls
		albsexday = daystart
		minut += 15
		$boy = 'Альбина'
		if anus < 10:dick = 10
		if anus >= 10:dick = anus+2
		if npcSex[23] = 0:npcSex[23] = 1 & girl += 1
		lesbian += 1
		straponAnalPass += 1
		gs'stat'

		'<center><img src="images/qwest/alter/albina/analstrapon.jpg"></center>'
		'Альбина достала <<dick>> сантиметровый страпон и прикрепила его ремнями к себе. Ее руки нежно погладили вас между ног и вы ощутили как ее пальцы стали ласкать ваш анус.'

		dynamic $d_strapon_anal

		act 'Передохнуть':gt $curloc
	end
}

$d_albina_akt_vag = {
	act 'Поставить Альбину раком и трахнуть в киску страпоном':
		cls
		albsexday = daystart
		minut += 15
		if npcSex[23] = 0:npcSex[23] = 1 & girl += 1
		lesbian += 1
		straponVagAkt += 1
		gs'stat'

		'<center><img src="images/qwest/alter/albina/straponakt.jpg"></center>'
		'Вы начали долбить Альбину страпоном в киску и она стонала и вертела задом на страпоне, наконец вы просто устали и остановились.'

		act 'Передохнуть':gt $curloc
	end
}

$d_albina_akt_anal = {
	act 'Поставить Альбину раком и трахнуть в зад страпоном':
		cls
		albsexday = daystart
		minut += 15
		if npcSex[23] = 0:npcSex[23] = 1 & girl += 1
		lesbian += 1
		straponVagAkt += 1
		gs'stat'

		'<center><img src="images/qwest/alter/albina/straponaktanal.jpg"></center>'
		'Вы начали долбить Альбину страпоном в попу и она стонала и вертела задом на страпоне, наконец вы просто устали и остановились.'

		act 'Передохнуть':gt $curloc
	end
}
--- albdin ---------------------------------

