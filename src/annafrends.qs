# annafrends
gs'stat'

'Около дома культуры пьют пиво ваша сестра Аня, Лена, Ира, Рекс и Роман.'

dialogstartrand = RAND(0,4)
if dialogstartrand = 0:
	!аня
	'Аня возмущается схватив полуторалитровую бутылку пива "Пацаны! Ну вы нальете пиво сегодня или нет?"'

	tipDSrand = RAND(0,1)
	if tipDSrand = 0:
		'Рекс взял полторашку из рук Ани.'

		tipDSrand2 = RAND(0,4)
		if tipDSrand2 = 0:
			*nl
			'"И не зачем так орать! Сейчас налью!"'

			tipDSrand3 = RAND(0,2)
			if tipDSrand3 = 0:
				'Аня хихикает "Я еще не начинала орать, если начну, ты оглохнешь."'
			elseif tipDSrand3 = 1:
				'Лена звонко хлопает по плечу Рекса "Живее! И с подскоком собачьи говна, с подскоком!"'
			elseif tipDSrand3 = 2:
				'Ира улыбается "Не возмущайся, Рексик."'

				tipDSrandA = RAND(0,10)
				if tipDSrandA = 0:'Аня прыскает в кулачок "А то на цепь посадим."'
			end
		elseif tipDSrand2 = 1:
			*nl
			'"Ну ты вечно как на поезд опаздываешь. Расслабь булки. Сейчас все будет."'

			tipDSrand3 = RAND(0,2)
			if tipDSrand3 = 0:
				'Аня хихикает "Я еще не начинали орать, если начну, ты оглохнешь."'
			elseif tipDSrand3 = 1:
				'Лена звонко хлопает по плечу Рекса "Живее! И с подскоком собачьи говна, с подскоком!"'
			elseif tipDSrand3 = 2:
				'Рома хихикает "Тут и так воняет. А если еще и она булки расслабит, то мы рискуем задохнуться!"'

				tipDSrand4 = RAND(0,2)
				if tipDSrand4 = 0:
					'Аня язвительно замечает "Ты так навсегда девственником останешься, Рома."'

					tipDSrandA = RAND(0,10)
					if tipDSrandA = 0:
						'Рома усмехается "Это было предложение?"'

						tipDSrand5 = RAND(0,2)
						if tipDSrand5 = 0:
							'Аня смеется "Мечтай дальше, рыжик."'
						elseif tipDSrand5 = 1:
							'Аня смеется "Только в твоих снах, рыжик."'
						elseif tipDSrand5 = 2:
							'Аня смеется "Ага, щазз. слышишь топот? Уже побежала давать."'
						end
					end
				elseif tipDSrand4 = 1:
					'Аня язвительно замечает "И ты еще удивляешься, что тебе девчонки не дают Рома."'

					tipDSrandA = RAND(0,10)
					if tipDSrandA = 0:'Рекс усмехается "Да уж, наш вечный девственник Рома умеет оживить разговор на тему анальных газов."'
				elseif tipDSrand4 = 2:
					'Аня язвительно замечает "Это от тебя так пахнет."'

					tipDSrandA = RAND(0,10)
					if tipDSrandA = 0:'Рома усмехается "Да не, это собачатиной несет."'
				end
			end
		elseif tipDSrand2 = 2:
			*nl
			'"Че, рук нету пробку отвинтить?"'

			tipDSrand3 = RAND(0,2)
			if tipDSrand3 = 0:
				'Аня хихикает "А ты тогда нафига нужен?"'

				tipDSrandA = RAND(0,10)
				if tipDSrandA = 0:'Рекс с притворным возмущением "Кругом одна эксплуатация."'
			elseif tipDSrand3 = 1:
				'Лена звонко хлопает по плечу Рекса "Ты как с девушкой разговариваешь?"'

				tipDSrandA = RAND(0,10)
				if tipDSrandA = 0:'Рекс с притворным возмущением "По русски я с ней разговариваю."'
			elseif tipDSrand3 = 2:
				'Ира улыбается "Не возмущайся, Рексик."'

				tipDSrandA = RAND(0,10)
				if tipDSrandA = 0:'Аня прыскает в кулачок "А то на цепь посадим."'
			end
		elseif tipDSrand2 = 3:
			*nl
			'"Разрешите подорваться, мадам."'

			tipDSrand3 = RAND(0,2)
			if tipDSrand3 = 0:
				'Аня хихикает "Разрешаю, месье."'
			elseif tipDSrand3 = 1:
				'Аня с притворным возмущением говорит "Не мадам, а мадмуазель!"'

				tipDSrandA = RAND(0,10)
				if tipDSrandA = 0:'Рекс галантно кланяясь "Миль пардон мадмуазель."'
			elseif tipDSrand3 = 2:
				'Аня нетерпеливо замечает "Наливай уже, клоун."'
			end
		elseif tipDSrand2 = 4:
			*nl
			'"Бля!!! Где стаканчики? Мы что их не купили?"'

			tipDSrand3 = RAND(0,2)
			if tipDSrand3 = 0:
				'Аня берет стаканчики "Вот они, слепое чудовище."'
			elseif tipDSrand3 = 1:
				'Рома замечает "Рекс, ты сам их в магазине брал, совсем памяти что ли нет?"'
			elseif tipDSrand3 = 2:
				'Лена хватает стаканчики "Рекс, не тяни резину."'
			end
		end
	elseif tipDSrand = 1:
		'Рома взял полуторалитровую бутылку из рук Ани и начал ее распечатывать. "Подержите кто нибудь стаканчики."'

		tipDSrand2 = RAND(0,2)
		if tipDSrand2 = 0:
			'Рекс взял стаканчики и Рома начал наливать пиво по пластиковым стаканам.'
		elseif tipDSrand2 = 1:
			'Рекс взял стаканчики "Вот же безрукий хрен. Сам не можешь что ли?"'
		elseif tipDSrand2 = 2:
			'Ира взяла стаканчики "Наливай уже, горе луковое."'
		end

		tipDSrandA = RAND(0,3)
		if tipDSrandA = 0:
			'Пиво перелилось из стаканчика и хлынуло на землю.'

			tipDSrand3 = RAND(0,2)
			if tipDSrand3 = 0:
				'Рекс возмутился. "Вот же ты безрукий хрен! Ничего нельзя тебе доверить!"'
			elseif tipDSrand3 = 1:
				'Рекс возмутился. "Нет, ну как же не разлить то?"'
			elseif tipDSrand3 = 2:
				'Аня возмутилась. "Всегда одно и то же, если рыжик наливает, то обязательно разольет."'
			end
		end
	end
