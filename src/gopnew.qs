# gopnew
$gopsexboy1 = {
	cla

	if VasanTut = 3:
		$guygop = 'Васян'
		if vasansex = 0:vasansex = 1 & guy += 1
	end
	if BerezaTut = 3:
		if berezasex = 0:berezasex = 1 & guy += 1
		$guygop = 'Береза'
	end
	if VitekTut = 3:
		if viteksex = 0:viteksex = 1 & guy += 1
		$guygop = 'Витек'
	end
	if KostilTut = 3:
		if kostilsex = 0:kostilsex = 1 & guy += 1
		$guygop = 'Костыль'
	end
	if UdmurtTut = 3:
		if udmurtsex = 0:udmurtsex = 1 & guy += 1
		$guygop = 'Удмурт'
	end
	if SeriTut = 3:
		if serisex = 0:serisex = 1 & guy += 1
		$guygop = 'Серый'
	end

	act 'Дать':gt'gopnew','1'
	act 'Сосать':gt'gopnew','11'
	act 'Дать в попу':gt'gopnew','12'
}

if $ARGS[0] = 'start':
	'<center><b>ДВОР У ДОМА</b></center>'
	'<center><img src="images/pic/dvor.jpg"></center>'
	'Вы идете не спеша по двору, на встречу вам выходят несколько парней гопнического вида, с пивасом, семками и в кепках.'

	gtalkrand = RAND(0,10)
	if gtalkrand = 0:$goptalk = 'вафлерша'
	if gtalkrand = 1:$goptalk = 'вафельница'
	if gtalkrand = 2:$goptalk = 'шкварная'
	if gtalkrand = 3:$goptalk = 'шлюха'
	if gtalkrand = 4:$goptalk = 'тварина'
	if gtalkrand = 5:$goptalk = 'соска'
	if gtalkrand = 6:$goptalk = 'овца'
	if gtalkrand = 7:$goptalk = 'шмара'
	if gtalkrand = 8:$goptalk = 'шалава'
	if gtalkrand = 9:$goptalk = 'хуесоска'
	if gtalkrand = 10:$goptalk = 'блядушка'

	gtalkrand = RAND(0,10)
	if gtalkrand = 0:$goptalk2 = 'сколько сегодня хуев отсосала?'
	if gtalkrand = 1:$goptalk2 = 'хочешь на клыка взять?'
	if gtalkrand = 2:$goptalk2 = 'у тебя струхня на ебале.'
	if gtalkrand = 3:$goptalk2 = 'че молчишь? Полный рот кончи набрала?'
	if gtalkrand = 4:$goptalk2 = 'а тебе в рот уже ссали? Или нет?'
	if gtalkrand = 5:$goptalk2 = 'какое дупло у тебя больше? Задница или пизда?'
	if gtalkrand = 6:$goptalk2 = 'я из толчка вышел, а задницу вытереть забыл, подлижешь язычком?'
	if gtalkrand = 7:$goptalk2 = 'иди ко мне, прокачу на волосатом мотороллере.'
	if gtalkrand = 8:$goptalk2 = 'ты в рот берушка? Или в жопу попрошайка?'
	if gtalkrand = 9:$goptalk2 = 'хочешь в рот нассу, чтоб морем пахло?'
	if gtalkrand = 10:$goptalk2 = 'тебе нравится струхню слизывать?'

	gs'gopwho'
	gs'goplust'

	if opusk > 0:
		'Эй <<$goptalk>>, <<$goptalk2>> <<$gopnik>>'

		act 'Ждать пока подойдут гопники':
			cla
			'К вам подошли гопники'

			if gopopusday ! day:
				'Ты бабосы нам принесла?.'

				if money >= 2000:
					act 'Отдать деньги':
						cla
						money -= 2000
						gopopusday = day

						'Вы отдали деньги гопарям.'
						act 'Уйти':gt'street'

						if GLust > 0:
							cla
							'<<$gopnik>>'
							'Пойдем с нами, на палку чая.'

							act 'Идти с гопниками':gt'gopnew','sexstart'
						end
					end
				else
					act 'Ребята, пожалуйста, у меня нет денег':
						cla
						'Вы взмолились "Ребята, пожалуйста, у меня нет денег", вам тут же врезали под дых, ебало завали падла. Я вижу ты не вкуриваешь всей серьезности твоего положения. Сажай эту мразь в машину, поедем накажем ее.'

						act 'В машину':gt'gopnew','degrading'
					end
				end
			elseif gopopusday = day:
				if GLust > 0:
					cla
					'<<$gopnik>>'
					'Пойдем с нами, на палку чая.'

					act 'Идти с гопниками':gt'gopnew','sexstart'
				else
					'Ладно, топай отсюда, пока мы добрые.'

					act 'Уйти':gt'street'
				end
			end
		end
		act 'Сделать вид, что вы их не заметили':
			cla
			'Вы постарались сделать вид, что не видите гопников и пошли к своему дому.'

			if gopopusday = day:
				'Гопники заржали "гляди как понеслась. Наверное у нее там свежий хуй киснет, а мы ее отвлекаем."'

				act 'Забежать в квартиру':gt'street'
			elseif gopopusday ! day:
				'Гопники тут же вас догнали и окружили. "Тебе шалава струхня в уши что ли попала? Не слышиш что к тебе обращаются."'
				'Ты бабосы нам принесла?.'

				if money >= 2000:
					act 'Отдать деньги':
						cla
						money -= 2000
						gopopusday = day

						'Вы отдали деньги гопарям.'

						act 'Уйти':gt'street'

						if GLust > 0:
							cla
							'<<$gopnik>>'
							'Пойдем с нами, на палку чая.'

							act 'Идти с гопниками':gt'gopnew','sexstart'
						end
					end
				else
					act 'Ребята, пожалуйста, у меня нет денег':
						cla
						'Вы взмолились "Ребята, пожалуйста, у меня нет денег", вам тут же врезали под дых, ебало завали падла. Я вижу ты не вкуриваешь всей серьезности твоего положения. Сажай эту мразь в машину, поедем накажем ее.'

						act 'В машину':gt'gopnew','degrading'
					end
				end
			end
		end

		exit
	end

	if sipovka > 0:
		'Эй сиповка кричат вам гопники. <<$gopnik>>'

		if GLust > 0:
			cla
			'Пойдем с нами, на палку чая.'

			act 'Идти с гопниками':gt'gopnew','sexstart'
			act 'Уйти':gt'street'
		else
			'Ладно, топай отсюда, пока мы добрые.'

			act 'Уйти':gt'street'
		end

		exit
	end

	if rosetka > 0:
		'Эй розетка кричат вам гопники. <<$gopnik>>'

		if GLust > 0:
			cla
			'Пойдем с нами, на палку чая.'

			act 'Идти с гопниками':gt'gopnew','sexstart'
			act 'Уйти':gt'street'
		else
			'Ладно, топай отсюда, пока мы добрые.'

			act 'Уйти':gt'street'
		end

		exit
	end

	if loh > 0:
		'Эй лохушка кричат вам гопники. <<$gopnik>>'

		if gopdolg > 0 and gopdaydolg > daystart:
			'Не забывай, о долге.'
		elseif gopdolg > 0 and gopdaydolg <= daystart:
			'Ну что, шлюха, принесла деньги?'

			if money >= gopdolg:
				act 'Оплатить':
					cla
					money -= gopdolg
					gopdolg = 0

					'Вы отдали <<gopdolg>> рублей гопникам.'

					act 'Уйти':gt'street'
				end
			else
				'Вы признались что у вас нет денег, что бы заплатить гопникам. Они хмыкнули, тогда вставай на колени, шлюха.'

				act 'Встать на колени перед гопником':gt'gopnew','rapebj'
			end

			exit
		end

		act 'Уйти':gt'street'

		exit
	end

	if gnewQW = 4:
		'!Эй, Светка конфетка, пойдешь пивас пить? <<$gopnik>>'

		act 'Хотелось бы, но я спешу':
			cla
			'(Вы) - Извините, но я спешу'
			'(Васян) - Да, ладно, посидим пол часика, поболтаем, успеешь.'

			act 'Попить пивасика':gt'gopnew','pivas'
			act 'Идти':gt'street'
		end
		act 'Попить пивасика':gt'gopnew','pivas'
	elseif gnewQW = 3:
		gopota += 5
		gnewQW = 4

		'Здорово, Света тебя говорят менты замели, но ты молодец никого не сдала, присаживайся расскажешь как прошло. <<$gopnik>>'
		'Вы сели с гопниками и начали рассказывать, умолчав о некоторых деталях. Когда вы закончили, один из гопников сказал "Мы эту ментовскую сучку найдем и тебе на поводке притащим, будет у тебя классная собачонка" они начали ржать, и вы тоже рассмеялись вместе с ними.'

		act 'Уйти':gt'street'
	elseif gnewQW = 2:
		'Эй, Светка конфетка, пойдешь пивас пить, или можно пройтись по парку у лохов добро поотжимать? <<$gopnik>>'

		act 'Хотелось бы пивка, но я спешу':
			cla
			'(Вы) - Извините, но я спешу'
			'(Васян) - Да, ладно, посидим пол часика, поболтаем, успеешь.'

			act 'Попить пивасика':gt'gopnew','pivas'
			act 'Уйти':gt'street'
		end
		act 'Попить пивасика':gt'gopnew','pivas'
		act 'Идти на делюгу':
			*clr
			cla
			'<center><img src="images/pic/park.jpg"></center>'

			goprandwork = RAND(1,100)
			if goprandwork < 75:
				cla
				minut += 60
				gopota += 1

				'Вы пошлялись вместе с компашкой, но лохов не видать.'

				act 'Идти домой':gt'street'
			elseif goprandwork >= 75 and goprandwork < 95:
				cla
				gopstop += 1
				gopota += 1
				minut += 60

				'Вы с пацанами отжали мобилку, но сдав мобилу в ломбард вы получили денег только на пивас.'

				act 'Идти домой':gt'street'
			elseif goprandwork >= 95:
				cla
				gopstop += 1
				gopota += 1
				minut += 60
				randmon = RAND(50,500)
				money = money + randmon

				'Вы с пацанами отжали у лохов деньги и мобилки, сдав в ломбард вы поделили деньги, вам досталось <<randmon>> рублей.'

				act 'Идти домой':gt'street'
			end
		end
	elseif gnewQW = 1:
		'Эй, Светка конфетка, пойдешь пивас пить? <<$gopnik>>'

		act 'Хотелось бы, но я спешу':
			cla
			'(Вы) - Извините, но я спешу'
			'(Васян) - Да, ладно, посидим пол часика, поболтаем, успеешь.'

			act 'Попить пивасика':gt'gopnew','pivas'
			act 'Идти':gt'street'
		end
		act 'Попить пивасика':gt'gopnew','pivas'
	elseif gnewQW = 0:
		'Один из них поправляя кепку, блатным шагом направляется к вам. "Привет! А ты клевая чикса, будешь пивас за знакомство?"'

		act 'Попить пивасика':gt'gopnew','pivas'
		act 'Нет':
			cla
			'Вы отрицательно покачали головой и собрались идти дальше, но гопник не собирался сдаваться так просто.'
			'(Гопник) - Да, расслабся ты, никто тебе ничего плохого не сделает, мы пацаны порядочные, а не какие то отморозки.'

			act 'Ладно, пойдем попьем пиво':gt'gopnew','pivas'
			act 'Я же сказала, нет':
				cla
				*clr
				'Вы отказали гопнику уже резче, давая понять, что не намерены распивать с ними пиво. Гопарь злобно прищурился, "Брезгуешь нашим обществом?"'

				act 'Ладно, пойдем попьем пиво':gt'gopnew','pivas'
				act 'Отвали от меня':
					cla
					'Вы грубо сказали гопнику отвалить, но он схватил вас за руку и злобно зашипел. "Ты не права сучка, к тебе подошли с добрыми намерениями, а ты грубишь. Я спрошу с тебя за это."'
					'Гопарь взял вас за руку и потащил в подворотню.'

					act 'Сопротивляться':
						cla
						'Вы попытались вырвать свою руку из его хватки и тут же получили звонкую пощечину, которая чуть не опрокинула вас на землю.'
						'Он грубо затащил вас в подворотню и прижал к стене.'

						act 'Чего тебе от меня надо?':gt'gopnew','bazar'
					end
					act 'Подчиниться':
						cla
						'Вы покорно поплелись за гопником. Он грубо затащил вас в подворотню и прижал к стене.'

						act 'Чего тебе от меня надо?':gt'gopnew','bazar'
					end
				end
			end
		end
	end
