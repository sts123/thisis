# katjaEvDin
$katja_shower_kiss = {
	cls
	horny += 10
	KatjaLust += 10
	KatjaSlut += 1
	KatjaHorny += 10
	gs'stat'

	'<center><img src="images/qwest/alter/katja/showerkiss.jpg"></center>'
	'Катя нежно вас обняла одной рукой и поцеловала в губы, вы почувствовали как ее мягкая ладошка легла на ваш голый лобок и ее тонкий пальчик нащупав ваш клитор начал его ласкать.'

	if KatjaSlut >= 10:
		'Катя нежно, но настойчиво сажает вас на край ванны.'
	elseif KatjaSlut < 10:
		'Катя нежно ласкает ваш клитор пальцами и ее губы начинают целовать вашу шею, пробираясь все ниже.'
	end

	act 'Сесть на край ванны':
		cls
		minut += 5
		horny += 10
		KatjaHorny -= 10
		KatjaLust += 1
		KatjaSlut += 1
		if npcSex[14] = 0:npcSex[14] = 1 & girl += 1 & KatjaSlut += 5 & KatjaLust += 5
		lesbian += 1
		orgasm += 1
		horny = 0
		gs'stat'

		'<center><img src="images/qwest/alter/katja/showersex.jpg"></center>'
		'Вы сели на край ванны и раздвинули ноги открыв свою влажную киску. Катя встала на колени перед вами и аккуратно лизнула ваши набухшие красные лепестки. Ее язычок начал бойко ласкать вашу киску не забывая про клитор. Вскоре блаженство охватило все ваше тело. Вы заметили как рука Кати скользнула себе между ног и начала там двигаться. Внезапно вас охватывает мощный оргазм от которого вы почти теряете сознание, все ваше тело выгибается в конвульсиях и горячие волны блаженства охватывают вас.'

		act 'Попрощаться и идти домой':gt'gorodok'
	end
	act 'Убрать ее руки':
		cls
		dom += 1
		minut += 5
		horny += 10
		KatjaDom -= 1
		KatjaHorny -= 10
		KatjaLust += 1
		gs'stat'

		'<center><img src="images/qwest/alter/npc/14.jpg"></center>'
		'Вы убрали ее руки и Катя весело заулыбалась. Вы домылись, Катя смущенно смотрела в сторону и вышли из ванной комнаты.'

		act 'Попрощаться и идти домой':gt'gorodok'
	end
}

$d_katja_sex = {
	act 'Расслабиться':
		cls
		if horny < 50:horny = 50
		gs'stat'

		if KatjaSlut >= 20:
			KatjaSlut += 1

			'Катя положила свою ручку вам между ног и стала легко сжимать ваши малые губы.'

			dynamic $d_katja_kuni_p
		else
			KatjaLust += 1

			'Катя засмущалась и отстранилась от вас.'

			act 'Попрощаться и идти домой':gt'gorodok'
		end
	end
	act 'Потрогать Катю между ног':
		cls
		if horny < 50:horny = 50
		gs'stat'

		if KatjaSlut >= 20:
			KatjaSlut += 1
			KatjaLust += 1

			'Вы положили свою руку Кати между ног ощущая ее горячую и влажную киску под трусиками.'

			dynamic $d_katja_kuni
		else
			if dom > 0:
				KatjaSlut += 1
				KatjaLust += 1

				'Вы положили свою руку Кати между ног ощущая ее горячую и влажную киску под трусиками.'

				dynamic $d_katja_kuni
			else
				KatjaSlut += 1
				KatjaLust += 1

				'Катя засмущалась и убрала ваши руки.'

				act 'Попрощаться и идти домой':gt'gorodok'
			end
		end
	end
}

$d_katja_kuni = {
	act 'Лизать Катю':
		cls
		KatjaSlut += 1
		KatjaLust += 1
		lesbian += 1
		KatjaHorny = 0
		if npcSex[14] = 0:npcSex[14] = 1 & girl += 1 & KatjaSlut += 5 & KatjaLust += 5
		gs'stat'

		'<center><img src="images/qwest/alter/katja/kuni2.jpg"></center>'
		'Вы наклонились Кате между ног и стали лизать ее киску, Катя застонала и закрыла глаза наслаждаясь вашим язычком, через некоторое время Катя задрожала и ее киска начала ритмично сжиматься, Катя вцепилась в ваши волосы и уже не сдерживаясь стонала. Потом она отодвинула вашу голову от себя.'

		if horny >= 50:
			'Катя улыбнулась вам "Это было классно Светуль, раздвинь ножки."'

			dynamic $d_katja_kuni_p
		else
			act 'Попрощаться и идти домой':gt'gorodok'
		end
	end
}

$d_katja_kuni_p = {
	act 'Раздвинуть ноги':
		cls
		KatjaSlut += 1
		KatjaLust += 1
		lesbian += 1
		orgasm += 1
		horny = 0
		if npcSex[14] = 0:npcSex[14] = 1 & girl += 1 & KatjaSlut += 5 & KatjaLust += 5
		gs'stat'

		'<center><img src="images/qwest/alter/katja/kuni.jpg"></center>'
		'Катя наклонила свою голову между ваших ног и вы почувствовали как ее язычок начал скользить по вашему клитору, вас охватило приятное блаженство. Через некоторое время приятный огонь в низу живота стал нестерпимый и вы забились в конвульсиях оргазма, через некоторое время ощущения стали слишком болезненные и вы отодвинулись от Кати.'

		if KatjaHorny > 0:
			'Катя улыбнулась вам "Это было классно Светуль, давай теперь ты мне."'

			dynamic $d_katja_kuni
		else
			act 'Попрощаться и идти домой':gt'gorodok'
		end
	end
}
--- katjaEvDin ---------------------------------

