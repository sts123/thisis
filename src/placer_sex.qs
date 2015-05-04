# placer_sex
gs'stat'

if dormrape = 0:
	'Вы лежите на скрипучей железной кровати в комнате пэтэушной общаге. Вокруг вас стоят <<$kol_man_text>> и обсуждают между собой "Ну что пацаны, кто первый трахает эту шалаву?"'

	act 'Далее':
		rape += 1
		gang += 1
		dormrape += 1
		minut += 5
		silavag = 0
		$boy = 'Парень'
		guy += kol_man
		ciklkm = kol_man
		if dormrapeQW = 0:dormrapeQW = 1
		gt $curloc
	end
elseif dormrape = 1:
	'<center><img src="images/qwest/alter/placer/podval.jpg"></center>'

	:markdormrape
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
	if ciklkm > 0 and cumbelly >= 5:cumbelly -= 4 & cumfrot += 4 & 'Один из парней начал возмущаться "Бля, пацаны, вы чо как эту шалаву заструхали? К ей же подойти стремно! Короче дайте ее шмотки, я хоть ей пиздень протру" Вы почувствовали как вам вытирают живот и натруженное влагалище какой то тканью.'
	gs'stat'
	if ciklkm > 0:jump'markdormrape'

	'Наконец все это кончилось, парни оделись и вышли из комнаты. Вы вяло начали приводить себя в порядок.'

	act 'Уйти':podvalrape = 0 & dormrape = 0 & gt'gorodok'
end
--- placer_sex ---------------------------------