end

if $ARGS[0] = 'pivas':
	minut += 30
	gs'stat'

	'<center><b>ДВОР У ДОМА</b></center>'
	'<center><img src="images/pic/dvor.jpg"></center>'
	'Вы вместе с пацанами пошли на детскую площадку, где сели на лавку.'

	if cumface > 0 or cumlip > 0 or cumfrot > 0:
		'Васян присмотрелся к вам, "бля, да ты же в струхне, охуеть и уселась зафоршмаченная с нами пивас пить, пойдем сука, потолковать надо"'

		act 'Идти в подворотню с пацанами':gt'gopnew','bazar'

		exit
	end

	if gnewQW > 0:
		'Вы сели с пацанами на лавку и стали пить пиво.'
		'К детской площадке подошел крепыш Удмурт и бритый на лысо Серый.'

		if film > 0:
			pfknowrand = RAND(0,100)
			if film >= pfknowrand:filmknow = 1
		end

		if filmknow = 1:
			'Удмурт сел на лавку и не спускает с вас глаз. Внезапно он обратился к вам грубым сипящим голосом "Слыш, где я тебя раньше мог видеть?"'
			'Вы пожали плечами, да мало ли где, я же тут живу. Удмурт почесал голову. "Епта, точняк, глядите пацаны." Удмурт достал мобилу и стал показывать что то пацанам.'
			'Вы слышите как из динамиков телефона раздаются женские стоны и чавкающие звуки. Пацаны в один голос выдавили из себя "Охуеть, ты шлюха."'
			'Удмурт молча повернул экран телефона к вам и вы увидели, что по нему идет видео где вы сосете член.'
			'Васян гневно отшвырнул бутылку пива в сторону. "Ты падла общаковое пиво своими блядскими губами зафаршмачила. Пойдем, базар к тебе есть."'

			act 'Идти в подворотню с пацанами':gt'gopnew','bazar'

			exit
		end

		if kavslut >= 3:
			kavknowrand = RAND(0,100)
			if kavknowrand >= 95:kavslutknow = 1
		end

		if kavslutknow = 1:
			'Серый глянул на вас и зло ухмыльнулся. "Постойте пацаны, я вам одну приколюху сейчас расскажу. Короче, мне повар Ашот, ну из местной рыгаловки, рассказывал как они с Гиви, официантку во все дыры жучат после работы. Он мне показывал ту шмару. Короче, вы сейчас с ней пивас бухаете, га га, прикиньте, она вам ща струхню Ашота в бутылку с пивасом пустила, а?"'
			'Васян гневно отшвырнул бутылку пива в сторону. "Ты падла общаковое пиво своими блядскими губами зафаршмачила. Пойдем, базар к тебе есть."'

			act 'Идти в подворотню с пацанами':gt'gopnew','bazar'

			exit
		end

		if frot >= 3:
			frotknowrand = RAND(0,100)
			if frot >= frotknowrand:frotknow = 1
		end

		if frotknow = 1:
			'Серый глянул на вас и зло ухмыльнулся. "Постойте пацаны, я вам одну приколюху сейчас расскажу. Короче, мне одно хуйло по погонялу Терка, такую приколюху рассказал, он катается по метро и к бабским жопцам липнет, что бы потереться об них. Так вот, говорит завелась в метро безотказная шалава готовая страждущему всегда жопу подставить по дружбе. Он ее на мобилу сфоткал. Так вот эта ваша Света и есть та самая шалава подземная, во прикол да?'
			'Васян гневно отшвырнул бутылку пива в сторону. "Ты падла общаковое пиво своими блядскими губами зафаршмачила. Пойдем, базар к тебе есть."'

			act 'Идти в подворотню с пацанами':gt'gopnew','bazar'

			exit
		end
	elseif gnewQW = 0:
		gnewQW = 1

		'Пацаны представились, того кто вас пригласил зовут Васян Гвоздь, длинного блондина Береза, мелкого, чернявого и похожего на обезьяну Витек, и тощего парня зовут Костыль.'
		'Васян распечатал баклашку с пивасом и отпил из нее, после чего передал баклашку по кругу.'
		'К детской площадке подошел не высокий крепыш и бритый на лысо парень с золотыми зубами.'
		'Крепыш представился Удмуртом, а золотозубый оказался Серым.'

		if film > 0:
			pfknowrand = RAND(0,100)
			if film >= pfknowrand:filmknow = 1
		end

		if filmknow = 1:
			'Удмурт сел на лавку и не спускает с вас глаз. Внезапно он обратился к вам грубым сипящим голосом "Слыш, где я тебя раньше мог видеть?"'
			'Вы пожали плечами, да мало ли где, я же тут живу. Удмурт почесал голову. "Епта, точняк, глядите пацаны." Удмурт достал мобилу и стал показывать что то пацанам.'
			'Вы слышите как из динамиков телефона раздаются женские стоны и чавкающие звуки. Пацаны в один голос выдавили из себя "Охуеть, ты шлюха."'
			'Удмурт молча повернул экран телефона к вам и вы увидели, что по нему идет видео где вы сосете член.'
			'Васян гневно отшвырнул бутылку пива в сторону. "Ты падла общаковое пиво своими блядскими губами зафаршмачила. Пойдем, базар к тебе есть."'

			act 'Идти в подворотню с пацанами':gt'gopnew','bazar'

			exit
		end

		if kavslut >= 3:
			kavknowrand = RAND(0,100)
			if kavknowrand >= 95:kavslutknow = 1
		end

		if kavslutknow = 1:
			'Серый глянул на вас и зло ухмыльнулся. "Постойте пацаны, я вам одну приколюху сейчас расскажу. Короче, мне повар Ашот, ну из местной рыгаловки, рассказывал как они с Гиви, официантку во все дыры жучат после работы. Он мне показывал ту шмару. Короче, вы сейчас с ней пивас бухаете, га га, прикиньте, она вам ща струхню Ашота в бутылку с пивасом пустила, а?"'
			'Васян гневно отшвырнул бутылку пива в сторону. "Ты падла общаковое пиво своими блядскими губами зафаршмачила. Пойдем, базар к тебе есть."'

			act 'Идти в подворотню с пацанами':gt'gopnew','bazar'

			exit
		end

		if frot >= 3:
			frotknowrand = RAND(0,100)
			if frot >= frotknowrand:frotknow = 1
		end

		if frotknow = 1:
			'Серый глянул на вас и зло ухмыльнулся. "Постойте пацаны, я вам одну приколюху сейчас расскажу. Короче, мне одно хуйло по погонялу Терка, такую приколюху рассказал, он катается по метро и к бабским жопцам липнет, что бы потереться об них. Так вот, говорит завелась в метро безотказная шалава готовая страждущему всегда жопу подставить по дружбе. Он ее на мобилу сфоткал. Так вот эта ваша Света и есть та самая шалава подземная, во прикол да?'
			'Васян гневно отшвырнул бутылку пива в сторону. "Ты падла общаковое пиво своими блядскими губами зафаршмачила. Пойдем, базар к тебе есть."'

			act 'Идти в подворотню с пацанами':gt'gopnew','bazar'

			exit
		end

		if bomjshet >= 3:
			bomjknowrand = RAND(0,100)
			if bomjknowrand >= 95:bomjknow = 1
		end

		if bomjknow = 1:
			'Серый в течении нескольких минут смотрел то на вас, то на телефон, щурился, будто что-то разглядывал. После он дал мобильник пацанам и сказал "Слушайте, позырьте, я тут мусор выбрасывал, а там баба какая-то сиськи бомжу показывала, она, не?". Телефон пошёл по рукам, смотрели то на него, то на вас. Вы сильно покраснели, после чего Васян сказал "Бля, да точно она!"'
			'Васян гневно отшвырнул бутылку пива в сторону. "Ты вообще бомжиха охуела с нами яшкатся? Пойдем, базар к тебе есть."'

			act 'Идти в подворотню с пацанами':gt'gopnew','bazar'

			exit
		end
	end

	gopota += 1

	'Вы посидели на лавочке и попили пивка с гопниками.'
	'<<$gopnik>>'

	if gnewQW > 1:
		if VasanTut = 2 or BerezaTut = 2 or VitekTut = 2 or KostilTut = 2 or UdmurtTut = 2 or SeriTut = 2:gt'gopnew','sexstart'
	end

	act 'Идти':gt'street'
