# Gadbana
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

'<center><H4>Баня</H4></center>'
'<center><img src="images/qwest/gadukino/bana.jpg"></center>'
'Не большая баня с низкой печью, баками для воды из нержавейки, низким закопченым потолком, и почерневшим деревянным полком.'

clr
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

act 'Выйти во двор':minut += 5 & gt'Gaddvor'

if week = 6:
	if hour >= 12 and hour <= 18:
		canpar = 1

		'Баня топится. Где то часам к семи можно будет парится.'
	elseif hour > 18 and hour < 22:
		canpar = 1

		'В бане можно парится'

		if banaday ! day:
			act 'Париться в бане':
				cls
				minut += 120
				dynamic $showerdin
				hapri = 0
				mop = 1
				sweat = -3
				if frost > 0:frost = 0
				skinvan += 5
				if skinvan >= 20:skinvan = 0 & skin = skin + 1
				gs'stat'

				'<center><img src="images/qwest/gadukino/par.jpg"></center>'
				'Вы парились в бане, после чего окатывались холодной водой и в конце помылись.'

				act 'Выйти во двор':gt'Gaddvor'
			end
		end
	elseif hour >= 22:
		canpar = 0
	end
elseif week ! 6:
	canpar = 0
end

if canpar = 0:
	act 'Мыться':
		cls
		dynamic $showerdin
		minut += 60
		hapri = 0
		mop = 1
		sweat = -3
		if frost > 0:frost = 0
		gs'stat'

		'<center><img src="images/qwest/gadukino/mit.jpg"></center>'
		'Вы начали намыливать свое тело мочалкой. После смыли мыло и помыли волосы шампунем. Смыв шампунь вы стали совершенно чистой.'

		act 'Выйти':gt'Gaddvor'
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
		gs'stat'

		'<center><img src="images/pics/wash3.jpg"></center>'
		'Вы поменяли тампон.'

		act 'Закончить':gt $curloc
	end
end

if mop ! 1:
	act 'Смыть косметику':
		cla
		mop = 1
		minut = minut + 15
		gs'stat'

		'<center><img src="images/pic/facesp.jpg"></center>'
		'Вы смыли косметику.'

		act 'Закончить':gt $curloc
	end
end

if cumfrot > 0:
	act 'Оттирать сперму с одежды':
		cla
		cumfrot = 0
		minut = minut + 15
		gs'stat'

		'<center><img src="images/pic/frotsp.jpg"></center>'
		'Вы замыли пятна спермы на своей одежде.'

		act 'Закончить':gt $curloc
	end
end
--- Gadbana ---------------------------------