elseif dialogstartrand = 1:
	!Лена
	'Лена возмущенно "Мы пиво пить пришли или любоваться им?"'

	dialogstartrand = RAND(3,4)
elseif dialogstartrand = 2:
	!Ира
	'Ира кокетничая и хлопая глазками "Мальчики, а мы сегодня будем пить пиво?"'

	dialogstartrand = RAND(3,4)
elseif dialogstartrand = 3:
	!Рекс
	tipDSrand = RAND(0,1)
	if tipDSrand = 0:
		'Рекс взял полторашку пива и отвинтил пробку.'

		tipDSrand2 = RAND(0,2)
		if tipDSrand2 = 0:
			*nl
			'"Бля!!! Где стаканчики? Мы что их не купили?"'

			tipDSrand3 = RAND(0,2)
			if tipDSrand3 = 0:
				'Аня берет стаканчики "Вот они, слепое чудовище."'
			elseif tipDSrand3 = 1:
				'Рома замечает "Рекс, ты сам их в магазине брал, совсем памяти что ли нет?"'
			elseif tipDSrand3 = 2:
				'Лена хватает стаканчики "Рекс, не тяни резину."'
			end
		elseif tipDSrand2 = 1:
			*nl
			'"Ромка, подержи стаканчики, пока я наливаю."'
		end
	elseif tipDSrand = 1:
		'Рекс взял полторашку пива и протянул ее Роме. "Наливай, чего застыл."'
		'Рома взял полуторалитровую бутылку пива и начал ее распечатывать. "Подержите кто нибудь стаканчики."'

		tipDSrand2 = RAND(0,2)
		if tipDSrand2 = 0:
			'Рекс взял стаканчики и Рома начал наливать пиво по пластиковым стаканам.'
		elseif tipDSrand2 = 1:
			'Рекс взял стаканчики "Вот же безрукий хрен. Сам не можешь что ли?"'
		elseif tipDSrand2 = 2:
			'Ира взяла стаканчики "Наливай уже, горе луковое."'
		end

		tipDSrandA = RAND(0,3)
		if tipDSrandA = 0:
			'Пиво перелилось из стаканчика и хлынуло на землю.'

			tipDSrand3 = RAND(0,2)
			if tipDSrand3 = 0:
				'Рекс возмутился. "Вот же ты безрукий хрен! Ничего нельзя тебе доверить!"'
			elseif tipDSrand3 = 1:
				'Рекс возмутился. "Нет, ну как же не разлить то?"'
			elseif tipDSrand3 = 2:
				'Аня возмутилась. "Всегда одно и то же, если рыжик наливает, то обязательно разольет."'
			end
		end
	end
