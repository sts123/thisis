# katalkinSex
$d_katanal = {
	act 'Далее':
		cls
		horny += 5
		minut += 15
		if katalkinSexOnce = 0:katalkinSexOnce = 1 & guy += 1
		KatalkinAnal += 1
		sub += 1
		gs'stat'

		'<center><img src="images/qwest/vokzal/kat/katAnal.jpg"></center>'
		'Капитан разделся и встал за вашей спиной, его рука звонко шлепнула вам по обнаженной заднице. Вы даже ойкнули от неожиданности.'

		dynamic $analsex2

		act 'Далее':
			cls
			minut += 3
			anal += 1
			cumanus += 1
			gs'stat'

			'<center><img src="images/qwest/vokzal/kat/after.jpg"></center>'
			'Внезапно капитан схватил ваши ягодицы крепче и застонал на вас. Вы почувствовали как в вашу попу заливает что то теплое. Капитан наконец слез с вас и стал одеваться.'

			act 'Приводить себя в порядок':minut += 1 & gt'katalkin'
		end
	end
}

$d_katsub = {
	act 'Закрыть глаза':
		cls
		horny += 5
		minut += 3
		gs'stat'

		'<center><img src="images/qwest/vokzal/kat/bend.jpg"></center>'
		'Вы откинулись назад закрыв глаза и стараясь насладится ощущениями. Внезапно капитан разворачивает вас спиной к себе и наклоняет.'

		act 'Стоять наклонившись':
			cls
			horny += 5
			minut += 3
			gs'stat'

			'<center><img src="images/qwest/vokzal/kat/grop.jpg"></center>'
			'Вы уперлись руками в стену, что бы не упасть и капитан задрал вам юбку и стянул трусы. Вы почувствовали как его пальцы стали массировать вашу попку. Он прошипел вам "Раздевайся и вставай раком"'

			act 'Раздеться и встать раком':
				cls
				horny += 5
				minut += 3
				gs'stat'

				'<center><img src="images/qwest/vokzal/kat/katBeforeAnal.jpg"></center>'

				kattiperand = RAND(0,1)
				if kattiperand = 0:
					'Вы быстро разделись и встали раком перед капитаном. "Раздвинь булки" сказал вам капитан тоном не терпящим возражения и вы послушно раздвинули свои полужопия показав дырочку. Каталкин надавил пальцем на колечко ануса и лихорадочно прошептал "Лучше я тебя в жопу оттрахаю. Не хочу, что бы ты залетела от меня."'

					dynamic $d_katanal
				elseif kattiperand = 1:
					'Вы быстро разделись и встали раком перед капитаном. "Раздвинь булки" сказал вам капитан тоном не терпящим возражения и вы послушно раздвинули свои полужопия показав дырочку. Каталкин спросил лихорадочным шепотом "У тебя есть гандоны?"'

					act 'Нет':
						cls
						gs'stat'

						'<center><img src="images/qwest/vokzal/kat/katBeforeAnal.jpg"></center>'
						'Вы сказали Капитану, что у вас нет гандонов, на что Каталкин ответил "Тогда буду ебать тебя в жопу."'

						dynamic $d_katanal
					end

					if prezik > 0:
						act 'Есть':
							cls
							pose = 1
							gs'stat'

							'<center><img src="images/qwest/vokzal/kat/sex.jpg"></center>'

							dynamic $sexudo
							dynamic $sexcum

							act 'Приводить себя в порядок':minut += 1 & gt'katalkin'
						end
					end
				end
			end
		end
	end
}

$boy = 'Каталкин'
dick = 18
silavag = 0
horny += 10
schtraf = 0
katalkinNoexit = 0
katalkinSexDay = daystart
gs'stat'

if katsexetap = 0:
	'<center><img src="images/qwest/vokzal/kat/kat.jpg"></center>'
	'Руки капитана полиции шарят по вашему телу стараясь добраться до вашей груди и задницы.'

	act 'Убирать его руки':
		cls
		gs'stat'

		'<center><img src="images/qwest/vokzal/kat/kat.jpg"></center>'
		'Вы стали убирать его руки "Ну не сейчас, я не хочу, голова болит, у меня месячные." начали отмазываться вы, но капитан похоже вас вовсе не слушал и вовсю продолжал раздевать вас.'

		act 'Гладить его ширинку':katsexetap = 1 & gt $curloc

		dynamic $d_katsub
	end

	dynamic $d_katsub

	if horny >= 75:
		act 'Обнимать его':
			cls
			horny += 5
			gs'stat'

			'<center><img src="images/qwest/vokzal/kat/kat.jpg"></center>'
			'Вы обняли капитана полиции руками и поцеловали его.'

			act 'Гладить его ширинку':katsexetap = 1 & gt $curloc

			dynamic $d_katsub
		end
	end
elseif katsexetap = 1:
	'Вы начали гладить ширинку форменных брюк полицейского и почувствовали как там окреп и затвердел его член.'

	act 'Встать на колени':
		cls
		if katalkinSexOnce = 0:katalkinSexOnce = 1 & guy += 1
		gs'stat'

		'<center><img src="images/qwest/vokzal/kat/kneel.jpg"></center>'
		'Вы встали перед полицейским на колени и достали его член из штанов.'

		act 'Сосать':
			cls
			bj += 1
			gs'stat'

			'<center><img src="images/qwest/vokzal/kat/bj.jpg"></center>'

			dynamic $dinrandbj

			kattiperand = RAND(0,1)
			if kattiperand = 0:
				act 'Глотать кончу':
					cls
					swallow += 1
					cumlip += 1
					KatalkinSwallow += 1
					gs'stat'

					'<center><img src="images/qwest/vokzal/kat/swallow.jpg"></center>'

					dynamic $dinrandswallow

					act 'Приводить себя в порядок':minut += 1 & gt'katalkin'
				end
				act 'На лицо':
					cls
					facial += 1
					cumface += 1
					KatalkinFacial += 1
					gs'stat'

					'<center><img src="images/qwest/vokzal/kat/facial.jpg"></center>'
					'Вы вынули член изо рта и вам тут же в лицо брызнула теплая и едко пахнущая сперма.'

					act 'Приводить себя в порядок':minut += 1 & gt'katalkin'
				end
			elseif kattiperand = 1:
				'Внезапно Каталкин достает свой член из вашего рта и взяв вас за плечи поднимает с колен на ноги.'

				dynamic $d_katsub
			end
		end
	end
end
--- katalkinSex ---------------------------------

