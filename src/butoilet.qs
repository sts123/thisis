# butoilet
minut = minut + 5
clr
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Туалет</font></b></center>'
'<center><img src="images/pic/PublicToilet.jpg"></center>'
''

if tanga = 1:
	act 'Снять нижнее белье':
		cla
		tanga = 0
		gt $curloc
	end
end

act 'Выйти из туалета':gt'burger','start'

if hapri = 0:
	act 'Причесаться':
		cla
		minut = minut + 3
		hapri = 1

		act 'Посмотреть результат':gt $curloc
	end
end

if mop = 1 and kosmetica > 0:
	act 'Нанести макияж':
		cla
		*clr

		'<center><img src="images/pic/mop.jpg"></center>'

		act 'Легкий макияж':
			cla
			minut = minut + 3
			kosmetica = kosmetica - 1
			mop = 2

			'Вы легонечко подвели глаза и немного подкрасили губы.'

			act 'Выйти':gt $curloc
		end

		if kosmetica >= 2:
			act 'Нормальный макияж':
				cla
				minut = minut + 5
				kosmetica = kosmetica - 2
				mop = 3

				'Вы накрасили губы, подвели глаза и наложили тени.'

				act 'Выйти':gt $curloc
			end
		end

		if kosmetica >= 3:
			act 'Вызывающий макияж':
				cla
				minut = minut + 10
				kosmetica = kosmetica - 3
				vidageday = vidageday - 1
				mop = 4

				'Вы густо накрасили глаза, наложили тени и тушь для ресниц, накрасили контур губ карандашом и губы помадой.'

				act 'Выйти':gt $curloc
			end
		end
	end
end

if cumpussy > 0 or cumbelly > 0 or cumass > 0 or cumanus > 0:
	act 'Подмыться 15 мин':
		cla
		*clr
		cumpussy = 0
		cumbelly = 0
		cumass = 0
		cumanus = 0
		cumlip = 0
		cumface = 0
		sweat = sweat - 1
		minut = minut + 15

		'<center><img src="images/pics/wash5.jpg"></center>'
		'Вы тщательно смыли сперму с себя.'

		act 'Выйти':gt $curloc
	end
end

if cumlip > 0 or cumface > 0:
	act 'Смыть сперму с лица 15 мин':
		cla
		*clr
		mop = 1
		cumlip = 0
		cumface = 0
		sweat = sweat - 1
		minut = minut + 15

		'<center><img src="images/pic/facesp.jpg"></center>'
		'Вы тщательно смыли сперму с лица.'

		act 'Выйти':gt $curloc
	end
end

if cumfrot > 0:
	act 'Стереть сперму с одежды 15 мин':
		cla
		*clr
		cumfrot = 0
		sweat = sweat - 1
		minut = minut + 15

		!'<center><img src="images/pic/facesp.jpg"></center>'
		'Вы стерли следы спермы с одежды.'

		act 'Выйти':gt $curloc
	end
end

if tampon > 0 and mesec > 0 and isprok = 0:
	act 'Поменять тампон':
		cla
		*clr
		tampon = tampon - 1
		isprok = 1
		minut = minut + 5
		manna = manna - 5

		'<center><img src="images/pics/wash3.jpg"></center>'
		'Вы поменяли тампон.'

		act 'Закончить':gt $curloc
	end
end
--- butoilet ---------------------------------