end

if $ARGS[0] = 'bazar':
	'Вы испуганно промямлили "Чего тебе от меня надо?". И в этот момент он ударил вам под дых. "Заткнись сука."'
	'К первому гопарю присоединились и его трое дружков и окружили вас.'
	'(Гопарь) - Ты сука конкретно не права. Я Васян Гвоздь. Меня все на районе знают, а ты дерзкая шалава конкретно нагрубила. Ты мне должна!'
	'Васян грубо вас тряхнул за плечи "Ты согласна сука?"'
	if magic > 0:'В этот момент вы ощутили чью-то злую и могучую магическую силу, которая подавляет вашу и не дает использовать против гопников.'

	act 'Согласна':
		cla
		*clr
		'Васян обернулся к дружкам. "Все слышали? Она согласна, что она мне должна и что она сука."'

		act 'Я не сука!':
			cla
			*clr
			'Кто пиздит, того в рот ебут?'

			act 'Да':
				cla
				*clr
				'Тогда хуйли ты медлишь? Бери на клыка, ведь ты пиздоболка. Очевидцы подтвердят. Ты сама согласилась что ты сука и напиздела нам, что ты не сука. К тому же согласилась что пиздоболов в рот ебут.'

				act 'Встать на колени перед гопником':gt'gopnew','rapebj'
				act 'Отказаться':
					cla
					*clr
					'Вы сказали твердо, нет. И тут же в голове как будто разорвался снаряд. Васян ударил вас кулаком по лицу. Вы отлетели от его удара и крепко приложились затылком об стену. Ноги стали как будто ватными и сил стоять не осталось.'

					act 'Встать на колени перед гопником':gt'gopnew','rapebj'
				end
			end
			act 'Нет':
				cla
				*clr
				'Ты охуела? Пиздаболка! Тут же вам сильно врезали под дых и сил удержаться на ногах не осталось.'

				act 'Встать на колени перед гопником':gt'gopnew','rapebj'
			end
			act 'Я не пизжу!':
				cla
				*clr
				'Ты сука уже дважды напиздела! Пацаны, вы слышали? Пацаны с готовностью подтвердили. Васян повернулся к вам. "Я тебе падла сейчас зубы выбью, если еще пиздеть будешь."'
				'Ты согласна с тем, что ты пиздоболка?'

				act 'Согласна':
					cla
					*clr
					'Вы согласились не видя другого выхода. Васян кивнул и сказал "Ну раз согласна, тогда на колени, я в твой блядский рот свой хуй затолкаю, чтобы пиздеть больше не могла."'

					act 'Встать на колени перед гопником':gt'gopnew','rapebj'
				end
				act 'Нет':
					cla
					*clr
					'Ты охуела? Пиздаболка! Тут же вам сильно врезали под дых и сил удержаться на ногах не осталось.'

					act 'Встать на колени перед гопником':gt'gopnew','rapebj'
				end
			end
		end
		act 'Промолчать':
			cla
			*clr
			'Значит разобрались. Ты сука и конкретно накосячила. Теперь ты мне должна.'

			act 'Сколько?':gt'gopnew','dolg'
		end
	end
	act 'Нет!':
		cla
		*clr
		'Поясни почему ты не согласна. Ты что? Считаешь меня пиздоболом?'

		act 'Да, ты пиздобол':
			cla
			*clr
			'Ты охуела? Пиздаболка! Тут же вам сильно врезали под дых и сил удержаться на ногах не осталось.'

			act 'Встать на колени перед гопником':gt'gopnew','rapebj'
		end
		act 'Нет, ты не пиздобол':
			cla
			*clr
			'Ну тогда получается, что ты сука и пиздоболка.'

			act 'Согласиться':
				cla
				'Значит разобрались. Ты сука, писдоболка и конкретно накосячила. Теперь ты мне должна.'

				act 'Сколько?':gt'gopnew','dolg'
			end
			act 'Не соглашаться':
				cla
				'Ты че сука, твердолобая. После это рыка Васян врезал вам кулаком по лицу.'

				act 'Упасть на колени перед гопником':gt'gopnew','rapebj'
			end
		end
	end
