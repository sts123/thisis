# WorkHosp
if $ARGS[0] = 'start':
	$sexloc = $CURLOC

	gs'stat'

	'<center><b><font color = maroon>Поликлиника</font></b></center>'
	'<center><img src="images/img/spaln/hospital.jpg"></center>'
	'В поликлинике кипит работа, пациенты сидят в очередях, врачи ведут прием, медсестры носятся из кабинета в кабинет.'

	jobhosprand = RAND(0,9)
	act 'Работать в процедурной':
		cla
		minut += 60
		if jobhosprand = 0:gt'WorkHosp','2'

		'Вы поработали в процедурной.'

		act 'Отойти':gt'WorkHosp','start'
	end
	act 'Помогать врачу на приеме':
		cla
		minut += 60
		if jobhosprand = 0:gt'WorkHosp','3'

		'Вы помогали врачу на приеме.'

		act 'Отойти':gt'WorkHosp','start'
	end
	act 'Отдохнуть в сестринской':
		cla
		minut += 30

		'Вы отдыхаете.'

		act 'Мастурбировать 15 мин':
			minut += 15

			mastrrand = RAND(0,2)
			if mastrrand = 0:
				gt'WorkHosp','1'
			else
				cla
				*clr
				mastr += 1
				horny = 0
				orgasm += 1

				picrand = 11
				'<center><img src="images/img/mastr/mastr<<picrand>>.jpg"></center>'
				'Вы матрубируете.'
				'Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма'
			end

			act 'Выйти':gt'WorkHosp','start'
		end

		act 'Отойти':gt'WorkHosp','start'
	end
	act 'Есть в кафетерии':
		minut = minut + 30
		health = health + 10
		manna = manna + 5
		willpower = willpower + 5

		if energy >= 30:
			fat = fat + 5

			'Вы больше не можете есть.'
		elseif energy >= 20 and energy < 30:
			fat = fat + 3
			energy = energy + 10

			'Вы через силу затолкали в себя еду.'
		elseif energy < 20:
			energy = energy +20
			fat = fat + 1

			'Вы с удовольствием съели еду.'
		end

		if water >= 20:
			'Чай в вас больше не лезет.'
		elseif water < 20:
			water = water +20

			'Вы с удовольствием выпили кружку чая.'
		end
	end
	act 'Болтать с Катей':
		cla
		minut += 30
		kat += 1

		if kat > 60 and military = 0:gt'WorkHosp','milit'

		'Вы поболтали с Катей.'

		if kat > 50:
			act 'Предложить уединиться':gt'WorkHosp','0'
		end

		act 'Отойти':gt'WorkHosp','start'
	end

	if hour >= 16:
		cls
		'<center><b><font color = maroon>Поликлиника</font></b></center>'
		'<center><img src="images/img/spaln/hospital.jpg"></center>'
		'Ваша смена закончилась.'

		act 'Идти домой':gt'street'
	end
end

if $ARGS[0] = 'milit':
	cla
	military = 1

	'"Слушай, мне тут предложили подзаработать в выходные, но у меня планы. В общем дело такое рядом с городом часто устраивают военные игры, ну и по правилам нужно что бы там присутствовали медики. Да не пугайся ты там с тобой будет врач, так что тебе максимум что придется делать это пластыри наклеивать. Короче если надумаешь в субботу автобус у поликлиники, он ждет с 6 до 9 часов. Да чуть не забыла за два дня заплатят 5 тысяч."'

	act 'Отойти':gt'WorkHosp','start'
end

if $ARGS[0] = '0':
	cla
	*clr

	katprorand = RAND(0,2)
	if katprorand = 0:
		girl += 1
		lesbian += 1
		picrand = 11
		xgt'lezbsex','var'
	elseif katprorand = 1:
		'<center><img src="images/img/spaln/hospsex7.jpg"></center>'
		'Только вы с Кэт начали ласкать друг друга как в процедурную вошел пациент. Вы отпрянули от неё пытаясь сделать вид что ничего не происходило, Кэт же наоборот ничуть не стесняясь так и лежал на кушетке с широко раздвинутыми ногами, гордо демонстрируя свою влажную от вашего языка киски, и призывно смотрела на парня, взглядом приглашая его присоединиться.'

		act 'Выйти':gt'WorkHosp','start'
		act 'Развлечься':
			girl += 1
			guy += 1
			lesbian += 1
			picrand = 12
			gt'podrsex','var'
		end
	elseif katprorand = 2:
		'<center><img src="images/img/spaln/hospsex8.jpg"></center>'
		'Когда ваши игры были уже в самом разгаре в процедурную вошли двое врачей, но вы были уже настолько возбуждены что не обращая на них никакого внимания продолжали, а когда мужчины начали ласкать вас, вы лишь податливо шире раздвинули ноги, приглашая их в свою вагину.'

		act 'Развлекаться':
			gang += 1
			picrand = 11
			xgt'sexdvanadva','var'
		end
	end
end

if $ARGS[0] = '1':
	cla
	*clr

	mastrrand = RAND(0,1)
	if mastrrand = 0:
		'<center><img src="images/img/spaln/hospsex9.jpg"></center>'
		'Пока вы самозабвенно мастурбируете, пытаясь довести себя до оргазма, в комнату входит врач, вы так увлечены собой что замечаете его лишь когда его рука начинает притягивать вашу голову к стоящему члену.'

		if horny < 50:act 'Вырваться и убежать':gt'WorkHosp','start'

		act 'Развлечься':
			guy += 1
			picrand = 12
			gt'sex','minet'
		end
	elseif mastrrand = 1:
		picrand = RAND(12,13)

		'<center><img src="images/img/spaln/hospsex10.jpg"></center>'
		'Пока вы самозабвенно мастурбируете, пытаясь довести себя до оргазма, в комнату входят два врача, вы так увлечены собой что замечаете их лишь когда они стоят перед вами с членами наголо и мастурбируют.'

		if horny < 50:act 'Убежать':gt'WorkHosp','start'

		act 'Развлечься':guy += 2 & xgt'sexdvoe','var'
	end
end

if $ARGS[0] = '2':
	cla
	*clr
	picrand = RAND(13,15)

	'<center><img src="images/img/spaln/hospsex11.jpg"></center>'
	'К вам заходит пациент и с порога спуская штаны демонстрирует свой вялый член и просит вас помочь ему так как видите ли у него не стоит. Умом вы понимаете, что это все лишь глупая уловка что бы трахнуть вас, но все таки вам его жалко. А вдруг у него действительно не стоит, а вам удастся его поднять, а что если ему просто не везет с девушками и если и сегодня не повезет, он из окна выпрыгнет.'

	act 'Выгнать его':gt'WorkHosp','start'
	act 'Поднять':guy += 1 & gt'sex','minet'
end

if $ARGS[0] = '3':
	cla
	*clr
	'<center><img src="images/img/spaln/hospsex12.jpg"></center>'
	'К вам входит симпатичная пациентка, пока врач пытается её осмотреть, она то и дело прикасается к его брюкам в районе члена, врач поглядывает на вас с вопросом в глазах.'

	act 'Сделать ей замечание':gt'WorkHosp','start'
	act 'Развлечься':
		guy += 1
		girl += 1
		lesbian += 1
		picrand = 13
		gt'podrsex','var'
	end
end
--- WorkHosp ---------------------------------

