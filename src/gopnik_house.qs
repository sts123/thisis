# gopnik_house
gs'stat'

if gophouse = 0:
	'Вы сидите в грязной квартире с ветхими обоями на шатком стуле за столом. Так же за столом сидят <<$kol_man_text>> выпивая и закусывая.'

	if alko < 6:
		'Вы почувствовали, что сильно напились, но все еще способны соображать.'
	elseif alko >= 6:
		'Вы почувствовали как начала кружиться голова и земля стала уходить из под ног.'
	end

	'Парочка парней подхватывают вас и тащат в комнату, там вас укладывают на диван.'

	act 'Далее':
		rape += 1
		gang += 1
		gophouse = 1
		minut += 5
		silavag = 0
		$boy = 'Гопник'
		guy += kol_man
		ciklkm = kol_man
		if gophouserapeQW = 0:gophouserapeQW = 1
		gt $curloc
	end
elseif gophouse = 1:
	'<center><img src="images/qwest/alter/placer/podval.jpg"></center>'

	:markgophouserape
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
	if ciklkm > 0:jump'markgophouserape'

	'Наконец все это кончилось, вы почувствовали как кто то застегивает вам одежду и вас опять куда то тащат.'

	act 'Осмотреться':gophouse = 0 & gt'gorodok'
end
--- gopnik_house ---------------------------------

