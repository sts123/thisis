# kazinosvid
minut += 60
kisvrand = 0
manna += 10
gs'stat'

'<center><b>Кинотеатр</b></center>'
'<center><img src="images/img/kazinosvid/0.jpg"></center>'
'Вы и <<$telsob>> сели за столик и начали играть.'

act 'Играть':
	if $telsob = 'Алла':
		alla += 1

		if alla >= 20:
			kisvrand = RAND(0,10)
			if kisvrand > 0 and kisvrand < 3:gt'kazinosvid','1'
			if kisvrand > 2 and kisvrand < 5:gt'kazinosvid','2'
			if kisvrand = 0 or kisvrand > 4:gt'kazinosvid','3'
		elseif alla < 20:
			gt'kazinosvid','3'
		end
	elseif $telsob = 'Маша':
		masha += 1

		if masha >= 20:
			kisvrand = RAND(0,10)
			if kisvrand > 0 and kisvrand < 3:gt'kazinosvid','1'
			if kisvrand > 2 and kisvrand < 5:gt'kazinosvid','2'
			if kisvrand = 0 or kisvrand > 4:gt'kazinosvid','3'
		elseif masha < 20:
			gt'kazinosvid','3'
		end
	elseif $telsob = 'Катя':
		kat += 1

		if kat >= 20:
			kisvrand = RAND(0,10)
			if kisvrand > 0 and kisvrand < 3:gt'kazinosvid','1'
			if kisvrand > 2 and kisvrand < 5:gt'kazinosvid','2'
			if kisvrand = 0 or kisvrand > 4:gt'kazinosvid','3'
		elseif kat < 20:
			gt'kazinosvid','3'
		end
	end
end

if $ARGS[0] = '1':
	cla
	*clr
	'<center><img src="images/img/kazinosvid/0.jpg"></center>'
	'Пока вы играли к вам подсели двое парней и предложили сыграть два на два у них в номере.'
	'<<$telsob>> сказала что она не против и вопросительно посмотрела на вас.'

	act 'Отказаться':gt'kazinosvid','3'
	act 'Согласиться':
		cla
		*clr

		pikrand = RAND(14,15)
		'<center><img src="images/img/kazinosvid/<<picrand>>.jpg"></center>'

		randkazinv = RAND(0,1)
		randkazinvsum = RAND(100,10000)
		if randkazinv = 1:
			money += randkazinvsum
			'Вы выиграли и ваша доля <<randkazinvsum>> руб. Вы и <<$telsob>> собрались уходить, но парни начали упрашивать вас остаться "Да ладно вам девчонки, куда торопитесь может посидим, выпьем, познакомимся поближе. Ну оставайтесь, утешьте проигравших" сказал один расстегнув ширинку и достав член, явно давая понять какого утешения он ждет.'

			telsobnastr = RAND(0,10)
			if telsobnastr < 4:
				'"Нет, нам пора, утешьте себя сами." сказала <<$telsob>> и взяв вас за руку вывела обратно в зал'

				act 'Закончить':gt'kazinosvid','3'
			elseif telsobnastr > 3:
				'"Я не против утешить проигравших" сказала <<$telsob>> похотливо улыбаясь и смотря на парня у которого из открытой ширинки уже торчал член.'

				act 'Забрать <<$telsob>> и уйти':gt'kazinosvid','3'
				act 'Утешить проигравших':
					kazsexdva = 1
					guy += 2
					gang += 1
					xgt'sexdvanadva','var'
				end
			end
		elseif randkazinv = 0:
			'Вы проиграли и ваша доля проигрыша <<randkazinvsum>> руб.'

			if money < randkazinvsum:
				'У вас нет денег чтобы расплатиться и у <<$telsob>> тоже не осталось денег что бы заплатить, вариантов нет придется раздвинуть ноги.'

				act 'Платить натурой':
					kazsexdva = 1
					guy += 2
					gang += 1
					xgt'sexdvanadva','var'
				end
			elseif money >= randkazinvsum:
				'У вас достаточно денег чтобы расплатиться и у <<$telsob>> тоже хватает денег что бы заплатить, но парни явно намекают что платить не обязательно деньгами, они с радостью примут и другую форму оплаты.'

				if telsobnastr < 4:
					money -= randkazinvsum

					'"Нет, нам пора, вот ваши деньги." сказала <<$telsob>> и взяв вас за руку вывела обратно в зал'

					act 'Закончить':gt'kazinosvid','3'
				elseif telsobnastr > 3:
					'"Я не против воспользоваться альтернативной формой оплаты" сказала <<$telsob>> похотливо улыбаясь.'

					act 'Отдать деньги, забрать <<$telsob>> и уйти':
						money -= randkazinvsum
						gt'kazinosvid','3'
					end
					act 'Воспользоваться альтернативной формой оплаты':
						kazsexdva = 1
						guy += 2
						gang += 1
						xgt'sexdvanadva','var'
					end
				end
			end
		end
	end
end

if $ARGS[0] = '2':
	cla
	*clr
	'<center><img src="images/img/kazinosvid/0.jpg"></center>'
	'Пока вы играли к вам подсел парень и предложил сыграть с ним у него в номере.'
	'<<$telsob>> сказала что она не против и вопросительно посмотрела на вас.'

	act 'Отказаться':gt'kazinosvid','3'
	act 'Согласиться':
		cla
		*clr
		'<center><img src="images/img/kazinosvid/3.jpg"></center>'
		'Придя в номер вы расположись на кровати и начали играть, через несколько минут парень предложил сыграть на раздевание. <<$telsob>> хихикнула "А тебе потом не стыдно будет, а то ведь пока не разу не выиграл", парень ухмыльнулся "Мне стыдиться нечего."'

		act 'Отказаться, забрать <<$telsob>> и уйти':gt'kazinosvid','3'
		act 'Согласиться':
			cla
			*clr
			'<center><img src="images/img/kazinosvid/4.jpg"></center>'
			'Через несколько минут вы и <<$telsob>> уже снимали с себя трусики. "Так не честно, ты специально сначала поддался, чтобы мы согласились" сказала <<$telsob>>, демонстративно надувая губы.'
			'"Хорошо девчонки последняя игра, вы вдвоем против меня, можете даже картами меняться, выиграете делаю что скажите, проиграете развлечемся по полной." сказал парень.'
			'"Играем" тут же выпалила <<$telsob>>'

			act 'Играть':
				cla
				*clr
				'<center><img src="images/img/kazinosvid/5.jpg"></center>'
				'Через минуту он уже стоял со спущенными штанами "Ну что девчонки, карточный долг - святое, налетайте" сказал он указывая на свой фалос'

				act 'Начинать':
					guy += 1
					pikrand = 23
					kazsexdva = 1
					gt'podrsex','var'
				end
			end
		end
	end
end

if $ARGS[0] = '3':
	cla
	horny = 0
	minut += 90
	gs'stat'

	'Вскоре <<$telsob>> сказала что ей нужно бежать и ушла'

	act 'Уйти':gt'nord'
end
--- kazinosvid ---------------------------------

