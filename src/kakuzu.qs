# kakuzu
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Особняк Какузу</b></center>'
	'<center><img src="images/pic/mansion.jpg"></center>'
	'Старинный мрачный особняк, к которому местные даже на пушечный выстрел подходить боятся и искренне считают, что там живет что то очень плохое. Не нужно обладать какими то способностями, что бы чувствовать, от этого места веет смертью.'

	act 'Войти в особняк':gt'kakuzu','mansion'
	act 'Уйти':gt'nord'
end

if $ARGS[0] = 'mansion':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Особняк Какузу</b></center>'
	'<center><img src="images/pic/mansion1.jpg"></center>'
	'В комнате сидит Какузу не обращая на вас никакого внимания'

	act 'Поговорить с Какузу':gt'kakuzu','mansion1'
	act 'Уйти':gt'kakuzu','start'
end

if $ARGS[0] = 'mansion1':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	'<center><b>Какузу</b></center>'
	'<center><img src="images/picQW/kakuzu.jpg"></center>'

	if tobiQW = 1:'Я знаю кто ты и что тебе надо. Плати 100 штук и тогда я пошевелюсь, что бы научить тебя как добиться сродства со стихией.'
	if tobiQW = 2:'У вас <<srodpaper>> листов бумаги для определения сродства со стихией. Если вам не хватит бумаги, то придется покупать еще у Какузу по 10 тыс.руб за лист.'

	if money >= 100000 and tobiQW = 1:
		act 'Вот деньги (100 тыс.руб)':
			cla
			money = money - 100000
			tobiQW = 2
			srodpaper = 10

			'Вы положили перед Какузу деньги. Он закинул их в ящик стола даже не взглянув.'
			'Вы поинтересовались "Даже не будешь пересчитывать?" На что Какузу спокойно сказал, "если там не хватит хотя бы рубля, я найду и убью тебя."'
			'(Какузу) - Слушай меня внимательно. Стихий существует пять штук,'
			'Огонь - эта школа имеет самый сильный урон из всех и самую слабую защиту. Но нет ничего лучше школы огня, что бы прибить противника одним ударом.'
			'Молнии - эта школа каждым своим попаданием парализует противника, урон слабее чем от огня, но если ты зацепишься молнией, то быстро добьешь любого.'
			'Ветер - слабый урон, слабая защита, но ни туман, ни клоны не могут спасти от ветра, любое атакующее заклинание ветра уничтожает клоны и туман, плюс от заклинаний ветра практически не возможно увернутся.'
			'Земля - защитная школа, но атаки земли очень опасны, если противник пропустит атаку, то завязнет в земле и не сможет двигаться. Так же у земли самая мощнейшая защита из всех, защиты земли регенерируют и абсолютная защита сама атакует противника.'
			'Вода - урон от этой школы маленький, но все заклинания воды отбирают манну у противника, так же высокоуровневая защита воды очень опасна, она жрет манну у противника и регенерирует, хотя она слабее чем аналогичная защита земли.'
			'Сродство со стихией означает, что ты можешь изучать именно эту стихию. Ты не сможешь изучить другую стихию после выбора сродства, пока не изучишь стихию полностью. Я дам тебе 10 листов магической бумаги. Каждый такой лист обошелся мне в 5000 рублей. Концентрируй энергию в листке бумаги и когда это у тебя получится, то ты можешь либо начать заново и надеяться на другую стихию, либо выбрать ту стихию на которой тебе удалось сконцентрироваться.'

			act 'Взять листы бумаги':gt'kakuzu','mansion1'
		end
	elseif tobiQW = 2 and srodpaper <= 0 and money >= 10000:
		act 'Мне нужна еще бумага (10 тыс.руб)':
			cla
			money = money - 10000
			srodpaper = srodpaper + 1
			'Вы отдали деньги и Какузу протянул вам лист бумаги.'
			act 'Взять листы бумаги':gt'kakuzu','mansion1'
		end
	end

	if tobiQW = 2:
		act 'Расскажи еще раз про стихии':
			cla
			'(Какузу) - Тупица, слушай и запоминай. Стихий существует пять штук,'
			'Огонь - эта школа имеет самый сильный урон из всех и самую слабую защиту. Но нет ничего лучше школы огня, что бы прибить противника одним ударом.'
			'Молнии - эта школа каждым своим попаданием парализует противника, урон слабее чем от огня, но если ты зацепишься молнией, то быстро добьешь любого.'
			'Ветер - слабый урон, слабая защита, но ни туман, ни клоны не могут спасти от ветра, любое атакующее заклинание ветра уничтожает клоны и туман, плюс от заклинаний ветра практически не возможно увернутся.'
			'Земля - защитная школа, но атаки земли очень опасны, если противник пропустит атаку, то завязнет в земле и не сможет двигаться. Так же у земли самая мощнейшая защита из всех, защиты земли регенерируют и абсолютная защита сама атакует противника.'
			'Вода - урон от этой школы маленький, но все заклинания воды отбирают манну у противника, так же высокоуровневая защита воды очень опасна, она жрет манну у противника и регенерирует, хотя она слабее чем аналогичная защита земли.'
			'Сродство со стихией означает, что ты можешь изучать именно эту стихию. Ты не сможешь изучить другую стихию после выбора сродства, пока не изучишь стихию полностью. Я дам тебе 10 листов магической бумаги. Каждый такой лист обошелся мне в 5000 рублей. Концентрируй энергию в листке бумаги и когда это у тебя получится, то ты можешь либо начать заново и надеяться на другую стихию, либо выбрать ту стихию на которой тебе удалось сконцентрироваться.'

			act 'Отойти':gt'kakuzu','mansion1'
		end
	end

	if tobiQW = 2 and srodpaper > 0 and manna < 2000:
		'У вас нет сил, что бы продолжить концентрацию.'
	elseif tobiQW = 2 and srodpaper > 0 and manna >= 2000:
		act 'Концентрировать энергию в листе бумаги (1 час)':
			cla
			minut = minut + 60
			manna = manna - 2000
			sweat = sweat + 5
			if srodstvo = 0:srodrand = RAND(1,5)

			'Вы концентрируете энергию в листе бумаги. Вы чувствуете, что тратите огромное количество манны на это действие.'

			srodstvo = srodstvo + RAND(1,10)
			if srodstvo < 100:
				'Вы устаете и потеете как лошадь, но ваши усилия ни приводят ни к чему.'

				act 'Отойти':gt'kakuzu','mansion1'
			elseif srodstvo >= 100:
				srodpaper = srodpaper - 1
				if srodrand = 1:'Бумага вспыхнула в ваших руках. Какузу одобрительно кивнул, сродство с огнем. Будешь закреплять его?'
				if srodrand = 2:'Бумага наэлектризовалась в ваших руках, и из нее посыпались искры. Какузу одобрительно кивнул, сродство с молниями. Будешь закреплять его?'
				if srodrand = 3:'Бумага затвердела в ваших руках. Какузу одобрительно кивнул, сродство с землей. Будешь закреплять его?'
				if srodrand = 4:'Бумага разлетелась на клочки в ваших руках. Какузу одобрительно кивнул, сродство с ветром. Будешь закреплять его?'
				if srodrand = 5:'Бумага промокла в ваших руках. Какузу одобрительно кивнул, сродство с водой. Будешь закреплять его?'

				act 'Закрепить сродство':
					cla
					tobiQW = 3
					stihia = srodrand
					srodstvo = 0
					gt'kakuzu','mansion1'
				end
				act 'Отказаться от этого сродства':
					srodstvo = 0
					gt'kakuzu','mansion1'
				end
			end
		end
	end

	if tobiQW = 3 and manna < 1000:
		'Какузу говорит вам "У тебя практически не осталось энергии, тебе нужно отдохнуть."'
	elseif tobiQW = 3 and manna >= 1000:
		if stihia = 1:
			if magik >= 6 and spellfire1 = 0:
				act 'Изучать Пламя (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellfireL = spellfireL + RAND(1,10)
					if spellfireL < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellfireL >= 100:
						spellfire1 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 7 and spellfire2 = 0:
				act 'Изучать Высвобождение огня (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellfire2L = spellfire2L + RAND(1,10)
					if spellfire2L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellfire2L >= 100:
						spellfire2 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 8 and spellfire3 = 0:
				act 'Изучать Барьер огня (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellfire3L = spellfire3L + RAND(1,10)
					if spellfire3L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellfire3L >= 100:
						spellfire3 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 9 and spellfire4 = 0:
				act 'Изучать Огненный шторм (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellfire4L = spellfire4L + RAND(1,10)
					if spellfire4L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellfire4L >= 100:
						spellfire4 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 10 and spellfire5 = 0:
				act 'Изучать Пламенный щит (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellfire5L = spellfire5L + RAND(1,10)
					if spellfire5L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellfire5L >= 100:
						spellfire5 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end
		end

		if stihia = 2:
			if magik >= 6 and spellele1 = 0:
				act 'Изучать Разряд (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spelleleL = spelleleL + RAND(1,10)
					if spelleleL < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spelleleL >= 100:
						spellele1 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 7 and spellele2 = 0:
				act 'Изучать Молния (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellele1L = spellele1L + RAND(1,10)
					if spellele1L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellele1L >= 100:
						spellele2 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 8 and spellele3 = 0:
				act 'Изучать Электро барьер (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellele2L = spellele2L + RAND(1,10)
					if spellele2L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellele2L >= 100:
						spellele3 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 9 and spellele4 = 0:
				act 'Изучать Танец тысячи птиц (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellele3L = spellele3L + RAND(1,10)
					if spellele3L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellele3L >= 100:
						spellele4 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 10 and spellele5 = 0:
				act 'Изучать Пляшущая сфера (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellele4L = spellele4L + RAND(1,10)
					if spellele4L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellele4L >= 100:
						spellele5 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end
		end

		if stihia = 3:
			if magik >= 6 and spellert1 = 0:
				act 'Изучать Зыбучий песок (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellertL = spellertL + RAND(1,10)
					if spellertL < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellertL >= 100:
						spellert1 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 7 and spellert2 = 0:
				act 'Изучать Активная защита (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellert2L = spellert2L + RAND(1,10)
					if spellert2L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellert2L >= 100:
						spellert2 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 8 and spellert3 = 0:
				act 'Изучать Пропасть (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellert3L = spellert3L + RAND(1,10)
					if spellert3L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellert3L >= 100:
						spellert3 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 9 and spellert4 = 0:
				act 'Изучать Абсолютная защита (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellert4L = spellert4L + RAND(1,10)
					if spellert4L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellert4L >= 100:
						spellert4 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 10 and spellert5 = 0:
				act 'Изучать Сандо (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellert5L = spellert5L + RAND(1,10)
					if spellert5L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellert5L >= 100:
						spellert5 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end
		end

		if stihia = 4:
			if magik >= 6 and spellwind1 = 0:
				act 'Изучать Порыв ветра (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwind1L = spellwind1L + RAND(1,10)
					if spellwind1L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwind1L >= 100:
						spellwind1 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 7 and spellwind2 = 0:
				act 'Изучать Ужасающее давление (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwind2L = spellwind2L + RAND(1,10)
					if spellwind2L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwind2L >= 100:
						spellwind2 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 8 and spellwind3 = 0:
				act 'Вакуумная защитная сфера (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwind3L = spellwind3L + RAND(1,10)
					if spellwind3L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwind3L >= 100:
						spellwind3 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 9 and spellwind4 = 0:
				act 'Вакуумные снаряды (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwind4L = spellwind4L + RAND(1,10)
					if spellwind4L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwind4L >= 100:
						spellwind4 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 10 and spellwind5 = 0:
				act 'Пожирающий вакуум (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwind5L = spellwind5L + RAND(1,10)
					if spellwind5L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwind5L >= 100:
						spellwind5 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end
		end

		if stihia = 5:
			if magik >= 6 and spellwater1 = 0:
				act 'Изучать Ручей манны (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwaterL = spellwaterL + RAND(1,10)
					if spellwaterL < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwaterL >= 100:
						spellwater1 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 7 and spellwater2 = 0:
				act 'Изучать Затопление (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwater2L = spellwater2L + RAND(1,10)
					if spellwater2L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwater2L >= 100:
						spellwater2 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 8 and spellwater3 = 0:
				act 'Изучать Водяной пузырь (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwater3L = spellwater3L + RAND(1,10)
					if spellwater3L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwater3L >= 100:
						spellwater3 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 9 and spellwater4 = 0:
				act 'Изучать Водяная акулья ракета (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwater4L = spellwater4L + RAND(1,10)
					if spellwater4L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwater4L >= 100:
						spellwater4 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end

			if magik >= 10 and spellwater5 = 0:
				act 'Изучать Великий потоп (1 час)':
					cla
					manna = manna - 1000
					minut = minut + 60

					spellwater5L = spellwater5L + RAND(1,10)
					if spellwater5L < 100:
						'Вы усердно изучали заклинание целый час, но так и не смогли его постичь.'

						act 'Отойти':gt'kakuzu','mansion1'
					elseif spellwater5L >= 100:
						spellwater5 = 1

						'Наконец то вам удалось изучить заклинание.'

						act 'Отойти':gt'kakuzu','mansion1'
					end
				end
			end
		end
	end

	act 'Уйти':gt'kakuzu','mansion'
end
--- kakuzu ---------------------------------

