# dimaRudeEv
dimarudeday = day
gs'stat'

'<center><b><font color = maroon><<$npcName[1]>> <<$npcSurName[1]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/1.jpg"></center>'

if dimarudorient = 0:
	'Дима увидев вас повернулся и спокойно сказал "Ну что, пойдем ко мне, развлечемся."'

	if fedorKozlovQW >= 10:
		'К вам с Димой подходит Федор. "Света, ну что, пойдем?" Дима посмотрел на Федора "Федь, тебе чего надо? Это моя девчонка." Федор помрачнел "Что значит твоя девчонка? Она со мной встречается." Дима усмехнулся "Так давай у нее самой спросим, с кем она встречается?"'

		act 'Извини Федя, я встречаюсь с Димой':
			cls
			minut += 15
			fedorKozlovQW = -1
			gs'stat'

			'Вы выбрали Диму и Федор разочарованно пожал плечами и ушел.'
			'Вы пошли к дому Димы. Дом где он живет принадлежит его родителям, это большой двух этажный, отдельно стоящий дом с ухоженным газоном и не большим садом.'

			act 'Идти в комнату Димы':dimarudorient = 1 & gt $curloc
		end
		act 'Извини Дима, но я тебя бросаю':
			cls
			minut += 15
			gs'stat'

			'Вы решили выбрать Федора. На что Дима гадко усмехнулся и повернувшись к Феде сказал "Федь, нафига тебе нужна эта хуесоска? Я лично с ней встречался только потому что она сосет офигенно." Федька набычился "Ты что мелешь, уебок?"'

			if dimaFilm = 1:
				fedorKozlovQW = -1
				GorSlut = 2

				'Дима сказал зло посмотрев Федору в глаза "А если у меня есть доказательства, что она хуесоска? Что ты тогда скажешь." Федор немного смутился но решительно сказал "Этого быть не может!" Дима усмехнулся, "Не может? Смотри сюда." Дима достал телефон и включил видео. Вы покраснели как рак, поняв, что за видео Дима включил Федору. На видео отчетливо было видно, как у вас вставлено кольцо в рот и твердый член входит вам в рот проникая в горло. У вас текут слюни и слезы, но вы не сопротивляетесь и с готовностью подставляете свой рот. Федор побагровел и посмотрел на вас "Ах ты двуличная сука!" Он отвернулся от вас и быстро пошел прочь. Дима злобно посмотрел на вас "Бросить меня решила хуесоска? Хуй тебе в рот, это я тебя бросаю. И уже сегодня, все будут знать, что ты из себя представляешь." Дима рассмеялся и ушел от вас.'

				act 'Уйти':gt'gorodok'
			elseif dimaFilm = 0:
				'Дима сказал "Да я ее в кустах возле дискотеки в рот оттрахал." Федька еще сильней набычился и подошел вплотную к Диме "Ну ка еще раз повтори, что ты сказал?" Дима заметно испугался "Да правда это, она у меня возле дискотеки отсосала." Федя сильно толкнул Диму, Дима отлетел от него и начал сбивчиво говорить "Отвали от меня! Хочешь с ней встречаться, давай." Федя подошел к Диме и схватил его за грудки "Еще раз услышу, что ты о Свете, всякую херню болтаешь, пожалеешь." Дима нервно заерзал пытаясь вырваться из стальной хватки Федора "Да ладно, успокойся, я все понял." Федя оттолкнул Диму и отвел вас в сторону.'

				act 'Идти с Федором':DimaRudeBlock = 1 & gt'FedorEv'
			end
		end

		exit
	end

	act 'Идти к Диме':
		cls
		minut += 15
		gs'stat'

		'Вы пошли к дому Димы. Дом где он живет принадлежит его родителям, это большой двух этажный, отдельно стоящий дом с ухоженным газоном и не большим садом.'

		act 'Идти в комнату Димы':dimarudorient = 1 & gt $curloc
	end

	act 'Уйти':gt'gschool'
elseif dimarudorient = 1:
	'Дима закрыл входную дверь своей комнаты на замок и повернулся к вам "Раздевайся."'

	act 'Раздеться':
		if dimaFilm = 0:dimarudorient = 2
		if dimaFilm = 1:dimarudorient = 3
		gt $curloc
	end
elseif dimarudorient = 2:
	'Дима с равнодушной ухмылкой посмотрел на ваше обнаженное тело и подошел к столу. Вы увидели, что он включил небольшую камеру и взял ее в руки. Он сел на диван и направив камеру на вас сказал "Если отсосешь перед камерой, то тогда я никому не расскажу как оттрахал тебя в рот на дискотеке."'

	act 'Одеваться':
		cls
		minut += 5
		if GorSlut < 2:GorSlut = 2
		gs'stat'

		'Вы схватили одежду и стараясь спрятать лицо от камеры начали одеваться как можно быстрее. Дима продолжал все это снимать на камеру.'

		act 'Убежать':
			cls
			minut += 15
			DimaRudeBlock = 1
			gs'stat'

			'Вы открыли дверь и пошли к выходу из дома. Следом услышали голос Димы "Валяй, беги свинья. Завтра все будут знать, что ты хуесоска."'

			act 'Уйти':gt'gorodok'
		end
	end
	act 'Отсосать перед камерой':
		cls
		minut += 15
		bj += 1
		cumlip += 1
		swallow += 1
		dimaFilm = 1
		sub += 5
		gs'stat'

		'<center><img src="images/qwest/alter/evdima/filming.jpg"></center>'
		'Вы сели перед Димой и начали сосать его член. Дима сосредоточенно снимал вас на свою камеру. Его член быстро окреп и вскоре сперма брызнула вам в рот. Вы старательно проглотили ее перед камерой. Дима выключил камеру и отложил ее в сторону. "Классно. Ты отличная хуесоска."'

		act 'Уйти':gt'gorodok'
	end
elseif dimarudorient = 3:
	'Дима с равнодушной ухмылкой осмотрел ваше тело. Он подошел к шкафу и покопался в нем достав какие то вещи. Он подошел к вам и грубо завернул вам руки за спину. Послышался щелчок наручников и вы ощутили холодную сталь на запястьях. Он подошел к вам сзади и засунул вам в рот кольцо к которому прикреплены ремни, после этого он застегнул ремень у вас за головой'

	act 'Далее':
		cls
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/evdima/ogag.jpg"></center>'
		'Ваш рот очень широко открыт при помощи кольца, Дима видимо немного смазал кольцо находящееся в вашем рту лимонным соком и теперь у вас слюна течет ручьем изо рта и нет никакой возможности ее остановить. Дима немного полюбовался на вас и достал член.'

		act 'Далее':
			cls
			minut += 5
			bj += 1
			cumlip += 1
			swallow += 1
			throat += 1
			sub += 5
			gs'stat'

			'<center><img src="images/qwest/alter/evdima/gagbj.jpg"></center>'
			'Член не встречая сопротивления вошел через кольцо в ваш рот и уперся в ваше горло. Вы немного подавились, Дима вынул член и со всей силы загнал вам его в горло. У вас потекли слюни, слезы и сопли по лицу. Дима яростно вгонял свой член в ваш рот, трахая ваше горящее огнем горло. Наконец он застонал и вогнав член до основания в ваш рот стал кончать вам в горло. Вы практически теряли сознание от удушья и в горле возникли спазмы от которых член еще туже зажимало внутри вас. Наконец член Димы стал опадать и он вынул его из вас. После этого он вынул кляп из вашего рта и развязал ваши руки.'

			act 'Уйти':gt'gorodok'
		end
	end
end
--- dimaRudeEv ---------------------------------
