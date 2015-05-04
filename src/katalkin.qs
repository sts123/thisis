# katalkin
gs'stat'

if hour >= 8:'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
'Маленький закуток в котором сидят полицейские.'

if hour >= 8 and hour < 22:
	'Капитан Каталкин занимается делами.'

	if katalkinSexDay < daystart and katalkinSexOnce = 1:
		if schtraf = 0:
			'Каталкин смотрит на вас с интересом "Присаживайся Света. Может чайку?"'

			act 'Пить чай':
				cls
				minut += 5
				katalkinNoexit = 0
				gs'stat'

				'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
				'Вы сели за стол и Каталкин налил вам чаю. Сам же капитан сел рядом с вами и тоже стал пить чай. Он практически обшаривает ваше тело своими похотливыми глазами. Капитан шепчет вам хватая вас за ляжки "Ну что Светка, может развлечемся?"'

				act 'Положить ему руку на ширинку':katsexetap = 1 & gt'katalkinSex'
				act 'Не двигаться':katsexetap = 0 & gt'katalkinSex'
			end
		elseif schtraf > 0:
			'Капитан Каталкин улыбается вам "Ну что Светка, штраф заплатишь или его отработаешь?"'

			if money >= schtraf:
				act 'Заплатить штраф':
					cls
					money -= schtraf
					schtraf = 0
					katalkinNoexit = 0
					gs'stat'

					'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
					'Вы заплатили штраф полицейскому. Он забрал деньги и тут же потерял интерес к вам.'

					act 'Уйти':minut += 1 & gt'vokzalGin'
				end
			end

			act 'Отработаю':katsexetap = 0 & gt'katalkinSex'
		end
	elseif katalkinSexDay = daystart and katalkinSexOnce = 1:
		if schtraf = 0:
			'Каталкин сидит в своих бумагах и что то пишет.'
		elseif schtraf > 0:
			'Каталкин ухмыляется "Я думаю ты сполна отработала свой штраф."'

			act 'До свидания':
				cls
				schtraf = 0
				katalkinNoexit = 0
				gs'stat'

				'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
				'Вы попрощались с полицейским, он кивнул вам "Ну давай, иди, а то у меня еще много работы".'

				act 'Уйти':minut += 1 & gt $curloc
			end
		end
	elseif katalkinSexOnce = 0:
		if schtraf = 0:
			'Каталкин смотрит на вас с интересом "Присаживайтесь. Может чайку?"'

			act 'Пить чай':
				cls
				minut += 5
				katalkinNoexit = 0
				gs'stat'

				'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
				'Вы сели за стол и Каталкин налил вам чаю. Сам же капитан сел рядом с вами и тоже стал пить чай. Он практически обшаривает ваше тело своими похотливыми глазами. И вдруг вы чувствуете как капитан положил вам свою руку на ногу и немного сжав ее начал лихорадочно бормотать приближая свое лицо к вашему. "Ты симпатичная, мы полицейские тоже люди."'

				act 'Уйти':minut += 1 & gt $curloc
				act 'Не двигаться':katsexetap = 0 & gt'katalkinSex'
			end
		elseif schtraf > 0:
			'Капитан Каталкин повернулся к вам и сказал "Вобщем с тебя штраф <<schtraf>> рублей и можешь идти."'

			if money >= schtraf:
				act 'Заплатить штраф':
					cls
					money -= schtraf
					schtraf = 0
					katalkinNoexit = 0
					gs'stat'

					'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
					'Вы заплатили штраф полицейскому. Он забрал деньги и тут же потерял интерес к вам.'

					act 'Уйти':minut += 1 & gt'vokzalGin'
				end
			else
				act 'У меня нет денег':
					cls
					money = 0
					schtraf = 0
					katalkinNoexit = 0
					kutime = 24
					gs'stat'

					'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
					'Полицейский обыскал вас, и забрал ценности. Он нахмурился и сказал "Посидишь тогда сутки в кутузке."'

					act 'В кутузку':gt'kutuzka'
				end
			end

			act 'Упрашивать':
				cls
				gs'stat'

				'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
				'Вы начали упрашивать капитана полиции не наказывать вас. Он оглядел пустой кабинет и затем повернул свое лицо к вам. "Ну может быть мы могли бы что нибудь придумать." Его взгляд скользнул по вашей фигуре и его потная рука легла вам на коленку.'

				if money >= schtraf:
					'Вы подумали про себя, может ну на фиг этого капитана, явно он что то задумал. Денег у меня хватит на штраф.'

					act 'Заплатить штраф':
						cls
						money -= schtraf
						schtraf = 0
						katalkinNoexit = 0
						gs'stat'

						'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
						'Вы заплатили штраф полицейскому. Он забрал деньги и тут же потерял интерес к вам.'

						act 'Уйти':minut += 1 & gt'vokzalGin'
					end
				elseif money < schtraf:
					'Вы про себя подумали, что выхода то у вас нет. Как нет и нужной суммы для уплаты штрафа.'
				end

				act 'Улыбнуться ему':katsexetap = 0 & gt'katalkinSex'
			end
		end
	end
