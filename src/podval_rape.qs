# podval_rape
gs'stat'

if podvalrape = 0:
	'Вы лежите на грязном матраце в полу темном подвале пахнущем канализацией, в окружении пустых бутылок. Вокруг вас стоят <<$kol_man_text>> и обсуждают между собой "Ну что поцики, тянем жребий, кто первый дерет эту шалаву?"'

	act 'Далее':
		rape += 1
		gang += 1
		podvalrape = 1
		sweat += 1
		minut += 5
		silavag = 0
		$boy = 'Гопник'
		guy += kol_man
		ciklkm = kol_man
		if podvalrapeQW = 0:podvalrapeQW = 1
		gt $curloc
	end
elseif podvalrape = 1:
	'<center><img src="images/qwest/alter/placer/podval.jpg"></center>'

	:markpodvalrape
	ciklkm -= 1
	minut += 15
	dick = RAND(12,20)

	tiprand = RAND(0,2)
	if tiprand < 2:
		dynamic $sexstart2
		dynamic $sexcum
	elseif tiprand = 2:
		dynamic $analsexrude
	end

	if ciklkm > 0:'Затем место между ваших ног занял следующий парень.'
	gs'stat'
	if ciklkm > 0:jump'markpodvalrape'

	'Наконец все это кончилось, парни оделись и вышли из подвала.'

	act 'Уйти':podvalrape = 0 & gt'gorodok'
end
--- podval_rape ---------------------------------

