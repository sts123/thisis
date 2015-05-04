# фильм
if $ARGS[0] = 'фильм':
	cla
	clr
	gs'stat'

	if pfilmA >= 5:
		cla
		pfilmA = 0
		pfilm = 0
		film = film+1

		'Вы доснялись в фильме.'

		act 'Подойти к Петру':gt'pornstudio','start'
		act 'Закончить':gt'down'
	end

	if час >= 22 and pfilmA < 5:
		cla
		'Время слишком позднее для съемок'

		act 'Идти домой':gt'down'
	elseif hour < 22 and pfilmA < 5 and pfilm > 0:
		cla
		minut += 60
		money = money + 1000
		if pfilmA = 0:guy += 1
		bj += 1
		pfilmA = pfilmA + 1
		gs'stat'

		'Вы раздеваетесь и приступаете к съемкам.'

		prand = RAND(1,2)
		if prand = 1:
			porand = RAND(1,10)
			if porand = 1:'<center><img src="images/picBJ/bj.jpg"></center>'
			if porand = 2:'<center><img src="images/picBJ/bj2.jpg"></center>'
			if porand = 3:'<center><img src="images/picBJ/bj3.jpg"></center>'
			if porand = 4:'<center><img src="images/picBJ/bj4.jpg"></center>'
			if porand = 5:'<center><img src="images/picBJ/bj5.jpg"></center>'
			if porand = 6:'<center><img src="images/picBJ/bj6.jpg"></center>'
			if porand = 7:'<center><img src="images/picBJ/bj7.jpg"></center>'
			if porand = 8:'<center><img src="images/picBJ/bj8.jpg"></center>'
			if porand = 9:'<center><img src="images/picBJ/bj9.jpg"></center>'
			if porand = 10:'<center><img src="images/picBJ/bj10.jpg"></center>'

			'Вы сосете член у актера целый час, изображая страсть и похоть. На самом деле трудно сосредоточиться когда вокруг осветители, ассистенты, вам ежеминутно суют камеру к лицу.'
		elseif prand = 2:
			facial += 1

			porand = RAND(1,10)
			if porand = 1:'<center><img src="images/picBJ/fa.jpg"></center>'
			if porand = 2:'<center><img src="images/picBJ/fa2.jpg"></center>'
			if porand = 3:'<center><img src="images/picBJ/fa3.jpg"></center>'
			if porand = 4:'<center><img src="images/picBJ/fa4.jpg"></center>'
			if porand = 5:'<center><img src="images/picBJ/fa5.jpg"></center>'
			if porand = 6:'<center><img src="images/picBJ/fa6.jpg"></center>'
			if porand = 7:'<center><img src="images/picBJ/fa7.jpg"></center>'
			if porand = 8:'<center><img src="images/picBJ/fa8.jpg"></center>'
			if porand = 9:'<center><img src="images/picBJ/fa9.jpg"></center>'
			if porand = 10:'<center><img src="images/picBJ/fa10.jpg"></center>'

			'Вы сосете член у актера целый час, изображая страсть и похоть. Он вам кончает на лицо, вы слизываете сперму. Вам каждую минуту суют камеру в лицо, бегают ассистенты и осветители.'
		end

		act 'Закончить':gt'down'
		if hour < 22:act 'Сниматься дальше':gt'фильм','фильм'
	end
end