end

if $ARGS[0] = 'rapebj':
	minut += 3
	rape += 1

	'<center><img src="images/pictures/rapebj.jpg"></center>'
	'Васян достал свой не мытый член и выставил его в нескольких сантиметрах перед вашем лицом. Он зарычал "Хуле ты тупишь сука? Разевай ебало."'

	act 'Обхватить член губами':
		cla
		*clr
		if vasansex = 0:vasansex = 1 & guy += 1
		bj += 1

		'<center><img src="images/pictures/rapebj1.jpg"></center>'
		'Вы обхватили губками багровый член васяна который находясь перед вашим лицом казался просто огромным и начали медленно сосать.'
		'Васян зарычал на вас "Это что за хуйня? Соси по нормальному, вафлерша."'

		act 'Стараться':gt'gopnew','tf'
		act 'Сосать как сосали':gt'gopnew','tf'
	end
	act 'Облизать член языком':
		cla
		*clr
		if vasansex = 0:vasansex = 1 & guy += 1
		bj += 1

		'<center><img src="images/pictures/rapebj2.jpg"></center>'
		'Вы открыли ротик и осторожно коснулись до горячего члена язычком.'
		'Васян зарычал на вас "Это что за хуйня? Соси по нормальному, вафлерша."'

		act 'Сосать':gt'gopnew','tf'
		act 'Облизывать дальше':gt'gopnew','tf'
	end
	act 'Нет!':
		cla
		*clr
		if vasansex = 0:vasansex = 1 & guy += 1
		bj += 1

		'<center><img src="images/pictures/rapebj3.jpg"></center>'
		'Васян схватил вас одной рукой за волосы, а другой сильно сдавил горло и насадил ваш рот на свою шляпу.'

		act 'Давиться':gt'gopnew','tf'
	end
