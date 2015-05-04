# stwork2
!minut = minut + 15
clr
gs'stat'

'<center><b><font color = maroon>Сцена</font></b></center>'
'<center><img src="images/pic/stripclub1.jpg"></center>'

if publichot < 10:$pubhot = 'и освистывают вас, раздаются вопли "уберите эту тупую корову"'
if publichot >= 10 and publichot < 20:$pubhot = 'и освистывают вас'
if publichot >= 20 and publichot < 30:$pubhot = 'и откровенно скучают занимаясь выпивкой и разговорами между собой'
if publichot >= 30 and publichot < 60:$pubhot = 'иногда бросающие на вас взгляды сопровождаемые улыбками'
if publichot >= 60 and publichot < 70:$pubhot = 'и с легким интересом разглядывают вас и ведут беседы между собой за кружками пива'
if publichot >= 70 and publichot < 80:$pubhot = 'с интересом разглядывающие вас'
if publichot >= 80 and publichot < 90:$pubhot = 'с напряженными лицами, у некоторых даже заметен выступивший пот на лбах'
if publichot >= 90:$pubhot = 'забывшие о своей выпивке, улюлюкающие и трясущие деньгами'
'Перед сценой сидят мужчины <<$pubhot>>.'

if hour >= 15 or hour <= 2:
	if stpredmet > 0:
		act 'Танцевать стриптиз 5 минут (<<stpredmet>> предметов одежды)':
			cls
			minut += 5
			stpredmet -= 1
			sweat += 1
			fat -= 3
			manna -= RAND(5,10)
			if stpredmet = 1:sweat += 1
			if stpredmet = 0:hapri = 0 & stripdancesum += 1
			publichot += RAND(stripdance/30,stripdance/10)
			if publichotstart = publichot:publichot -= RAND(5,10) & publichotstart = publichot
			gs'stat'

			'<center><img src="images/pic/stripclub2.jpg"></center>'
			'Вы танцевали на сцене раздеваясь перед публикой.'

			if ves > rost-90:
				vesrand = RAND(0,100)
				if vesrand >= 75:
					publichot -= RAND(5,10)

					'В зале смеются над вами, "Гляди как у нее жиры болтаются. Ага и жопа трясется как студень."'
				end
			end

			dynamic $pubhotdi

			act 'Далее':gt $curloc
		end
		act 'Танцевать вокруг шеста 5 минут (<<stpredmet>> предметов одежды)':
			cls
			minut += 5
			stpredmet -= 1
			sweat += 2
			fat -= 5
			manna -= RAND(10,50)
			if stpredmet = 1:hapri = 0
			if stpredmet = 0:mop = 0 & stripdancesum += 1
			hapri = 0
			publichot += RAND(stripdance/20,stripdance/5)+ RAND(poledance/20,poledance/5)
			if publichotstart = publichot:publichot -= RAND(5,10) & publichotstart = publichot
			gs'stat'

			'<center><img src="images/pic/strippole.jpg"></center>'
			'Вы танцевали вокруг шеста показывая акробатику и эротично раздеваясь перед публикой.'

			if ves > rost-90:
				vesrand = RAND(0,100)
				if vesrand >= 75:
					publichot = 15

					'Выполняя очередной трюк на шесте вы не удержали свой вес и грохнулись об пол. Толпа захохотала "Эй бегемотиха, топай в то болото откуда пришла."'

					fingalrand = RAND(0,100)
					if fingalrand >= 75:
						fingal += RAND(2,5)

						'При падении вы сильно приложились лицом об пол и кажется у вас расплывается синяк на лице.'
					end
				elseif vesrand >= 50:
					publichot -= RAND(5,10)

					'В зале смеются над вами, "Гляди как у нее жиры болтаются. Ага и жопа трясется как студень."'
				end
			end

			dynamic $pubhotdi

			act 'Далее':gt $curloc
		end
	end

	if stpredmet = 0:
		if publichot >= 80 and publichot < 90:
			privatrand = RAND(0,100)
			if privatrand >= 90:
				'После танца охранник показал вам что у вас есть клиент для приватного танца.'

				dynamic $privatdancedi

				exit
			end
		elseif publichot >= 90:
			privatrand = RAND(0,100)
			if privatrand >= 70:
				'После танца охранник показал вам что у вас есть клиент для приватного танца.'

				dynamic $privatdancedi

				exit
			end
		end
	end
else
	'Рабочее время кончилось. Пора идти домой.'
end

act 'Уйти со сцены':gt'stwork','start'

