# mitka
gs'stat'

'<center><b><font color = maroon>Митька Шкворень</font></b></center>'
'<center><img src="images/qwest/alter/npc/mitka.jpg"></center>'
'Деревенский парень едва старше вас, вы его знаете с детства и будучи еще детьми вместе купались на реке.'

if mitkaday = daystart:
	'Ну чо Светуха, заходи в восемь вечера, бухнем самогонки, попиздим за жизнь.'
elseif mitkaday ! daystart:
	mitkaday = daystart

	'Привет Светуха. Как житуха?'

	act 'Нормально':
		cls
		gs'stat'

		'<center><b><font color = maroon>Митька Шкворень</font></b></center>'
		'<center><img src="images/qwest/alter/npc/mitka.jpg"></center>'
		'Вы ответили что у вас все нормально и Митька улыбнувшись предложил "Ну чо Светуха, заходи в восемь вечера, бухнем самогонки, попиздим за жизнь."'

		if mitkasextimes > 0:
			'Митька почесал яйца и добавил с ухмылкой "Светух, пойдем сейчас поебемся, а то стояк заеб."'

			act 'Пойдем':
				cls
				minut += 15
				if mitkasex = 0:mitkasex = 1 & guy += 1
				$boy = 'Митька'
				silavag = 0
				dick = 18
				pose = 0
				mitkasextimes += 1
				gs'stat'

				'<center><img src="images/qwest/gadukino/mitka2.jpg"></center>'
				'Митька отвел вас к своему дому и привел на веранду, там он уложил вас на диване и стал бесцеремонно раздевать.'

				dynamic $sexstart
				dynamic $sexstart2
				dynamic $sexcum

				'Митяй, лег на бок и закурил "Охуенно!"'

				act 'Уйти':gt'Gaddvor'
			end
		end

		act 'Уйти':gt'Gaddvor'
	end
end

act 'Уйти':gt'Gaddvor'
--- mitka ---------------------------------