end

if $ARGS[0] = 'tf':
	minut += 3
	throat += 1

	'<center><img src="images/pictures/rapebjt2.jpg"></center>'
	'Васян удерживая вас за волосы начал трахать вас в рот. Его член ударял вас в горло вызывая рвотные реакции и заставляя слезы течь из глаз.'
	'Вы задыхаетесь от этих ударов в горло.'

	act '...':
		cla
		*clr
		minut += 3

		'<center><img src="images/pictures/rapebjt.jpg"></center>'
		'Внезапно Васян сильным ударом члена вогнал его вам в горло до основания и стал удерживать вас за голову. Вы почувствовали, что вас сейчас вырвет.'

		act '...':
			cla
			*clr
			minut += 3
			facial += 1
			cumface += 1
			if mop ! 1:mop = 0
			gs'stat'

			'<center><img src="images/pictures/rapebjcum.jpg"></center>'
			'Васян резко вытащил у вас из горла член и начал кончать вам на лицо покрывая его спермой. Он рыкнул на вас "Чего ждешь, шлюха опущенная? Чисти языком."'

			act 'Чистить языком':
				cla
				*clr
				minut += 3
				swallow += 1
				cumlip += 1
				gs'stat'

				'<center><img src="images/pictures/rapebjcum2.jpg"></center>'
				'Вы обхватили губами его перемазанную теплой спермой головку и начали обсасывать сперму сглатывая ее.'
				'Вскоре Васяну это надоело и он оторвал ваш рот от очистки его члена "А теперь слушай сюда шмара. Ты опущенная вафлерша, блять, потаскуха и прошмандовка, теперь в качестве извинений будешь каждый день приходить и платить мне два косаря, и мне похуй как ты их заработаешь, понятно? Если не принесешь, я тебе бутылку в пизду засуну и пендаля в пузо дам, что бы она лопнула разорвав твою пиздень в клочья. И не пытайся спрятаться от меня, я тебя из под земли достану, а в ментовку заявишь, мои кореша тебя в лес вывезут, вобьют в жопу черенок от лопаты, а потом закопают с этой лопатой в заднице. Тебе все ясно?"'
				'И не забывай падла, ты моя собственность и не имеешь права голоса. Мои кореша могут развлекаться с тобой когда захотят, ясно? Шлюха.'

				act 'Да':
					cla
					*clr
					minut += 3
					opusk = 1

					'<center><img src="images/pictures/spit.jpg"></center>'
					'Васян схватил вас руками и плюнул вам в лицо, после чего ударил вас в живот и вы упали.'
					'Ктото из парней сказал "Васян, да ладно, хватит с этой шлюхи уже." Васян рыкнул "Пользуйтесь пацаны, шалавой."'
					'В подворотню вбежал какой то парень и прошипел "Атас пацаны, мусора" Молниеносно гопники рассосались из подворотни оставив вас лежать на асфальте в конче, слюнях, соплях и слезах.'

					act 'Уйти':gt'street'
				end
			end
		end
	end