$pubhotdi = {
	if publichot < 30:
		payrand = 0
		'Никто даже и внимания не обратил на ваши телодвижения на сцене.'
	elseif publichot >= 30 and publichot < 60:
		payrand = 0
		'Пара человек посмотрели на вас но не более того, чаевых вам никто не дал.'
	elseif publichot >= 60 and publichot < 70:
		payrand = RAND(0,1)
		if payrand = 0:
			'Пара человек посмотрели на вас но не более того, чаевых вам никто не дал.'
		elseif payrand = 1:
			paymoneyrand = RAND(1,3)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		end
	elseif publichot >= 70 and publichot < 80:
		payrand = RAND(0,5)
		if payrand = 0:
			'Чаевых вам никто не дал.'
		elseif payrand = 1:
			paymoneyrand = RAND(1,3)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 2:
			paymoneyrand = RAND(2,4)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 3:
			paymoneyrand = RAND(3,5)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 4:
			paymoneyrand = RAND(4,6)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 5:
			paymoneyrand = RAND(5,10)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		end
	elseif publichot >= 80 and publichot < 90:
		payrand = RAND(0,10)
		if payrand = 0:
			'Чаевых вам никто не дал.'
		elseif payrand = 1:
			paymoneyrand = RAND(1,3)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 2:
			paymoneyrand = RAND(2,4)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 3:
			paymoneyrand = RAND(3,5)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 4:
			paymoneyrand = RAND(4,6)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 5:
			paymoneyrand = RAND(5,10)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 6:
			paymoneyrand = RAND(7,12)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 7:
			paymoneyrand = RAND(10,15)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 8:
			paymoneyrand = RAND(15,20)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 9:
			paymoneyrand = RAND(20,30)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 10:
			paymoneyrand = RAND(30,50)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		end
	elseif publichot >= 90:
		payrand = RAND(0,15)
		if payrand = 0:
			'Чаевых вам никто не дал.'
		elseif payrand = 1:
			paymoneyrand = RAND(1,3)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 2:
			paymoneyrand = RAND(2,4)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 3:
			paymoneyrand = RAND(3,5)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 4:
			paymoneyrand = RAND(4,6)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 5:
			paymoneyrand = RAND(5,10)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 6:
			paymoneyrand = RAND(7,12)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 7:
			paymoneyrand = RAND(10,15)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 8:
			paymoneyrand = RAND(15,20)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 9:
			paymoneyrand = RAND(20,30)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 10:
			paymoneyrand = RAND(30,40)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 11:
			paymoneyrand = RAND(40,50)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 12:
			paymoneyrand = RAND(50,60)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 13:
			paymoneyrand = RAND(60,70)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 14:
			paymoneyrand = RAND(70,80)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		elseif payrand = 15:
			paymoneyrand = RAND(80,100)
			money += paymoneyrand*10

			'Какой то парень сунул вам в трусики <<paymoneyrand>>0 рублей'
		end
	end
}

$privatdancedi = {
	act 'Идти на приватный танец':
		cls
		minut += 30
		money += 800
		sweat = 1
		hapri = 0
		mop = 0
		fat -= 5
		stripdancesum += 1
		if stprrand = 0:gt'stwork2','pr1'
		if stprrand = 1:gt'stwork2','pr2'
		if stprrand = 2:gt'stwork2','pr3'
		gs'stat'

		'<center><img src="images/pic/privatstrip.jpg"></center>'
		'В отдельном кабинете вы под музыку в течении получаса показывали различные эротические танцы клиенту.'

		act 'Уйти в раздевалку':gt'stwork','start'
	end
}

if $ARGS[0] = 'pr1':
	cla
	*clr
	!money += 2000

	'<center><img src="images/img/centr/pr1.jpg"></center>'
	'Вы танцуете перед четырьмя парнями, через некоторое время они предлагают вам, обслужить их по полной за 5000 руб.'

	act 'Уйти':gt'stwork','start'
	act 'Согласиться':
		gang += 1
		guy += 4
		picrand = 12
		money += 5000
		gt'paysex','var'
	end
end

if $ARGS[0] = 'pr2':
	cla
	*clr
	!money += 2000

	'<center><img src="images/img/centr/pr2.jpg"></center>'
	'Вы танцуете перед парнем, пока он дрочит, вскоре он предлагает вам, обслужить его по полной за 3000 руб.'

	act 'Уйти':gt'stwork','start'
	act 'Согласиться':
		guy += 1
		picrand = 39
		money += 3000
		xgt'sex','var'
	end
end

if $ARGS[0] = 'pr3':
	cla
	*clr
	!money += 2000

	'<center><img src="images/img/centr/pr3.jpg"></center>'
	'Вы с еще одной танцовщицей изображаете лейсбийские игры, через несколько минут вам предлагают сделать ваши игры более реалистичными за 2000руб каждой.'

	act 'Уйти':gt'stwork','start'
	act 'Согласиться':
		girl += 1
		lesbian += 1
		picrand = 18
		money += 2000
		xgt'lezbsex','var'
	end
end
--- stwork2 ---------------------------------