elseif hour >= 22:
	'Капитан Каталкин сидит за столом на котором лежит разнообразная закуска и стоит водка. Рядом с ним сидят еще двое полицейских.'

	if katalkinSexOnce = 1:
		if katGangMeet = 0:
			'Увидев вас капитан Каталкин махнул вам рукой и пьяно сказал "Иди сюда Светка. Я тебя познакомлю с охуенными ребятами."'

			act 'Сесть за стол':
				cls
				minut += 5
				katalkinNoexit = 0
				katGangMeet = 1
				gs'stat'

				'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
				'Вы сели за стол с пьяной кампанией полицейских, вам тут же налили водки. Каталкин представил вам парней как Пашу и Сережу. "Ну что Светик, давай выпьем за знакомство."'

				act 'Выпить за знакомство':alko += 2 & minut += 5 & gt'katalkinAlko'
			end
		elseif katGangMeet > 0:
			'Увидев вас капитан Каталкин махнул вам рукой и пьяно сказал "Иди сюда Светка. Давай бухнем."'

			act 'Сесть за стол':
				cls
				minut += 5
				katalkinNoexit = 0
				gs'stat'

				'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
				'Вы сели за стол с Каталкиным и его подчиненными Пашей и Сережей. Вам тут же налили водки.'

				act 'Выпить рюмку':alko += 2 & minut += 5 & gt'katalkinAlko'
			end
		end
	elseif katalkinSexOnce = 0:
		'ЕСЛИ ВЫЛЕЗЛО ЭТО СООБЩЕНИЕ ТО ЭТО БАГ'

		if schtraf = 0:
			'Каталкин пьяно смотрит на вас "Давай к нам за стол! Присоединяйся, не стесняйся, тут все свои."'

			act 'Сесть за стол':
				cls
				minut += 5
				katalkinNoexit = 0
				gs'stat'

				'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
				''

				act 'Уйти':minut += 1 & gt $curloc
				act 'Не двигаться':katsexetap = 0 & gt'katalkinSex'
			end
		elseif schtraf > 0:
			'Пьяный капитан Каталкин повернулся к вам и сказал "Короче плати штраф <<schtraf>> рублей и можешь проваливать."'

			if money >= schtraf:
				act 'Заплатить штраф':
					cls
					money -= schtraf
					schtraf = 0
					katalkinNoexit = 0
					gs'stat'

					'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
					'Вы заплатили штраф полицейскому. Он забрал деньги и тут же потерял интерес к вам.'

					act 'Уйти':minut += 1 & gt'vokzalGin'
				end
			else
				act 'У меня нет денег':
					cls
					money = 0
					schtraf = 0
					katalkinNoexit = 0
					kutime = 24
					gs'stat'

					'<center><img src="images/qwest/vokzal/katalkin.jpg"></center>'
					'Полицейский обыскал вас, и забрал ценности. Он нахмурился и сказал "Посидишь тогда сутки в кутузке."'

					act 'В кутузку':gt'kutuzka'
				end
			end
		end
	end
elseif hour < 8:
	'Дверь заперта.'

	act 'Уйти':minut += 1 & gt'vokzalGin'
end

if katalkinNoexit = 0:act 'Уйти':minut += 1 & gt'vokzalGin'
--- katalkin ---------------------------------