end

if $ARGS[0] = 'dolg':
	minut += 3
	loh += 1
	gopdolg = money+stolmoney+karta+10000
	gopdaydolg = daystart+10

	'Через 10 дней отдашь <<gopdolg>> рублей. И меня не ебет где ты их брать будешь, хоть пиздой торгуй, мне пох, чтоб деньги были. Где нас найти ты знаешь, если сама не придешь, тогда мы к тебе придем и разберемся с тобой жестко. Усекла? Теперь вали отсюда шлюха.'

	act 'Уйти':gt'street'
	act 'Ребят, это слишком много, у меня нет таких денег':
		cla
		'(Вы) - Ребят, это слишком много, у меня нет таких денег'
		'(Васян) - А кого это ебет?'

		act 'Уйти':gt'street'
		act 'Может как нибудь по другому возьмете?':
			cla
			'(Вы) - Может как нибудь по другому возьмете?'
			'(Васян) - Ну можешь натурой отработать долг.'

			act 'Уйти':gt'street'
			act 'Оплатить натурой':
				sipovka += 1
				gopdolg = 0
				VasanTut = 3
				gt'gopnew','sexstart'
			end
		end
	end
end

if $ARGS[0] = 'sexstart':
	!rosetka
	!sipovka
	minut += 3

	if opusk > 0 or sipovka > 0:
		if GLust = 1:
			if tiprand = 0:gt'gopnew','1'
			if tiprand = 1:gt'gopnew','11'
			if tiprand = 2:gt'gopnew','12'
		end
		if GLust = 2:gt'gopnew','2'
		if GLust = 3:gt'gopnew','3'
		if GLust = 4:gt'gopnew','4'
		if GLust = 5:gt'gopnew','5'
		if GLust = 6:gt'gopnew','6'
	elseif opusk = 0 and sipovka = 0:
		if GLust = 2:
			'Двое гопников предлагают вам пойти с ними в подворотню'

			act 'Согласиться трахаться с двумя':sipovka += 1 & gt'gopnew','2'
		elseif GLust = 3:
			'Трое гопников предлагают вам пойти с ними в подворотню'

			act 'Согласиться трахаться с тремя':sipovka += 1 & gt'gopnew','2'
		elseif GLust = 4:
			'Четверо гопников предлагают вам пойти с ними в подворотню'

			act 'Согласиться трахаться с четырьмя':sipovka += 1 & gt'gopnew','2'
		elseif GLust = 5:
			'Пятеро гопников предлагают вам пойти с ними в подворотню'

			act 'Согласиться трахаться с пятью':sipovka += 1 & gt'gopnew','2'
		elseif GLust = 6:
			'Шестеро гопников предлагают вам пойти с ними в подворотню'

			act 'Согласиться трахаться с шестью':sipovka += 1 & gt'gopnew','2'
		end

		if VasanTut = 2:
			'Васян предлагает вам пойти с ним в подворотню'

			act 'Пойти с Васяном':VasanTut = 3 & dynamic $gopsexboy1
		end
		if BerezaTut = 2:
			'Береза предлагает вам пойти с ним в подворотню'

			act 'Пойти с Березой':BerezaTut = 3 & dynamic $gopsexboy1
		end
		if VitekTut = 2:
			'Витек предлагает вам пойти с ним в подворотню'

			act 'Пойти с Витьком':VitekTut = 3 & dynamic $gopsexboy1
		end
		if KostilTut = 2:
			'Костыль предлагает вам пойти с ним в подворотню'

			act 'Пойти с Костылем':KostilTut = 3 & dynamic $gopsexboy1
		end
		if UdmurtTut = 2:
			'Удмурт предлагает вам пойти с ним в подворотню'

			act 'Пойти с Удмуртом':UdmurtTut = 3 & dynamic $gopsexboy1
		end
		if SeriTut = 2:
			'Серый предлагает вам пойти с ним в подворотню'

			act 'Пойти с Серым':SeriTut = 3 & dynamic $gopsexboy1
		end

		act 'Уйти':gt'street'
	end
