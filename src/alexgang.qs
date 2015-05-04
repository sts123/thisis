# alexgang
minut += 30
horny += 10
gs'stat'

'Придя в квартиру Леха тот час же приволок разного спиртного и сделал закуску, потом вы сели в зале за столом разговаривая между собой.'
'В этот момент в дверь позвонили, Леха пошел открывать. Вы услышали мужской голос в прихожей "Привет Леха, я не опоздал?" Леха ответил "Проходи."'

if alexgangbang = 0:
	'Вы немного удивились, кто бы это мог быть. В этот момент в комнату вошел Александр Евгеньевич, владелец ночного клуба. Он поприветствовал вас и сел на кресло.'
	'Алексей начал разливать спиртное и вы стали втроем пить.'
	'Наконец Алексей отставил бутылку в сторону и достал член из штанов. "Ползи сюда" Вы посмотрели на него удивленно и перевели взгляд на Сашу. Леха поторопил вас "Да ладно, не тушуйся, все нормально."'
else
	'В комнату вошел Александр Евгеньевич, владелец ночного клуба. Он поприветствовал вас и сел на кресло.'
	'Алексей начал разливать спиртное и вы стали втроем пить.'
	'Наконец Алексей отставил бутылку в сторону и достал член из штанов. "Ползи сюда"'
end

act 'Встать на колени и взять в рот':
	cls
	alexgangbang += 1
	horny += 10
	bj += 1
	minut += 10
	gs'stat'

	picrand = RAND(0,13)
	if picrand = 0:'<center><img src="images/qwest/alexey/bj.jpg"></center>'
	if picrand = 1:'<center><img src="images/qwest/alexey/bj1.jpg"></center>'
	if picrand = 2:'<center><img src="images/qwest/alexey/bj2.jpg"></center>'
	if picrand = 3:'<center><img src="images/qwest/alexey/bj3.jpg"></center>'
	if picrand = 4:'<center><img src="images/qwest/alexey/bj4.jpg"></center>'
	if picrand = 5:'<center><img src="images/qwest/alexey/bj5.jpg"></center>'
	if picrand = 6:'<center><img src="images/qwest/alexey/bj6.jpg"></center>'
	if picrand = 7:'<center><img src="images/qwest/alexey/bj7.jpg"></center>'
	if picrand = 8:'<center><img src="images/qwest/alexey/bj8.jpg"></center>'
	if picrand = 9:'<center><img src="images/qwest/alexey/bj9.jpg"></center>'
	if picrand = 10:'<center><img src="images/qwest/alexey/bj10.jpg"></center>'
	if picrand = 11:'<center><img src="images/qwest/alexey/bj11.jpg"></center>'
	if picrand = 12:'<center><img src="images/qwest/alexey/bj12.jpg"></center>'
	if picrand = 13:'<center><img src="images/qwest/alexey/bj13.jpg"></center>'

	'Вы встали на колени перед ним и обхватив член своими <<$liptalk>> начали сосать. Алексей расслабленно сидел и ловил кайф, наконец он отстранил вас от члена и повлек на кровать.'

	gs'oral','0'

	'Леха поднял вас и переместил на кровать где уже сидел Саша. Он поставил вас на четвереньки лицом к Саше.'

	act 'Взять в рот у Саши':
		cls
		if sashaclubsex = 0:sashaclubsex = 1 & guy += 1
		gang += 1
		alexgangbang += 1
		horny += 10
		bj += 1
		minut += 10
		$nameV = 'Алексей'
		$boy = $nameV
		dick = 20
		silavag = 2
		pose = 1
		cumlip += 1
		swallow += 1
		gs'stat'

		picrand = RAND(0,9)
		if picrand = 0:'<center><img src="images/qwest/alexey/gang.jpg"></center>'
		if picrand = 1:'<center><img src="images/qwest/alexey/gang1.jpg"></center>'
		if picrand = 2:'<center><img src="images/qwest/alexey/gang2.jpg"></center>'
		if picrand = 3:'<center><img src="images/qwest/alexey/gang3.jpg"></center>'
		if picrand = 4:'<center><img src="images/qwest/alexey/gang4.jpg"></center>'
		if picrand = 5:'<center><img src="images/qwest/alexey/gang5.jpg"></center>'
		if picrand = 6:'<center><img src="images/qwest/alexey/gang6.jpg"></center>'
		if picrand = 7:'<center><img src="images/qwest/alexey/gang7.jpg"></center>'
		if picrand = 8:'<center><img src="images/qwest/alexey/gang8.jpg"></center>'
		if picrand = 9:'<center><img src="images/qwest/alexey/gang9.jpg"></center>'

		'Встав на четвереньки, вы начали сосать у Саши. У него был не большой и мягкий член с трудом стоящий у вас во рту. Но упорно работая вы заставили его член напрячься.'

		dynamic $sexstart

		'Ваше тело моталось от ударов по жопе во время фрикций Лехи и вам небыло нужды двигать головой во время минета, достаточно только было работать губками обхватывая член по плотней.'

		dynamic $sexstart2

		'Саша тоже кончил вам в рот. Спермы было не много и вы с легкостью все проглотили.'

		act 'Уйти':gt'nord'
	end
end
--- alexgang ---------------------------------

