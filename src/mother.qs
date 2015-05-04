# mother
!модель Ольга Кабаева
motherAge = age+19
if momslut >= 2 and mother < 40:mother = 40
gs'stat'
gs'motherQW'

'<center><b><font color = maroon>Мама</font></b></center>'
'<center><img src="images/qwest/alter/mother.jpg"></center>'
'Ваша мать Наташа еще довольно молода и привлекательна. Ей всего <<motherAge>> лет. Она работает в привокзальном кафе.'

if (motherKnowWhore > 0 or motherKnowSpravka > 0) and motherQW = 0:motherQW = 1
if motherQW = 1 and mother > 40:mother = 40
if mother < 20:'У вас с мамой скандал.'
if mother >= 20 and mother < 40:'У вас с мамой напряженные отношения.'
if mother >= 40 and mother < 60:'У вас с мамой нормальные отношения.'
if mother >= 60 and mother < 80:'У вас с мамой хорошие отношения.'
if mother >= 80:'У вас с мамой отличные отношения.'

act 'Отойти':gt $loc, $metka

if motherWorry = 1 and indorf = 0:
	motherWorry = 0
	mother -= 1

	'Мать не спит и стоит в коридоре ожидая вас. "Ты где шляешься? Ты знаешь какой час на дворе?"'
elseif motherWorry = 1 and indorf > 0:
	motherWorry = 0
end

if SchoolAtestat = 1 and SAtestatGift = 0:
	SAtestatGift = 1
	money += 5000
	gs'stat'

	'Мама обрадовалась "Теперь ты закончила школу и я хочу подарить тебе пять тысяч рублей. Можешь купить сама себе подарок."'
end

