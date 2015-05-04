# family
if day ! m_day:
	m_day = day
	father_go = RAND(0,1)
	mother_go = RAND(0,1)
end

indorf = 0

if indorf_month ! month:
	!раз в месяц
	indorf_month = month
	dostupindorf = 1
end

if week = 1 and dostupindorf = 1:
	dostupindorf = 0
end

if week = 6 and hour >= 12 and dostupindorf = 1:
	!едут в деревню
	indorf = 1
	father_go = 0
	mother_go = 0
end

if week = 7 and hour < 20 and dostupindorf = 1:
	!едут в деревню
	indorf = 1
	father_go = 0
	mother_go = 0
end

if indorf = 1 and sister_opr_indorf = 0:
	sister_opr_indorf = 1
	sister_indorf = RAND(0,1)
end

if indorf = 0:
	sister_opr_indorf = 0
	sister_indorf = 0
end

if sister_indorf = 1:sisterHere = 0
''
''

if StoryLine > 0:
	if sister_indorf = 0:
		if $loc = 'bedrPar':
			sisterHere = 0

			if hour < 7:
				sisterHere = 1
				'Ваша сестра <a href="exec:GT ''sistersleep''">Аня</a> спит в кровати.'
			end
			if week < 6:
				if hour = 7:
					sisterHere = 2
					'Ваша сестра <a href="exec:GT ''sistersobir''">Аня</a> собирается на работу.'
				end
			end
			if week >= 6:
				if hour >= 7 and hour < 10:
					sisterHere = 1
					'Ваша сестра <a href="exec:GT ''sistersleep''">Аня</a> спит в кровати.'
				end
				if hour = 10:
					sisterHere = 2
					'Ваша сестра <a href="exec:GT ''sisterprogulka''">Аня</a> собирается на прогулку.'
				end
			end
			if hour >= 18:
				sisterHere = 2
				'Ваша сестра <a href="exec:GT ''sister''">Аня</a> сидит на кровати и читает книгу.'
			end
		end
	end

	if indorf = 0:
		if $loc = 'bedrPar2':
			if hour < 6 or hour >= 21:
				'На кровати спит мама и отчим.'

				if hour = 21:
					parsexrand = RAND(0,5)
				end
			end

			if week < 6:
			end
			if week >= 6:
			end
		end

		if $loc = 'sitrPar':
			if hour < 7 or hour >= 21:
				'На диване спит ваш младший брат Колька.'
			end

			if week < 6:
				if father_go = 0:
					if hour >= 16 and hour < 21:
						'На диване сидит <a href="exec:GT ''father''">отчим</a> и смотрит телевизор.'
					end
				end

				if hour >= 18 and hour < 20:
					'За столом сидит ваш младший брат <a href="exec:GT ''brother''">Колька</a> и учит уроки.'
				end

				if hour = 20:
					'На диване сидит ваш младший брат <a href="exec:GT ''brother''">Колька</a> и смотрит телевизор.'
				end
			end

			if week >= 6:
				if father_go = 0:
					if hour >= 7 and hour < 21:
						'На диване сидит <a href="exec:GT ''father''">отчим</a> и смотрит телевизор.'
					end
				elseif father_go = 1:
					if hour >= 7 and hour < 16:
						'На диване сидит <a href="exec:GT ''father''">отчим</a> и смотрит телевизор.'
					end
				end

				if hour >= 18 and hour <= 20:
					'На диване сидит ваш младший брат <a href="exec:GT ''brother''">Колька</a> и смотрит телевизор.'
				end
			end
		end

		if $loc = 'kuhrPar':
			if week < 6:
				if mother_go = 0:
					if hour >= 16 and hour < 21:
						'Возле плиты стоит <a href="exec:GT ''mother''">мама</a> и что то готовит.'
					end
				elseif mother_go = 1:
					if hour >= 17 and hour < 21:
						'Возле плиты стоит <a href="exec:GT ''mother''">мама</a> и что то готовит.'
					end
				end
			end

			if week >= 6:
				if mother_go = 0:
					if hour >= 7 and hour < 21:
						'Возле плиты стоит <a href="exec:GT ''mother''">мама</a> и что то готовит.'
					end
				elseif mother_go = 1:
					if hour >= 7 and hour < 16:
						'Возле плиты стоит <a href="exec:GT ''mother''">мама</a> и что то готовит.'
					end

					if hour >= 17 and hour < 21:
						'Возле плиты стоит <a href="exec:GT ''mother''">мама</a> и что то готовит.'
					end
				end
			end
		end

		if $loc = 'korrPar':
			if week < 6:
			end
			if week >= 6:
			end
		end

		if $loc = 'vokzalG':
			if week < 6:
			end
			if week >= 6:
			end
		end

		if $loc = 'gdk':
			if week < 6:
				if hour >= 16 and hour < 18:
					'Ваша сестра <a href="exec:GT ''sister''">Аня</a> сидит в компании девчонок и парней и пьет пиво.'
				end
			end

			if week >= 6:
				if hour >= 11 and hour < 18:
					'Ваша сестра <a href="exec:GT ''sister''">Аня</a> сидит в компании девчонок и парней и пьет пиво.'
				end
			end
		end

		if $loc = 'gschool':
			if week < 6:
				if hour >= 15 and hour <= 17:
					'На футбольном поле возле школы ваш <a href="exec:GT ''brother''">брат</a> гоняет в футбол.'
				end
			end

			if week >= 6:
				if hour >= 7 and hour <= 17:
					'На футбольном поле возле школы ваш <a href="exec:GT ''brother''">брат</a> гоняет в футбол.'
				end
			end
		end
	end
end
--- family ---------------------------------

