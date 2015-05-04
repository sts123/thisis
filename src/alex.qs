# alex
minut += 30
horny += 10
gs'stat'

'Придя в квартиру Леха тот час же приволок разного спиртного и сделал закуску, потом вы сели в зале за столом разговаривая между собой.'
'Наконец вы опьянели и Леха привлек вас к себе.'

act 'Встать на колени и взять в рот':
	cls
	alexeySex += 1
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

	'Вы встали на колени перед ним и обхватив член своими <<$liptalk>> начали сосать. Алексей расслабленно лежал и ловил кайф, наконец он отстранил вас от члена и повлек на кровать.'

	gs'oral','0'

	act 'Раздеться':
		cls
		minut += 10
		$nameV = 'Алексей'
		$boy = $nameV
		dick = 20
		silavag = 2
		pose = 1
		gs'stat'

		'<center><img src="images/qwest/alexey/sex.jpg"></center>'
		'Едва вы разделись, как Алесей практически силой затащил вас на кровать и поставил раком.'

		dynamic $sexstart

		'Алексей хлопнул вам ладонью по жопе и сказал "Ну как, течешь уже потаскуха? Нравится жопой на хую крутить?"'

		dynamic $sexstart2

		'Во время секса Алексей засунул смазанный каким то кремом палец в попу и начал им там двигать. Вскоре он достал свой член из вашей натруженной киски и уперся им вам в попу.'

		act 'Стонать':
			cls
			minut += 10
			$nameV = 'Алексей'
			$boy = $nameV
			dick = 20
			silavag = 2
			pose = 1
			gs'stat'

			'<center><img src="images/qwest/alexey/anal.jpg"></center>'

			dynamic $analsex

			gs'BDsex','ancum'

			'Алексей кончив сполз с вас и пошел в ванную.'

			act 'Уйти':gt'nord'
		end
	end
end
--- alex ---------------------------------