if hour > 5:
	if abort = 1 and pregTalkFamily = 1:
		pregTalkFamily = 2
		mother = 0

		'Мать грустно посмотрела на вас "Какая же ты все таки дура! Все таки сделала аборт, а если теперь у тебя не будет детей? Что думаешь будешь вечно молодая и вся жизнь пройдет в веселии?"'
	end

	if momslut = 1:
		act 'Сказать, что вы видели как мать трахалась с хозяином кафе':
			cls
			minut += 5
			momslut = 2
			gs'stat'

			'<center><b><font color = maroon>Мама</font></b></center>'
			'<center><img src="images/qwest/alter/mother.jpg"></center>'
			'Вы сказали матери, что вы видели ее на складе кафе с хозяином кафе. Мать заметно побледнела и села на табурет. "И что ты видела?" Вы ответили ей, что видели как она сосала у хозяина кафе, а потом он ее трахнул раком. Мать потупила глаза "Ну да, я сплю со Славой. Но хочу тебя сразу предупредить, шантажировать меня у тебя не получится." Мать посмотрела вам в глаза "Все чего ты можешь добиться, это разрушить семью."'

			act 'Отойти':gt $loc, $metka
		end
	end

	if preg = 1 and pregTalkFamily = 0:
		act 'Сказать матери, что вы беременны':
			cls
			minut += 5
			mother = 20
			pregTalkFamily = 1
			gs'stat'

			'<center><b><font color = maroon>Мама</font></b></center>'
			'<center><img src="images/qwest/alter/mother.jpg"></center>'
			'Вы сказали матери, что вы беременны. Мать с округлившимися глазами обессиленно села на табуретку. Она грустно сказала "Ну что же. Я этого и боялась. Теперь не вздумай делать аборт, если ты сделаешь аборт, то в будущем вряд ли сумеешь иметь детей. Придется тебе рожать ребенка."'

			act 'Отойти':gt $loc, $metka
		end
	end

	act 'Просить денег':
		cls
		minut += 5
		gs'stat'

		'<center><b><font color = maroon>Мама</font></b></center>'
		'<center><img src="images/qwest/alter/mother.jpg"></center>'
		'Вы попросили у мамы денег.'

		if SchoolAtestat = 0:
			if mother >= 80:
				if motherPayDay = day:
					'Мать нахмурилась "Дочура, я же тебе уже дала денег!"'
				elseif motherPayDay ! day:
					mother -= 1
					motherPayDay = day

					if Suspeh >= 70:
						if Suspeh < 90:
							money += 150

							'Мать нахмурившись дала вам 150 рублей "Будешь лучше учиться, буду давать больше. А пока, это все, что ты заслужила!"'

							act 'Отойти':gt $loc, $metka

							exit
						elseif Suspeh >= 90:
							money += 300

							'Мать улыбнулась и дала вам 300 рублей "Ладно, на деньги."'

							act 'Отойти':gt $loc, $metka

							exit
						end
					else
						'Мать нахмурилась "Будешь лучше учиться, будут деньги, а пока ты заслужила только ремня, а не денег!"'
					end
				end
			elseif mother >= 60 and mother < 80:
				if motherPayDay = day:
					'Мать нахмурилась "Нет доча. Я тебе уже давала деньги. На сегодня хватит."'
				elseif motherPayDay ! day:
					mother -= 1
					motherPayDay = day

					if Suspeh >= 70:
						if Suspeh < 90:
							money += 100

							'Мать нахмурившись дала вам 100 рублей "Будешь лучше учиться, буду давать больше. А пока, это все, что ты заслужила!"'

							act 'Отойти':gt $loc, $metka

							exit
						elseif Suspeh >= 90:
							money += 250

							'Мать улыбнулась и дала вам 250 рублей "Ладно, на деньги."'

							act 'Отойти':gt $loc, $metka

							exit
						end
					else
						'Мать нахмурилась "Будешь лучше учиться, будут деньги, а пока ты заслужила только ремня, а не денег!"'
					end
				end
			elseif mother >= 40 and mother<60:
				if motherPayDay = day:
					'Мать нахмурилась "Вот же ты липучка. Ничего не получишь!"'
				elseif motherPayDay ! day:
					mother -= 1
					motherPayDay = day

					if Suspeh >= 70:
						if Suspeh < 90:
							money += 50

							'Мать нахмурившись дала вам 50 рублей "Будешь лучше учиться, буду давать больше. А пока, это все, что ты заслужила!"'

							act 'Отойти':gt $loc, $metka

							exit
						elseif Suspeh >= 90:
							money += 200

							'Мать улыбнулась и дала вам 200 рублей "Ладно, на деньги."'

							act 'Отойти':gt $loc, $metka

							exit
						end
					else
						'Мать нахмурилась "Будешь лучше учиться, будут деньги, а пока ты заслужила только ремня, а не денег!"'
					end
				end
			elseif mother < 40 and motherKnowWhore = 0 and motherKnowSpravka = 0:
				'Мать нахмурилась "Не заслужила ты денег!"'
			elseif mother < 40 and motherKnowWhore >= 1 or mother < 40 and motherKnowSpravka >= 1:
				'-Ты ещё денег просишь, шлюха? Иди отсюда, катись к своим ебарям деньги клянчить'
			end
		elseif SchoolAtestat > 0:
			'Ты уже достаточно взрослая, зарабатывай сама.'
		end

		act 'Отойти':gt $loc, $metka
	end
	act 'Спросить про настоящего отца':
		cls
		minut += 5
		gs'stat'

		'<center><b><font color = maroon>Мама</font></b></center>'
		'<center><img src="images/qwest/alter/mother.jpg"></center>'

		if mother < 80:
			'Вы спросили у своей мамы про своего настоящего отца. Мать скорчила не довольную физиономию и ответила. "Света, я не собираюсь обсуждать эту тему сейчас. Лишь знай, что Вова, ваш отчим растил вас с Аней как своих родных дочек."'
		elseif mother >= 80:
			'Вы спросили у своей мамы про своего настоящего отца. Мать скорчила не довольную физиономию и ответила. "Понятия не имею где он и что делает. Мы с ним учились в школе вместе. Он сделал мне твою сестру Аньку. Наши родители нас поженили. Михаил, твой отец, сделал мне тебя и забухал. Мы развелись и я вышла замуж за Вовку. Колька родился уже от Вовки. Но Вовка воспитывал вас с Аней как своих родных дочек. Души в вас не чаял, и купал вас, и ходил гулять с вами на прогулку. И сказки вам рассказывал на ночь."'
		end

		act 'Отойти':gt $loc, $metka
	end
	act 'Просить новую одежду':
		cls
		minut += 5
		gs'stat'

		'<center><b><font color = maroon>Мама</font></b></center>'
		'<center><img src="images/qwest/alter/mother.jpg"></center>'
		'Вы попросили у новую одежду.'

		if SchoolAtestat = 0:
			if mother >= 80:
				if motherClotheMonth ! month:
					'Мама тяжело вздохнула "Ну вот опять. Ты же меня по миру пустишь. Пойдем в магазин, горе луковое."'

					act 'Идти в магазин':
						cls
						mother = 70
						motherClotheMonth = month
						minut += 30
						gs'stat'

						'Вы пошли в магазин вместе с мамой и начали выбирать. С мамой ходить за покупками совершенно не интересное занятие, она никогда не даст вам выбрать самостоятельно и обязательно купит одежду на свой вкус.'

						act 'Выбрать одежду':
							cls
							gs'stat'
							:markbuyclomother

							numrand = RAND(1,130)
							if newclo[numrand] = 0:
								newclo[numrand] = 1
								newcloH[numrand] = 50
								newcloB[numrand] = bedra

								'<center><img src="images/ode/newclo/<<numrand>>.jpg"></center>'
							else
								jump'markbuyclomother'
							end

							'Мама купила вам одежду.'

							act 'Уйти':gt $loc, $metka
						end

						if newclo[131] = 0:
							act 'Выбрать школьную форму':
								cls
								gs'stat'
								newclo[131] = 1

								'Мама купила вам школьную форму.'

								act 'Уйти':gt $loc, $metka
							end
						end
					end

					exit
				else
					'Мама покачала головой "Дочура, у нас бюджет не резиновый, в этом месяце мы уже покупали тебе одежду. Теперь жди следующего месяца."'
				end
			else
				'Мама покачала головой "Нет денег."'
			end
		else
			'Мама покачала головой "Ты уже взрослая, должна зарабатывать сама."'
		end

		act 'Отойти':gt $loc, $metka
	end
