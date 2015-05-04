# blowPR
if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 1
	guy = guy + 1
	bj = bj + 1
	throat = throat + 1
	prosta = prosta + 1
	!son = son - 1
	zpprand = RAND(0,100)
	if zpprand >= 70:dynamic $venerasiak
	gs'stat'

	'<center><img src="images/prost/bj.jpg"></center>'
	'Ваша рука скользнула по промежности парня и расстегнула его ширинку. Вы засунули ладонь ему в штаны и достали его член.'

	if prezik > 0:act 'Одеть ртом презерватив на член':gt'blowPR','1'
	if prezik = 0:act 'Взять член в рот':gt'blowPR','2'
end

if $ARGS[0] = '1':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	prezik = prezik - 1
	gs'stat'

	picrand = RAND(0,6)
	if picrand = 0:'<center><img src="images/prost/bjp.jpg"></center>'
	if picrand = 1:'<center><img src="images/prost/bjp2.jpg"></center>'
	if picrand = 2:'<center><img src="images/prost/bjp3.jpg"></center>'
	if picrand = 3:'<center><img src="images/prost/bjp4.jpg"></center>'
	if picrand = 4:'<center><img src="images/prost/bjp5.jpg"></center>'
	if picrand = 5:'<center><img src="images/prost/bjp6.jpg"></center>'
	if picrand = 6:'<center><img src="images/prost/bjp7.jpg"></center>'

	'Вы натянули своими губами презерватив на член'

	if prosti = 0:
		'Ваши губки скользят по стволу клиента, пока он не кончает в презерватив'

		act 'Уйти':gt $locSex, $metkaSex
	elseif prosti = 1:
		'Клиент достаточно разогрелся и можно продолжать.'

		act 'Дальше':gt'NormPR','1'
	elseif prosti = 2:
		'Клиент достаточно разогрелся и можно продолжать.'

		act 'Дальше':gt'AnalPR','1'
	end
end

if $ARGS[0] = '2':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	dynamic $venerasiak
	minut = minut + 5
	gs'stat'

	picrand = RAND(0,5)
	if picrand = 0:'<center><img src="images/prost/bjp8.jpg"></center>'
	if picrand = 1:'<center><img src="images/prost/bjp9.jpg"></center>'
	if picrand = 2:'<center><img src="images/prost/bjp10.jpg"></center>'
	if picrand = 3:'<center><img src="images/prost/bjp11.jpg"></center>'
	if picrand = 4:'<center><img src="images/prost/bjp12.jpg"></center>'
	if picrand = 5:'<center><img src="images/prost/bjp13.jpg"></center>'

	'Вы обхватили губами член.'

	act 'Сосать':gt'blowPR','12'
end

if $ARGS[0] = '12':
	$metka = $ARGS[0]
	$loc = $CURLOC

	*clr
	cla

	if prosti = 0:
		bjrand = RAND(0,100)
		if bj <= 15 and bjrand > 0 and bjrand <= 50:
			cumlip = cumlip + 1

			'<center><img src="images/prost/bjm.jpg"></center>'
			'Вы неумелыми движениями сосете член клиента, пока он не кончает вам в рот, заставляя вас морщиться от неприятного вкуса спермы.'

			act 'Уйти':gt $locSex, $metkaSex
		elseif bj > 15 and bjrand > 0 and bjrand <= 50:
			cumlip = cumlip + 1

			'<center><img src="images/prost/bjm2.jpg"></center>'
			'Ваши натренированные губки скользят вверх вниз, доставляя клиенту удовольствие. Очень скоро вы ощущаете вкус его семени, которое вы с наслаждением проглатываете до последней капли.'

			act 'Уйти':gt $locSex, $metkaSex
		elseif bjrand > 50 and bjrand <= 80 and bj <= 15 and mop = 1:
			cumface = cumface + 1

			'<center><img src="images/prost/bjf.jpg"></center>'
			'Вы неумелыми движениями сосете член клиента, неожиданно для вас он выдергивает свой член, кончая вам на лицо, вы не успеваете зажмуриться, немного спермы попадает вам в глаза, но, не смотря на жжение, вам нельзя плакать, можно только улыбаться.'

			act 'Уйти':gt $locSex, $metkaSex
		elseif bjrand > 50 and bjrand <= 80 and bj <= 15 and mop > 1:
			cumface = cumface + 1
			mop = 0

			'<center><img src="images/prost/bjf.jpg"></center>'
			'Вы неумелыми движениями сосете член клиента, неожиданно для вас он выдергивает свой член, кончая вам на лицо, вы не успеваете зажмуриться, немного спермы попадает вам в глаза, но, не смотря на жжение, вам нельзя плакать, можно только улыбаться.'

			act 'Уйти':gt $locSex, $metkaSex
		elseif bjrand > 50 and bjrand <= 80 and bj > 15:
			cumface = cumface + 1

			'<center><img src="images/prost/bjf2.jpg"></center>'
			'Ваши натренированные губки скользят вверх вниз, доставляя клиенту удовольствие, как только клиент освободил ваш ротик, вы поняли, что сейчас ваше лицо зальют спермой. Вы успеваете, зажмурившись откинуть голову назад, тяжелые капли падают вам на подбородок, заставляя улыбаться от мысли, что не размазался макияж.'

			act 'Уйти':gt $locSex, $metkaSex
		elseif bjrand > 80 and bjrand <= 100 and bj <= 15:
			cumfrot = cumfrot + 1

			'<center><img src="images/prost/bjt2.jpg"></center>'
			'Вы неумелыми движениями сосете член клиента, он тянется руками к вашей груди пытаясь оголить ее. Вы замычали, давая понять, что так не договаривались. Клиент недовольно продолжил иметь вас в рот. Вы уже расслабились, как клиент, оттолкнув, вытащил мокрый от слюны член. Зажмурив глаза, вы почувствовали, как капли спермы падают не на лицо, а на грудь! Удивленная вы открыли глаза, с ужасом увидев испачканную в сперме одежду, и довольно улыбающегося клиента.'

			act 'Уйти':gt $locSex, $metkaSex
		elseif bjrand > 80 and bjrand <= 100 and bj > 15:
			money += 500

			'<center><img src="images/prost/bjt.jpg"></center>'
			'Ваши натренированные губки скользят вверх вниз, доставляя клиенту удовольствие. Он тянется руками к вашей груди не терпеливо пытаясь оголить ее, вы все поняли без слов. Обнажив сиськи вы стали еще тщательнее работать ртом, когда он уже был на грани, вы резко отстранились, назад соскользнув с члена, через мгновение клиент стал выстреливать спермой на ваши заботливо подставленные полушария. Оставшись довольным, он протянул вам еще одну пятихатку.'

			act 'Уйти':gt $locSex, $metkaSex
		end
	elseif prosti = 1:
		'Клиент достаточно разогрелся и можно продолжать.'

		act 'Дальше':gt'NormPR','2'
	elseif prosti = 2:
		'Клиент достаточно разогрелся и можно продолжать.'

		act 'Дальше':gt'AnalPR','2'
	end
end
--- blowPR ---------------------------------