end

if $ARGS[0] = '1':
	minut += 15
	vagina += 1
	sex += 1
	cumass = cumass + 1
	gs'stat'

	picrand = RAND(1,6)
	if picrand = 1:'<center><img src="images/pics/gopslut.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/gopslut2.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/gopslut3.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/gopslut4.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/gopslut5.jpg"></center>'
	if picrand = 6:'<center><img src="images/pics/gopslut6.jpg"></center>'

	'<<$guygop>> заводит вас в укромное место, где ставит в позу и трахает.'

	horand = RAND(1,100)
	if horand > horny:
		horny = horny + 10

		'Вы остались не удовлетворены'
	else
		horny = 0
		orgasm += 1

		'Вас охватил оргазм'
	end

	'<<$guygop>> кончает вам на задницу и вытирает свой член о вашу попу. После этого одевает штаны и идет бухать дальше.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = '11':
	minut += 15
	bj += 1
	throat = throat + 1
	gs'stat'

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

	'Вы достаете член гопника и берете его в рот старательно отсасывая.'
!'
	horand = RAND(1,100)
	if horand > oral:
		horny = horny + 10

		'Вы остались не удовлетворены'
	elseif horand <= oral:
		horny = 0
		orgasm += 1

		'Вас охватил оргазм'
	end

	'Вы чувствуете что <<$guygop>> сейчас кончит'
'

	gs'oral','0'

	act 'Продолжать сосать':
		cla
		*clr

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

		'Мощная струя спермы ударяет вам в рот'

		act 'Проглотить':
			cla
			cumlip = cumlip + 1
			swallow = swallow+1

			'Вы глотаете сперму, <<$guygop>> вытирает член о ваши губы и уходит.'

			act 'Уйти':gt'street'
		end
		act 'Выплюнуть':
			cla
			cumlip = cumlip + 1

			'Вы выплюнули сперму на землю.'

			act 'Уйти':gt'street'
		end
	end
	act 'Вынуть изо рта':
		cla

		picrand = RAND(1,5)
		if picrand = 1 and bjrand = 1:'<center><img src="images/pics/facial.jpg"></center>'
		if picrand = 2 and bjrand = 1:'<center><img src="images/pics/facial2.jpg"></center>'
		if picrand = 3 and bjrand = 1:'<center><img src="images/pics/facial3.jpg"></center>'
		if picrand = 4 and bjrand = 1:'<center><img src="images/pics/facial4.jpg"></center>'
		if picrand = 5 and bjrand = 1:'<center><img src="images/pics/facial5.jpg"></center>'

		bjrand = RAND(0,1)
		if bjrand = 0:'Вы успеваете вынуть член изо рта и <<$guygop>> кончает мимо вас.'
		if bjrand = 1:cumface = cumface + 1 & '<<$guygop>> кончает вам на лицо.'
		if bjrand = 1:'Все ваше лицо в липкой и горячей сперме, гопник вытирает член о ваши губы и уходит.'

		act 'Уйти':gt'street'
	end
end

