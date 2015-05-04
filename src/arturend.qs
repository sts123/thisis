# arturend
gs'stat'

'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
'Артур встал с вас и тут же как ни в чем не бывало занялся делами.'

act 'Приводить себя в порядок':
	cls
	minut += 15
	artfucktimes = 0
	artfacefucktimes = 0
	pose = 0
	cumface = 0
	if artbj > 0:artbj = 0 & bj += 1
	if artsex > 0:artsex = 0 & sex += 1
	if artanal > 0:artanal = 0 & anal += 1
	gs'stat'

	'<center><img src="images/qwest/alter/artur/artur.jpg"></center>'
	'Вы быстро вытерли лицо и Артур вынес вам подарок.'

	if bag > 0:
		arturgift = RAND(0,2)
		if arturgift = 0:
			kosmetitka += 20

			'Артур подарил вам переносной набор косметики.'
		elseif arturgift = 1:
			kosmetica += 20

			'Артур подарил вам набор косметики.'
		elseif arturgift = 2:
			money += 1000

			'Артур сказал "Эээ, у меня времени не было тебе подарок искать, на тысячу, сама купи, что тебе нравится."'
		end
	elseif bag = 0:
		bag = 1

		'Он подарил вам сумочку.'
	end

	act 'Уйти':gt'gorodok'
end
--- arturend ---------------------------------

