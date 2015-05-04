# fitgirl
$dintaniastart = {
	if dom > 10:
		act 'Приставать':
			cla
			*clr
			tanday = day
			gs'stat'

			'<center><img src="images/img/centr/razd1.jpg"></center>'
			'Вы подходите к девушке и схватив одной рукой за ягодицу разворачиваете лицом к себе'

			if vnesh < 20:
				'Девушка отталкивает вас, и прокричав что-то о вас и всех ваших родственниках, уходит из раздевалки'

				act '...':gt'fit','razd'
			elseif vnesh >= 20:
				'Девушка всхватила вашу руку сжимающую ее зад, но замерла на секунду рассматривая вас, она вероятно ожидала увидеть мужика а никак ни девушку.'

				act 'Воспользоваться замешательством':
					cla
					*clr
					gs'stat'

					'<center><img src="images/img/centr/razd2.jpg"></center>'
					'Пока она пыталась понять что происходит вы задрали ей футболку и начали ласкать языком её соски, и вот уже её рука гладит ваши ягодицы'

					act 'Дальше':tanznak = 1 & gt'lezbsex','start'
				end
				act 'Ждать её реакции':
					cls
					gs'stat'

					if vnesh < 30:
						'Девушка улыбается вам, но убирает вашу руку, и уходит, послав вам воздушный поцелуй.'

						act '...':gt'fit','razd'
					elseif vnesh >= 30:
						cla
						*clr
						'<center><img src="images/img/centr/razd3.jpg"></center>'
						'Девушка прижимается к вам еще сильнее и целует ваши губы.'

						act 'Дальше':
							tanznak = 1
							gt'lezbsex','start'
						end
					end
				end
			end
		end
	end
}

gs'stat'

'Девушка замечает ваш взгляд и улыбнувшись отворачивается. Девушка раздевается и взяв туалетные принадлежности идет в душ.'

act 'Отвернуться':gt'fit','razd'
act 'Идти в душ следом за девушкой':
	cls
	minut = minut + 15
	sweat = -3
	horny = horny + 1
	hapri = 0
	mop = 1

	dynamic $showerdin

	shovertania += 1
	gs'stat'

	'<center><img src="images/pics/dush.jpg"></center>'
	'Вы вошли в душевую. Там никого нет, кроме этой девушки. Девушка оглянулась и увидев вас опять улыбнувшись отвернулась.'

	dynamic $dintaniastart

	act 'Выйти из душа':gt'fit','razd'
end
--- fitgirl ---------------------------------