if $ARGS[0] = '12':
	minut += 15
	anal += 1
	anus += 1
	cumass = cumass + 1
	gs'stat'

	picrand = RAND(1,6)
	if picrand = 1:'<center><img src="images/pics/gopslut.jpg"></center>'
	if picrand = 2:'<center><img src="images/pics/gopslut2.jpg"></center>'
	if picrand = 3:'<center><img src="images/pics/gopslut3.jpg"></center>'
	if picrand = 4:'<center><img src="images/pics/gopslut4.jpg"></center>'
	if picrand = 5:'<center><img src="images/pics/gopslut5.jpg"></center>'
	if picrand = 6:'<center><img src="images/pics/gopslut6.jpg"></center>'

	'<<$guygop>> заводит вас в укромное место, где ставит в позу и трахает.'

	horand = RAND(1,100)
	if horand > horny:
		horny = horny + 10

		'Вы остались не удовлетворены'
	else
		horny = 0
		orgasm += 1

		'Вас охватил оргазм'
	end

	'<<$guygop>> кончает вам на задницу и вытирает свой член о вашу попу. После этого одевает штаны и идет бухать дальше.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = '2':
	minut += 30
	gs'stat'

	if VasanTut = 3:
		$namgop = 'Васян'
	else
		$namgop = ''
	end
	if BerezaTut = 3:
		$namgop2 = 'Береза'
	else
		$namgop2 = ''
	end
	if VitekTut = 3:
		$namgop3 = 'Витек'
	else
		$namgop3 = ''
	end
	if KostilTut = 3:
		$namgop4 = 'Костыль'
	else
		$namgop4 = ''
	end
	if UdmurtTut = 3:
		$namgop5 = 'Удмурт'
	else
		$namgop5 = ''
	end
	if SeriTut = 3:
		$namgop6 = 'Серый'
	else
		$namgop6 = ''
	end

	$namgopsum = '<<$namgop>> <<$namgop2>> <<$namgop3>> <<$namgop4>> <<$namgop5>> <<$namgop6>> достали свои члены и начали сдирать с вас одежду.'

	if GLust ! 2:tiprand = RAND(0,1)
	if tiprand = 0 and GLust ! 2:
		bj = bj + 3
		gang = gang+1
		throat = throat + 3
		cumlip = cumlip + 2
		cumface = cumface + 1
		gs'stat'

		picrand = RAND(1,11)
		if picrand = 1:'<center><img src="images/pics/tri.jpg"></center>'
		if picrand = 2:'<center><img src="images/pics/tri2.jpg"></center>'
		if picrand = 3:'<center><img src="images/pics/tri3.jpg"></center>'
		if picrand = 4:'<center><img src="images/pics/tri4.jpg"></center>'
		if picrand = 5:'<center><img src="images/pics/tri5.jpg"></center>'
		if picrand = 6:'<center><img src="images/pics/tri6.jpg"></center>'
		if picrand = 7:'<center><img src="images/pics/tri7.jpg"></center>'
		if picrand = 8:'<center><img src="images/pics/tri8.jpg"></center>'
		if picrand = 9:'<center><img src="images/pics/tri9.jpg"></center>'
		if picrand = 10:'<center><img src="images/pics/tri10.jpg"></center>'
		if picrand = 11:'<center><img src="images/pics/tri11.jpg"></center>'

		'<<$namgopsum>>. Они посадили вас на корточки и стали бить своими членами вам по лицу и по очереди иметь вас в рот.'

		horand = RAND(1,100)
		if horand > horny:
			horny = horny + 10

			'Вы остались не удовлетворены'
		else
			horny = 0
			orgasm += 1

			'Вас охватил оргазм'
		end

		'Они обкончали вам все лицо и рот.'

		act 'Уйти':gt'street'
	elseif tiprand = 1 or GLust = 2:
		bj = bj + 1
		vagina += 1
		sex += 1
		anal += 1
		anus += 5
		gang = gang+1
		throat = throat + 3
		cumlip = cumlip + 2
		cumface = cumface + 1
		gs'stat'

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

		'<<$namgopsum>>. Они начали трахать вас во все дыры по очереди.'

		horand = RAND(1,100)
		if horand > horny:
			horny = horny + 10

			'Вы остались не удовлетворены'
		else
			horny = 0
			orgasm += 1

			'Вас охватил оргазм'
		end

		'Вас отимели во все дыры и обкончали со всех сторон.'

		act 'Уйти':gt'street'
	end
end

if $ARGS[0] = 'degrading':
	minut += 120
	vagina += 10
	anus += 10
	anal += 1
	sex += 1
	rape += 1
	gopopusday = day
	gs'stat'

	if VasanTut = 3 and vasansex = 0:vasansex = 1 & guy += 1
	if BerezaTut = 3 and berezasex = 0:berezasex = 1 & guy += 1
	if VitekTut = 3 and viteksex = 0:viteksex = 1 & guy += 1
	if KostilTut = 3 and kostilsex = 0:kostilsex = 1 & guy += 1
	if UdmurtTut = 3 and udmurtsex = 0:udmurtsex = 1 & guy += 1
	if SeriTut = 3 and serisex = 0:serisex = 1 & guy += 1

	if VasanTut = 3:
		$namgop = 'Васян'
	else
		$namgop = ''
	end
	if BerezaTut = 3:
		$namgop2 = 'Береза'
	else
		$namgop2 = ''
	end
	if VitekTut = 3:
		$namgop3 = 'Витек'
	else
		$namgop3 = ''
	end
	if KostilTut = 3:
		$namgop4 = 'Костыль'
	else
		$namgop4 = ''
	end
	if UdmurtTut = 3:
		$namgop5 = 'Удмурт'
	else
		$namgop5 = ''
	end
	if SeriTut = 3:
		$namgop6 = 'Серый'
	else
		$namgop6 = ''
	end

	$namgopsum = '<<$namgop>> <<$namgop2>> <<$namgop3>> <<$namgop4>> <<$namgop5>> <<$namgop6>> достали свои члены и начали сдирать с вас одежду.'

	degrand = RAND(0,8)
	if degrand = 0:'<center><img src="images/pictures/deg.jpg"></center>'
	if degrand = 1:'<center><img src="images/pictures/deg1.jpg"></center>'
	if degrand = 2:'<center><img src="images/pictures/deg2.jpg"></center>'
	if degrand = 3:'<center><img src="images/pictures/deg3.jpg"></center>'
	if degrand = 4:'<center><img src="images/pictures/deg4.jpg"></center>'
	if degrand = 5:'<center><img src="images/pictures/deg5.jpg"></center>'
	if degrand = 6:'<center><img src="images/pictures/deg6.jpg"></center>'
	if degrand = 7:'<center><img src="images/pictures/deg7.jpg"></center>'
	if degrand = 8:'<center><img src="images/pictures/deg8.jpg"></center>'

	'Гопота издевается над вами, вас бьют по щекам и грудям. Засовывают в киску разные предметы и плюют вам в лицо. Наигравшись гопники отпускают вас.'

	act 'Уйти':gt'street'
end
--- gopnew ---------------------------------

