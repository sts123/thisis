# pirat
gs'stat'

if piratfrend < 10:
	'<center><img src="images/qwest/gadukino/pirat.jpg"></center>'
	'Беспородный пес по кличке Пират равнодушно сидит возле сарая.'
elseif piratfrend >= 10:
	'<center><img src="images/qwest/gadukino/pirat.jpg"></center>'

	if piratHorny < 10:
		'Беспородный пес по кличке Пират виляет хвостом при вашем появлении.'
	elseif piratHorny >= 10 and piratHorny < 20:
		if piratsuka < 3:'Беспородный пес по кличке Пират крутится вокруг вас виляя хвостом и принюхиваясь.'
		if piratsuka >= 3:'<center><img src="images/qwest/gadukino/sniff.jpg"></center>'
		if piratsuka >= 3:'Беспородный пес по кличке Пират крутится вокруг вас виляя хвостом и тыкается носом вам между ног.'
	elseif piratHorny >= 20:
		pirand = RAND(0,1)
		if piratsuka < 3 or piratsuka >= 3 and pirand = 0:
			'Беспородный пес по кличке Пират набрасывается на вашу ногу и трется об нее.'

			act 'Оттолкнуть Пирата':
				cls
				piratHorny -= 1
				minut += 15
				dom += 1
				gs'stat'

				!'<center><img src="images/qwest/gadukino/dog.jpg"></center>'
				'Вы оттолкнули Пирата сбросив его с ноги.'

				act 'Уйти':gt $curloc
			end
			act 'Терпеть':
				cls
				piratHorny = 0
				minut += 15
				manna = manna/2
				piratsuka += 1
				sub += 1
				gs'stat'

				'<center><img src="images/qwest/gadukino/leghump.jpg"></center>'
				'Вы стояли не двигаясь пока Пират терся об вашу ногу. Вдруг на нее полилась какая то горячая белая жидкость, Пират тут же отскочил в сторону и стал чесаться как не в чем не бывало.'

				act 'Уйти':gt $curloc
			end
		elseif piratsuka >= 3 and pirand = 1:
			'Беспородный пес по кличке Пират встает на задние лапы и кладет свои передние лапы вам на плечи. Вы чувствуете как вам в попу упирается словно шило член Пирата.'

			act 'Оттолкнуть Пирата':
				cls
				piratHorny -= 1
				minut += 15
				dom += 1
				gs'stat'

				!'<center><img src="images/qwest/gadukino/dog.jpg"></center>'
				'Вы оттолкнули Пирата сбросив его со своей спины.'

				act 'Уйти':gt $curloc
			end
			act 'Стоять':
				cls
				!piratHorny = 0
				minut += 15
				manna = manna/2
				piratsuka += 1
				sub += 1
				!cumfrot += 1
				gs'stat'

				!'<center><img src="images/qwest/gadukino/dog.jpg"></center>'
				'Вы замерли на месте и Пират стал усиленно тыкаться своим членом вам в попу. Пират злится и рыча спрыгивает с вас'

				act 'Уйти':gt $curloc
			end
			act 'Встать на четвереньки':
				cls
				piratHorny = 0
				minut += 15
				manna = manna/2
				piratsuka += 3
				sub += 5
				cumfrot += 1
				gs'stat'

				'<center><img src="images/qwest/gadukino/hump.jpg"></center>'
				'Вы встали на четвереньки подставив попу псине и Пират стал усиленно тыкаться своим членом вам в попу. Вскоре сквозь одежду вы почувствовали что то мокрое и Пират спрыгнул с вас и стал чесаться как ни в чем не бывало.'

				act 'Уйти':gt $curloc
			end
		end

		exit
	end
end

act 'Уйти':minut += 5 & gt $loc

act 'Погладить Пирата':
	cls
	if piratfrend < 10:piratfrend += 1
	minut += 15
	if piratsuka > 0:piratHorny += 1
	gs'stat'

	'<center><img src="images/qwest/gadukino/dog.jpg"></center>'
	'Вы погладили Пирата по спине.'

	act 'Уйти':gt $curloc
end
--- pirat ---------------------------------

