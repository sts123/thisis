# kino
gs'stat'

'<center><b>Кинотеатр</b></center>'
'<center><img src="images/img/centr/kino.jpg"></center>'
'Небольшой кинотеатр, стоимость билета 300 руб.'

act 'Уйти':gt'torgcentr'

if hour >= 8 and hour <= 20:
	if money >= 300:
		act 'Смотреть кино':
			cls
			money -= 300
			minut += 60
			manna += 300
			gs'stat'

			kinorand = RAND(0,9)
			if kinorand = 9:
				'В зале пусто, только рядом с вами сидит один парень.'

				act 'Досмотреть фильм':minut += 60 & gt'kino'
				act 'Совратить':
					cla
					*clr
					'<center><img src="images/img/centr/kino1.jpg"></center>'

					if vnesh < 15:
						'Вы оголяете грудь демонстрирую её парню, но он не обращает на вас внимания'

						act 'Уйти':gt'kino'
					elseif vnesh >= 15:
						'Вы оголяете грудь демонстрирую её парню, он явно заинтересовался и смотрит на вас в ожидая продолжения'

						act 'Куни':
							cla
							*clr
							guy += 1
							kuni += 1
							horny += 10

							'<center><img src="images/img/centr/kino2.jpg"></center>'
							'Вы задираете ноги и просите его полизать, парень быстро опустился на колени и начал вылизывать вас.'

							act 'Уйти':DOM += 1 & gt'kino'
							act 'Минет':gt'kino','sex'
						end

						act 'Минет':gt'kino','sex'
					end
				end

				exit
			end

			minut += 60
			gs'stat'

			'Вы посмотрели фильм'

			act 'Уйти':gt'kino'
		end
	end
else
	'Кинотеатр закрыт.'
end

if $ARGS[0] = 'sex':
	cla
	*clr
	bj += 1

	'<center><img src="images/img/centr/kino3.jpg"></center>'
	'Вы обхватили его возбужденный пенис губами и начали сосать одновременно играя рукой с его яйцами. Вскоре вы почувствовали что он вот вот кончит.'

	act 'Сосать':
		cla
		'Вы продолжили сосать и парень разрядился вам в рот наполняя его теплой вязкой жидкостью.'

		act 'Уйти':cumlip += 1 & gt'kino'
	end
	act 'Дать':
		cla
		*clr
		sex += 1
		horny += 50

		'<center><img src="images/img/centr/kino4.jpg"></center>'
		'Вы встаете коленями на кресло, повернувшись к парню задом и призывно покачиваете задницей, он не заставил себя ждать и быстро вошел вам в вагину, через несколько секунд он застонал и кончил в вас, оставив вас неудовлетворенной.'

		act 'Уйти':cumpussy += 1 & gt'kino'
	end
end
--- kino ---------------------------------

