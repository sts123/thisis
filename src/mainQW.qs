# mainQW
minut = minut + 15
'<center><img src="images/picQW/main.jpg"></center>'
'(Карин) - "Хмм, странно. Кажется я начинаю понимать в чем дело. Садись в машину, поедем проверим тебя."'
'Вы сели на заднее сиденье черного джипа. Джуго сел за руль, а Карин села рядом с вами. Карин принялась вас ощупывать. "Интересно. Насколько я понимаю у тебя был оргазм и во время оргазма часть силы Рикудо, мужской силы, преобразовалась в твою силу."'
!'(Карин) -'

act 'Я теперь маг?':
	cla
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'(Вы) - Я теперь маг?'
	'(Карин) - Ага и еще ты чемпион мира по бегу, у тебя же есть ноги и еще ты жонглер, у тебя же есть руки. Улавливаешь? Маг это человек управляющей магической силой, у тебя она есть, но управлять ты ей не умеешь.'

	act 'Так научи меня!':
		cla
		'(Вы) - Так научи меня!'
		'(Карин) - Учить? Я в жизни никого не учила магии. К тому же я не боевой маг. У меня скорее магический дар. Я лучше всех чувствую магию, причем на любом расстоянии. Плюс лечу и могу изменять органические формы жизни. Но пойми, в большей степени это дар, а не обучение. Обучением я лишь отшлифовала свой дар.'
		'(Вы) - Ну хоть чему то ты можешь меня научить.'
		'(Карин) - Только основам.'
		'(Джуго) - приехали, вылезайте, барышни.'
		'Вы вышли из машины и захлопнули дверь. Прошли по переулку до металлических дверей. Их открыл Джуго и пропустил вас с Карин вперед.'

		act 'Войти в дверь':
			cla
			*clr
			health = vital*10
			willpower = intel*5 + will*5
			manna = (intel*magik) + vital*5 + rikudo
			clr
			gs'stat'

			'<center><img src="images/picQW/lab.jpg"></center>'
			'В здании была лаборатория. Множество разнообразных стендов с аппаратурой и стеллажи с различными склянками и бутылочками.'
			'(Карин) - Добро пожаловать в мою лабораторию. Тут я исследую и живу. Раздевайся и ложись на кушетку, я осмотрю тебя.'

			act 'Лечь на кушетку':
				cla
				*clr
				clr
				gs'stat'
				minut = minut + 30
				killobj

				if oldobjmenu = 0:
					addobj 'Персонаж'
					addobj 'Посмотреть'
					addobj 'Прочее'
					addobj 'Меню'
				else
					addobj '<font color = green>Персонаж</font>'
					addobj 'Навыки'
					addobj 'Статистика'
					addobj 'Магия'
					addobj 'Лицо'
					addobj 'Тело'
					addobj 'Одежда'
					addobj 'Татуировки'
					addobj 'Пирсинг'
					addobj 'Записная книжка'
					addobj 'Аварийный выход'
					addobj 'Обновить'
					addobj 'Меню'
					addobj 'Новое меню'
					addobj 'Чит меню'
					if disable_autosave = 1:
						addobj 'Включить автосохранение'
					else
						addobj 'Отключить автосохранение'
					end
				end

				'<center><img src="images/picQW/main1.jpg"></center>'
				'Вы разделись и легли на кушетку, Карин начала осматривать вас. Она прикладывала какие то амулеты к вам и использовала различные устройства. Черз пол часа обследования, она вздохнула и сказала вам одеваться.'
				'Вы встали с кушетки и оделись. Вы спросили у Карин "Ну так что? Научишь меня чему нибудь?"'
				'(Карин) - Ладно. Но только теоретически. Слушай внимательно и вникай, я не буду повторяться. Для начала расскажу о магии. Магическая энергия, в азиатской культуре ее называют чакрой, вырабатывается всеми живыми организмами. Это жизненная энергия, лишившись ее организм начинает понемногу умирать. Ярким симптомом отсутствия магической энергии является плохое настроение. Оно само по себе не может убить, но оно расшатывает разум, а разум изматывает тело, в итоге либо тело не выдержит, либо разум.'
				'То есть магическая энергия есть и в траве, и в деревьях, и людях, нет ее в мертвой материи. Это энергия самой жизни, то что пробуждает в неживом живое. Она и у тебя была и есть, организм сам защищает себя, запрещая использовать эту энергию. Это изматывает организм и может его убить. Маги просто умеют обойти защиту организма и выделяя из себя магическую энергию преобразовывать ее в какие то действия. Главная задача любого мага это максимально раскрыть свои возможности и научится черпать свою энергию как можно больше. Но маги не могут зачерпнуть энергии больше, чем в них содержится. Тебе в чем то повезло, в тебя вошло столько энергии, сколько ни у одного мага нет. Тебе только нужно научится ее использовать. Как я уже поняла, твои оргазмы способны перерабатывать энергию Рикудо в свою собственную. Но каждая новая ступень будет все тяжелее даваться. Может есть еще какие нибудь способы переработать энергию Рикудо в твою собственную. Но главное, твой запас магической энергии почти не исчерпаем, в отличии от других магов. Понимаешь, ты теоретически самый сильный маг в этом мире, так как Рикудо был сильнейшим за всю историю. Возможно есть техники магии которые могут работать только с силой Рикудо. Скорее всего в свитках находящихся в подземелье как раз были какие то заклинания.'
				'(Вы) - Игорь! Игорь забрал один из свитков!'
				'(Карин) - Вот только не думай, что я буду за тебя решать твои проблемы. Если хочешь ищи самостоятельно своего Игоря.'
				'(Вы) - Я понятия не имею где он живет. Может наведаться к котловану.'
				'(Карин) - Ты думаешь орден Рассвета отступился от такой находки? Слушай, я вижу ты не совсем понимаешь, что такое орден Рассвета. Это не какие то мальчики для битья. Там все маги высочайшего уровня. Ни я ни Джуго не годимся даже в подметки любому из них. Любой из них разотрет нас с Джуго не напрягаясь. У них сила, у них боевой опыт и уникальные техники. Не связывайся с этими ребятами, они профи в своем деле. А их главное дело уничтожение других магов и отлов демонов.'
				'(Вы) - А что еще за демоны?'
				'(Карин) - Демоны как демоны, существа пришедшие к нам из других миров. Возможно и Рикудо был демоном, но демоны в отличии от него существа хоть и со страшной силой, но тупые и агрессивные. Что то типа зверей сотканных из чистой магии.'
				'(Вы) - Фига себе. Слушай, а ты можешь меня превратить обратно в мужчину?'
				'(Карин) - Могу. Но не буду. Ты не представляешь сколько энергии мне потребовалось, я выжала себя до суха и Джуго. Мне едва хватило энергии. Теперь мне ее физически не хватит из за такого сумасшедшего расхода энергии я потеряла четверть ее навсегда. И это еще учесть что сейчас твой организм начинает приспосабливаться к магии и мне придется еще тяжелей. Это будет возможно, только если ты прокачаешь магичность не меньше 10го уровня и передашь мне всю свою энергию навсегда. Я смогу сделать тебя опять прежним, но ты никогда не станешь магом, этот путь будет навсегда для тебя закрыт.'
				'(Карин) - Ты пока не заглядывай так далеко в будущее. Развивай тело, учись драться, копи магическую силу, тренируй ум. Постепенно все само встанет на те места на каких все и должно быть.'

				act 'Выйти':gt'down'
			end
		end
	end
end
--- mainQW ---------------------------------
