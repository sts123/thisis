# seeporn
gs'stat'

'Вместе с пацанами вы пришли к Мишке и он включил видик, по которому тут же стала показывать порнуха.'

act 'Смотреть':
	cls
	minut += 15
	seepornofut += 1
	horny += (seepornofut+mastr)*2
	gs'stat'

	if seepornofut < 3:
		'Пацаны разглядывая происходящее в экране явно не в своей тарелке и стесняясь стреляют глазами в вас.'
	elseif seepornofut >= 3 and seepornofut < 10:
		'Пацаны уже привыкли к вам и смотрят порнуху не стесняясь, иногда даже комментируя происходящее.'
	elseif seepornofut >= 10:
		'Пацаны напряженно смотрят порнуху, вы замечаете, что у всех вздыбились ширинки.'

		evgenrand = RAND(0,1)
		if evgenQW = 4:
			cls
			boyseeporn += 1
			gs'stat'

			'Пацаны напряженно смотрят порнуху, вы замечаете, что у всех вздыбились ширинки. Жендос предлагает "Светик, как насчет поработать ротиком?"'

			act 'Молчать':
				cls
				bj += 3
				sub += 5
				gang += 1
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/seepornblowbang.jpg"></center>'
				'Жендос достал член из штанов и подтянул ваше лицо к своему члену, вы покорно обхватили его губами и начали сосать. Ваш брат Колька и Мишка тоже достали члены и сунули их вам к лицу, вы начали дрочить и сосать члены.'

				act 'Сосать':
					cls
					cumface += 3
					cumlip += 2
					cumfrot += 1
					gs'stat'

					'<center><img src="images/qwest/alter/ev2/seepornbbcum.jpg"></center>'
					'Пацаны не продержались долго и стали кончать вам на лицо покрывая его слоем спермы, вскоре практически все ваше лицо было покрыто слоем пахучей слизи и часть спермы даже попала вам на одежду.'

					act 'Уйти':gt'gorodok'
				end
			end

			if dom > boyseeporn*2:
				act 'Отвали':
					cls
					dom += 1
					gs'stat'

					!'<center><img src="images/qwest/alter/ev2/seepornHand.jpg"></center>'
					'Вы с негодованием отвергли предложение пацанов.'

					act 'Уйти':gt'gorodok'
				end
			end

			exit
		elseif evgenQW = 3:
			cls
			gs'stat'

			'<center><img src="images/qwest/alter/ev2/seeporn.jpg"></center>'
			'Пацаны напряженно смотрят порнуху, вы замечаете, что у всех вздыбились ширинки. Жендос вдруг берет вашу руку и кладет себе на пах, точно так же поступает и Мишка. Ваш брат Колька нервно усмехнулся. А Мишка сказал вам заговорщицки "Светик, вздрочни нам."'

			act 'Дрочить пацанам':
				cls
				if MihJenSex = 0:MihJenSex = 1 & guy += 2
				hj += 2
				boyseeporn += 1
				sub += 1
				gs'stat'
				!brotherrand = RAND(3,10)

				if boyseeporn < 2:
					'<center><img src="images/qwest/alter/ev2/seepornHJ.jpg"></center>'
					'Вы плавно двигаете кожицу на обоих членах своими ручками, Жендос быстро застонал и из его члена вылетела струя спермы вам на ногу, тут же к нему присоединился Мишаня и тоже кончил вам на ногу.'

					act 'Возмущаться':
						cls
						cumfrot += 2
						gs'stat'

						'<center><img src="images/qwest/alter/ev2/seeporncumhj.jpg"></center>'
						'Вы возмутились "Посмотрите придурки, вы всю меня перемазали!" Но пацаны блаженно развалились на диване "Классные у тебя ладошки Светик, такие маленькие, мягкие и теплые."'

						act 'Уйти':gt'gorodok'
					end
				elseif boyseeporn >= 2:
					bj += 1
					evgenQW = 4

					'<center><img src="images/qwest/alter/ev2/seepornfirst.jpg"></center>'
					'Вы плавно двигаете кожицу на обоих членах своими ручками, ваш брат Колька не выдержал и со сдавленным стоном вставил вам свой член в рот. У вас округлились глаза от такого поворота событий. Жендос быстро застонал и из его члена вылетела струя спермы вам на ногу, тут же к нему присоединился Мишаня и тоже кончил вам на ногу.'

					act 'Офигеть':
						cls
						cumfrot += 2
						cumface += 1
						facial += 1
						if brotherSex = 0:brotherSex = 1 & guy += 1
						gs'stat'

						'<center><img src="images/qwest/alter/ev2/seepornfacial.jpg"></center>'
						'Внезапно ваш братик вынул член из вашего рта и струя горячей спермы хлестнула вам по лицу. Мишаня засмеялся "Колямба, ты только что оттрахал в рот свою сестренку. Охренеть" Коля утирая пот со лба сдавленно сказал "Да я блять сам не верю, что Светка такая шалава. Вот и не утерпел."'

						act 'Уйти':gt'gorodok'
					end
				end

				if dom > boyseeporn*2:
					act 'Убрать руки':
						cls
						dom += 1
						gs'stat'

						!'<center><img src="images/qwest/alter/ev2/seepornHand.jpg"></center>'
						'Вы с негодованием убираете руки и орете возмущенно на пацанов.'

						act 'Уйти':gt'gorodok'
					end
				end

				exit

				cls
				dom += 1
				gs'stat'
				!'<center><img src="images/qwest/alter/ev2/seepornHand.jpg"></center>'
				'Вы с негодованием убираете руки и орете возмущенно на пацанов.'

				act 'Уйти':gt'gorodok'
			end

			exit
		elseif evgenQW = 2 and evgenrand = 0:
			cls
			gs'stat'

			'<center><img src="images/qwest/alter/ev2/seeporn.jpg"></center>'
			'Пацаны напряженно смотрят порнуху, вы замечаете, что у всех вздыбились ширинки. Жендос вдруг берет вашу руку и кладет себе на пах, точно так же поступает и Мишка. Ваш брат Колька нервно усмехнулся. А Мишка сказал вам заговорщицки "Светик, вздрочни нам."'

			act 'Да вы охуели!!!':
				cls
				gs'stat'

				'<center><img src="images/qwest/alter/ev2/seeporn.jpg"></center>'
				'Вы возмутились действиям пацанов. На что Мишка сказал "Да ладно тебе, ты же девушка, к тому же ничего такого в этом нет, просто передернешь нам затвор по дружески."'

				if horny >= 70:
					act 'Дрочить пацанам':
						cls
						hj += 2
						if MihJenSex = 0:MihJenSex = 1 & guy += 2
						evgenQW = 3
						gs'stat'

						'<center><img src="images/qwest/alter/ev2/seepornHJ.jpg"></center>'
						'Вы плавно двигаете кожицу на обоих членах своими ручками, Жендос быстро застонал и из его члена вылетела струя спермы вам на ногу, тут же к нему присоединился Мишаня и тоже кончил вам на ногу.'

						act 'Возмущаться':
							cls
							cumfrot += 2
							gs'stat'

							'<center><img src="images/qwest/alter/ev2/seeporncumhj.jpg"></center>'
							'Вы возмутились "Посмотрите придурки, вы всю меня перемазали!" Но пацаны блаженно развалились на диване "Классные у тебя ладошки Светик, такие маленькие, мягкие и теплые."'

							act 'Уйти':gt'gorodok'
						end
					end
				elseif horny < 70:
					act 'Убрать руки':
						cls
						dom += 1
						gs'stat'

						!'<center><img src="images/qwest/alter/ev2/seepornHand.jpg"></center>'
						'Вы с негодованием убираете руки и орете возмущенно на пацанов.'

						act 'Уйти':gt'gorodok'
					end
				end
			end

			exit
		elseif evgenQW = 1 and evgenrand = 0:
			cls
			horny += 10
			gs'stat'

			'Пацаны напряженно смотрят порнуху, вы замечаете, что у всех вздыбились ширинки.'
			'Вы чувствуете как рука Жендоса как бы случайно гладит вашу попу.'

			if horny < 70:
				act 'Убрать его руки':
					cls
					dom += 1
					gs'stat'

					!'<center><img src="images/qwest/alter/ev2/seepornHand.jpg"></center>'
					'Вы с негодованием убираете руки Жендоса от своей попы.'

					act 'Уйти':gt'gorodok'
				end
			elseif horny >= 70:
				act 'Делать вид что ничего не происходит':
					cls
					sub += 1
					evgenQW = 2
					gs'stat'

					!'<center><img src="images/qwest/alter/ev2/seepornHand.jpg"></center>'
					'Вы сидите на диване красная как рак наслаждаясь приятными прикосновениями к своей попе.'

					act 'Уйти':gt'gorodok'
				end
			end

			exit
		elseif evgenQW = 0 and evgenrand = 0:
			cls
			gs'stat'

			'Пацаны напряженно смотрят порнуху, вы замечаете, что у всех вздыбились ширинки.'
			'Жендос глядя на порнуху спрашивает у вас "А ты Свет так делала когда нибудь?"'

			if horny < 70:
				act 'Иди на хер придурок':
					cls
					dom += 1
					gs'stat'

					!'<center><img src="images/qwest/alter/ev2/seepornHand.jpg"></center>'
					'Вы послали Жендоса на хер с такими разговорчиками.'

					act 'Уйти':gt'gorodok'
				end
			elseif horny >= 70:
				act 'Промолчать':
					cls
					sub += 1
					evgenQW = 1
					gs'stat'

					!'<center><img src="images/qwest/alter/ev2/seepornHand.jpg"></center>'
					'Вы сглотнули слюну и промолчали разглядывая порнуху. Мишаня хихикнул "А Светка то как раскраснелась. Оказывается девчонкам тоже нравится порнуха."'

					act 'Уйти':gt'gorodok'
				end
			end

			exit
		end
	end

	act 'Уйти':gt'gorodok'
end
--- seeporn ---------------------------------