if $ARGS[0] = 'фильм2':
	cla
	clr
	gs'stat'

	if pfilmB >= 10:
		cla
		pfilmB = 0
		pfilm = 0
		film = film+1

		'Вы доснялись в фильме.'

		act 'Подойти к Петру':gt'pornstudio','start'
		act 'Идти домой':gt'down'
	end

	if час >= 22 and pfilmB < 10:
		cla
		'Время слишком позднее для съемок'

		act 'Идти домой':gt'down'
	elseif hour < 22 and pfilmB < 10 and pfilm > 0:
		cla
		minut += 60
		money = money + 3000
		if pfilmB = 0:guy += 1
		pfilmB = pfilmB + 1
		gs'stat'

		'Вы раздеваетесь и приступаете к съемкам.'

		prand = RAND(1,3)
		if prand = 1:
			bj += 1

			porand = RAND(1,10)
			if porand = 1:'<center><img src="images/picBJ/bj.jpg"></center>'
			if porand = 2:'<center><img src="images/picBJ/bj2.jpg"></center>'
			if porand = 3:'<center><img src="images/picBJ/bj3.jpg"></center>'
			if porand = 4:'<center><img src="images/picBJ/bj4.jpg"></center>'
			if porand = 5:'<center><img src="images/picBJ/bj5.jpg"></center>'
			if porand = 6:'<center><img src="images/picBJ/bj6.jpg"></center>'
			if porand = 7:'<center><img src="images/picBJ/bj7.jpg"></center>'
			if porand = 8:'<center><img src="images/picBJ/bj8.jpg"></center>'
			if porand = 9:'<center><img src="images/picBJ/bj9.jpg"></center>'
			if porand = 10:'<center><img src="images/picBJ/bj10.jpg"></center>'

			'Вы сосете член у актера целый час, изображая страсть и похоть. На самом деле трудно сосредоточиться когда вокруг осветители, ассистенты, вам ежеминутно суют камеру к лицу.'
		elseif prand = 2:
			anus += 1
			anal = anal + 1

			porand = RAND(1,10)
			if porand = 1:'<center><img src="images/pics/anal.jpg"></center>'
			if porand = 2:'<center><img src="images/pics/anal2.jpg"></center>'
			if porand = 3:'<center><img src="images/pics/anal3.jpg"></center>'
			if porand = 4:'<center><img src="images/pics/anal4.jpg"></center>'
			if porand = 5:'<center><img src="images/pics/anal5.jpg"></center>'
			if porand = 6:'<center><img src="images/pics/anal6.jpg"></center>'
			if porand = 7:'<center><img src="images/pics/anal7.jpg"></center>'
			if porand = 8:'<center><img src="images/pics/anal8.jpg"></center>'
			if porand = 9:'<center><img src="images/pics/anal9.jpg"></center>'
			if porand = 10:'<center><img src="images/pics/anal10.jpg"></center>'

			'Вас целый час трахают в жопу перед камерой, вам не приятно, но вы изображаете страсть и удовольствие. Наконец актер не выдерживает и наполняет вашу попу своей спермой. Вам каждую минуту суют камеру в лицо, бегают ассистенты и осветители.'
		elseif prand = 3:
			sex = sex + 1
			vagina += 1
			facial += 1

			porand = RAND(1,10)
			if porand = 1:'<center><img src="images/pics/vagcow.jpg"></center>'
			if porand = 2:'<center><img src="images/pics/vagcow2.jpg"></center>'
			if porand = 3:'<center><img src="images/pics/vagcow3.jpg"></center>'
			if porand = 4:'<center><img src="images/pics/vagcow4.jpg"></center>'
			if porand = 5:'<center><img src="images/pics/vagcow5.jpg"></center>'
			if porand = 6:'<center><img src="images/pics/vagdog.jpg"></center>'
			if porand = 7:'<center><img src="images/pics/vagdog2.jpg"></center>'
			if porand = 8:'<center><img src="images/pics/vagdog3.jpg"></center>'
			if porand = 9:'<center><img src="images/pics/vagdog4.jpg"></center>'
			if porand = 10:'<center><img src="images/pics/vagdog5.jpg"></center>'

			'Вас имеют целый час перед камерой, вы изображаете страсть и похоть. Он вам кончает на лицо, вы слизываете сперму. Вам каждую минуту суют камеру в лицо, бегают ассистенты и осветители.'
		end

		act 'Идти домой':gt'down'
		if hour < 22:act 'Сниматься дальше':gt'фильм','фильм2'
	end
end
--- фильм ---------------------------------