end

if $loc = 'kuhrPar':
	act 'Предложить помочь':
		cls
		minut += 60
		mother += RAND(1,5)
		manna -= 10
		TotalMomPom += 1
		MomPom += 1
		gs'stat'

		'Вы предложили помочь матери по хозяйству.'

		if MomPom = 1:
			'Мама попросила вас помыть посуду. Вы в течении часа мыли посуду на кухне.'
		elseif MomPom = 2:
			'Мама попросила вас почистить картошку. Вы в течении часа чистили картошку на кухне.'
		elseif MomPom = 3:
			'Мама попросила вас помыть пол. Вы в течении часа мыли пол в квартире.'
		elseif MomPom = 4:
			'Мама попросила вас постирать белье. Вы в течении часа стирали белье в ванной.'
		elseif MomPom = 5:
			'Мама попросила вас погладить белье. Вы в течении часа гладили белье в зале.'
		elseif MomPom = 6:
			sdacharand = RAND(10,50)
			money += sdacharand
			gs'stat'

			'Мама попросила вас сбегать в магазин за продуктами. Вы в течении часа ходили за продуктами, вам досталась сдача с покупок <<sdacharand>> рублей.'
		elseif MomPom = 7:
			'Мама попросила вас сбегать в аптеку за лекарствами. Там работает мамина сестра Людмила и она даст лекарства бесплатно, мама потом сама сочтется с тетей Людой. Мама написала вам список и вы пошли в аптеку, в аптеке как всегда сидела за прилавком тетя Люда. "Привет Светулечка. Как жизнь? Как настроение?" Вы поприветствовали тетю и дали ей бумажку в которой мать написала лекарства. Тетя Люда быстро собрала необходимое и дала вам. Вы вернулись в квартиру и отдали маме лекарства.'
		elseif MomPom = 8:
			MomPom = 1
		end

		act 'Отойти':gt $loc, $metka
	end
end

if $loc = 'gkafe':
	'Мама увидела вас и нахмурила брови "Чего пришла? Я сколько раз говорила, не ходи ко мне на работу. Нечего тут молодой девчонке делать!"'
end

if SchoolAtestat = 0:
	if GspravkaT = 0 and GspravkaTimes >= 3 and hour >= 6 and hour <= 21:
		cla
		mother -= 1
		'Мать нахмурилась "Сколько можно тянуть со справкой? Придется тебя самой к гинекологу вести!" Мать взяла вас за руку и повела в поликлинику, к гинекологу.'

		act 'Идти к гинекологу за справкой':
			cla
			minut = minut + 15

			'Вы легли на гинекологическое кресло и раздвинули ноги. Гинеколог стала рассматривать вашу вагину.'

			if vagina > 0:
				Gspravka = 7
				GspravkaT = 2

				'Гинеколог написала в справке, что вы не девственница.'
			elseif vagina = 0:
				Gspravka = 7
				GspravkaT = 1

				'Гинеколог написала в справке, что вы девственница.'
			end

			act 'Выйти':gt $curloc
		end

		exit
	elseif GspravkaT = 0 and GspravkaTimes < 3:
		GspravkaTimes += 1

		'"Тебе нужно сходить в поликлинику. К гинекологу, за справкой для школы."'
	elseif GspravkaT = 2 and motherKnowSpravka = 0:
		cla
		if motherKnowWhore = 0:
			mother = 0
			motherKnowSpravka = 1
			!if motherQW = 0:motherQW = 1

			if momslut < 2:
				'Мать схватила вас за ухо "Ах ты блядища! Мы с отцом надрываемся, что бы из вас путных людей сделать, найти вам достойных мужей, а ты шлюха уже успела манду кому то подвернуть! Убирайся с глаз моих!"'
			else
				'Мать грустно покачала головой "Ну вот ты и стала взрослой. Смотри не залети."'
			end
		elseif motherKnowWhore > 0 and motherQW < 2:
			mother -= 10
			motherKnowSpravka = 1
			!if motherQW = 0:motherQW = 1

			'Мать посмотрела в справку "Даже и не удивительно. Трахаешься с кем-то в подворотне, да еще и домой во всех хахальских "подарках" приходишь. Глаза б мои тебя не видели."'
		elseif motherQW >= 2:
			motherKnowSpravka = 2

			'"И чего ты мне ее принесла? Можешь хоть ксерокопии сделать и носить их в школу. Сомневаюсь, что у тебя там что-то изменится" - с ехидством заметила ваша мать.'
		end

		act 'Отойти':gt $loc, $metka
		exit
	end