elseif dialogstartrand = 4:
	!Рома Мейнольд
	'Рома взял полуторалитровую бутылку пива и начал ее распечатывать. "Подержите кто нибудь стаканчики."'

	tipDSrand2 = RAND(0,2)
	if tipDSrand2 = 0:
		'Рекс взял стаканчики и Рома начал наливать пиво по пластиковым стаканам.'
	elseif tipDSrand2 = 1:
		'Рекс взял стаканчики "Вот же безрукий хрен. Сам не можешь что ли?"'
	elseif tipDSrand2 = 2:
		'Ира взяла стаканчики "Наливай уже, горе луковое."'
	end

	tipDSrandA = RAND(0,3)
	if tipDSrandA = 0:
		'Пиво перелилось из стаканчика и хлынуло на землю.'

		tipDSrand3 = RAND(0,2)
		if tipDSrand3 = 0:
			'Рекс возмутился. "Вот же ты безрукий хрен! Ничего нельзя тебе доверить!"'
		elseif tipDSrand3 = 1:
			'Рекс возмутился. "Нет, ну как же не разлить то?"'
		elseif tipDSrand3 = 2:
			'Аня возмутилась. "Всегда одно и то же, если рыжик наливает, то обязательно разольет."'
		end
	end
end

'Наконец пиво оказалось в стаканчиках и вам тоже дали один пластиковый стаканчик с холодным пивом. Вы выпили вместе со всеми пива.'

if sisboyQW = 1:
	act 'Познакомиться с парнем сестры':
		cls
		minut += 5
		sisboyQW = 2
		gs'stat'

		'<center><img src="images/qwest/alter/sisterQW/sisboyQW_02.jpg"></center>'
		'-Светка, ты очень хотела познакомиться с моим парнем, это Рома, а это моя сестренка Света, вот вы и познакомились."'
		'-За знакомство!!!" Крикнул пьяный Рекс, и вы со всей компанией продолжили пить противное пиво, разглядывая парня сестры.'
		'Рома рыжеволосый худощавый парень, и очень симпатичный, как же сестре сильно повезло подумали вы.'

		act 'Продолжать пить пиво':SiSonWork = 0 & SiSgdk = 0 & gt'annafrends2'
	end
else
	act 'Продолжать пить пиво':SiSonWork = 0 & SiSgdk = 0 & gt'annafrends2'
end
--- annafrends ---------------------------------
