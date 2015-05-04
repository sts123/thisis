# mitkabuh
gs'stat'

'<center><img src="images/qwest/gadukino/drunk.jpg"></center>'
'Расположившись в укромном местечке три деревенских пацана, Митька Шкворень, Васян Пакет и Колямба пьют самогонку без всякой закуски. Митька наливает самогонки в стакан и подает вам.'

if alko < 8:
	act 'Уйти':gt'Gaddvor'
	act 'Выпить':
		cls
		minut += 30
		alko += 4
		gs'stat'

		'<center><img src="images/qwest/gadukino/drunk.jpg"></center>'
		'Вы выпили самогонку и внутри все обожгло, задохнувшись вы стали занюхивать рукавом, так как закуски не было. Митька одобрительно сказал "Хороша зараза, продирает."'

		act 'Отдышаться':gt $curloc
	end
elseif alko >= 8:
	'Вы напились в хлам, ноги уже практически не держат вас. Митька заметив ваше состояние удерживает вас за талию. "Ну чо Светуха, пойдем ебатся?"'

	act 'Нечленораздельно мычать':
		cls
		minut += 15
		if mitkasex = 0:mitkasex = 1 & guy += 1
		$boy = 'Митька'
		silavag = 0
		dick = 18
		pose = 0
		mitkasextimes += 1
		gs'stat'

		'<center><img src="images/qwest/gadukino/mitka.jpg"></center>'
		'Митька отвел вас к своему дому и привел на веранду, там он уложил вас на диване и стал бесцеремонно раздевать.'

		dynamic $sexstart
		dynamic $sexstart2
		dynamic $sexcum

		'Митяй, лег на бок и закурил "Охуенно!"'

		act 'Уйти':gt'Gaddvor'
	end
end
--- mitkabuh ---------------------------------