end

if motherQW = 1 and mother >= 20 and $loc = 'kuhrPar':
	act 'Попробовать помириться':
		cla
		cls
		'<center><b><font color = maroon>Мама</font></b></center>'
		'<center><img src="images/qwest/alter/mother.jpg"></center>'

		mqwtRand = RAND(1,10)
		if mqwtRand <= 2:
			mother -= RAND(1,5)
			minut += 30

			'Вы попытались поговорить со своей матерью и помириться. То ли вы слишком агрессивны, то ли у нее плохое настроение, но итогом "примирения" становится очередной скандал.'

			act 'Отойти':gt $loc, $metka
		elseif mqwtRand > 2 and mqwtRand <= 8:
			mother += RAND(0,1)
			minut += 30

			'Вы попытались поговорить со своей матерью и помириться. Несмотря на то, что весь получасовой разговор в основном представлял из себя довольно агрессивный монолог вашей матери о морали, болезнях и о том, что вас ждет в будущем, если вы не возьметесь за ум, определенные подвижки в отношениях все же есть.'

			act 'Отойти':gt $loc, $metka
		elseif mqwtRand > 8:
			gt'motherQW','motherQW_2'
		end
	end
end

if alko > 0 and alkomday ! day:
	alkomday = day
	mother -= 1

	'Мама принюхалась "Света, от тебя спиртным пахнет! что за безобразие? Ты еще слишком молода, что бы пить!"'
end

if (cumlip > 1 or cumface > 0 or cumfrot > 0) and whoremday ! day:
	cla
	whoremday = day

	if motherKnowWhore = 0 and motherKnowSpravka = 0 and motherQW = 0:
		mother = 0
		if motherKnowWhore = 0:motherKnowWhore = 1

		if momslut < 2:
			'Мать посмотрела на вас, выпучила глаза и покраснела. На вас была заметна сперма.'
			'-Ах ты шлюха малолетняя, это что такое на тебе? Всем говорю что дочь приличная, а она в ебется где то. Блядина! Пошла отсюда, не попадайся на мои глаза!'
		else
			'Мать грустно покачала головой "Ты бы сперму то вытерла, а то весь город будет знать, что ты шлюха."'
		end

		act 'Отойти':gt $loc, $metka
	elseif (motherKnowWhore > 0 or motherKnowSpravka > 0) and motherQW = 1:
		monther -= 20
		if motherKnowWhore = 0:motherKnowWhore = 1

		if momslut < 2:
			'Мать посмотрела на вас гневным взглядом. На вас была заметна сперма.'
			'- Опять где-то трахалась шлюха малолетняя? Мне уже перед знакомыми стыдно за тебя! Пошла отсюда, не попадайся мне на глаза!'
		else
			'Мать грустно покачала головой "Ты бы сперму то вытерла, а то весь город будет знать, что ты шлюха."'
		end

		act 'Отойти':gt $loc, $metka
	elseif motherQW >= 2:
		monther -= 10
		if motherKnowWhore = 0:motherKnowWhore = 1

		'Мать строго посмотрела на вас. На вас была заметна сперма.'
		'- Света, я конечно все понимаю, но не могла бы ты убирать художества своих хахалей? Быстро в ванную, пока еще кто-нибудь не увидел!'

		act 'Отойти':gt'vanrPar'
	end
end

if glamur > 0 and hour > 9:
	'Мама посмотрела на вас "Ты куда это так нарядилась?"'
end

if week = 5 and dostupindorf = 1:
	if hour > 9:
		'Мама продолжая заниматься своими делами говорит вам "Света, мы завтра поедем в деревню, в 12 часов. Если хочешь с нами то подойди ко мне до 12ти."'
	end
elseif week = 6 and dostupindorf = 1:
	if hour > 9 and hour < 12:
		'Мама спрашивает у вас "Света, ну что? Поедешь с нами в деревню?"'

		act 'Ехать в деревню':hour = 12 & minut = 0 & indorf = 1 & gt'famdorfride'
	end
end
--- mother ---------------------------------

