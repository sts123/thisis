# arturQW
if $ARGS[0] = 'arturQW_1':
	if arturTimes >= 5 and GorSlut = 0 and vnesh >= 30:
		cls
		minut += 2
		gs'stat'

		'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
		'-Свэтка, я тэба ужэ давно и харашо знаю, ты четкая телка и полностью заслужила мое уважение.'
		'-Ой, спасибо Артурчик, мне так приятно это слышать.'
		'-Замэчаю у тэбя в сэмье не все ладна с баблом, я тэбэ помогу, прихади ко мнэ по выходным и будэш зарабытывать как королева.'

		act 'Согласиться':
			cls
			minut += 2
			if arturQW = 0:arturQW = 1
			gs'stat'

			'<center><img src="images/qwest/alter/arturQW/arturQW_1.jpg"></center>'
			'-Ну, если ты действительно будешь хорошо платить, то мне грех отказываться, заинтересованно говорите вы.'
			'-Канэчна красавица, я так и знал что не откажешса от маего супэр предлажения.'
			'Разгоряченный Артур подходит к вами крепко сжимает вашу попку.'
			'-Так эсли бизнэс дела улажены, то пойдем шашлык кушать, чачу пить!'

			act 'Идти с Артуром':gt'arturHome'
			act 'Уйти':gt'Grinok'
		end
		act 'Отказаться':
			cls
			minut += 2
			gs'stat'

			'<center><img src="images/qwest/alter/arturQW/arturQW_2.jpg"></center>'
			'-Спасибо Артурчик за заманчивое предложение, но у меня и так много дел, учеба, танцы, волейбол, и так не успеваю жить.'
			'-Как хочеш красавица, мое дело предлажить, с грустью на лице ответил тебе Артур и добавил:'
			'- Тогда нэ забывай инагда прихадить ка мнэ в гости, а сейчас пойдем шашлык кушать, чачу пить? схватив тебя за попу сухо предложил Артур.'

			act 'Идти с Артуром':gt'arturHome'
			act 'Уйти':gt'Grinok'
		end
	else
		cls
		gs'stat'

		'Артур дружелюбно улыбнулся вам и протянул мандаринку. "Пойдем шашлык кушать, чачу пить!"'

		act 'Идти с Артуром':gt'arturHome'
		act 'Уйти':gt'Grinok'
	end
end

if $ARGS[0] = 'arturQW_2':
	cls
	minut += 10
	money += 5000
	gs'stat'

	'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
	'-Светка, ты мое сокровище, благодаря тэбе наши прадажи увеличились в два раза, всегда, говорил, что за прилавок нужно усадить сексуальную девушку.'
	'-Спасибо Артурчик, но мне надоело торчать за прилавком, я думаю уже о прекращении работать у тебя.'
	'-Что? Вот черт, так и думал. Ладна, ладна, такая девушка как ты должна иметь более достойное место.'
	'Пойдешь у меня на повышение, я уволю мою бухгалтершу, эту старую каргу, теперь ты вступаешь на эту должность.'
	'Будешь получать в два раза большэ, но должна приходить каждый день в 16.00, иначе уволю, не смотря на твою упругую попку.'

	act 'Согласиться':
		cls
		minut += 5
		if arturQW = 1:arturQW = 2
		gs'stat'

		'<center><img src="images/qwest/alter/arturQW/arturQW_5.jpg"></center>'
		'-Это меняет все, теперь я согласна работать у тебя еще.'
		'-Канечно согласишся, теперь только будэшь крутить раз в день попой и получать у меня огромные бабки.'
		'-Иди сюда красавица, пойдем шашлык кушать, чачу пить, схватив грубо тебя за попу предложил Артур.'

		act 'Идти с Артуром':gt'arturHome'
	end
	act 'Отказаться':
		cls
		minut += 5
		gs'stat'

		'<center><img src="images/qwest/alter/arturQW/arturQW_2.jpg"></center>'
		'-Спасибо Артурчик за заманчивое предложение, но у меня и так много дел, учеба, танцы, волейбол, и так не успеваю жить.'
		'-Как хочеш красавица, мое дело предлажить, с грустью на лице ответил тебе Артур и добавил:'
		'-Тогда нэ забывай инагда прихадить ка мнэ в гости, а сейчас пойдем шашлык кушать, чачу пить? схватив тебя за попу сухо предложил Артур.'

		act 'Идти с Артуром':gt'arturHome'
		act 'Уйти':gt'Grinok'
	end
end
--- arturQW ---------------------------------

