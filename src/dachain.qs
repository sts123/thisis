# dachain
clr
gs'stat'
gs'time'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Дача</font></b></center>'
'<center><img src="images/etogame/dachain.jpg"></center>'
'Ваша любимая дача.'

if hour >= 6 and hour <= 20 and etoexhib = 11:'Рабочие копашаться в огороде, хм... может как-нибудь <a href="exec:GT ''etoexhib'',''pos10''">мотивировать</a> их, чтобы работали шустрее.'
if hour >= 6 and hour <= 20 and etoexhib = 12:'Выйти в <a href="exec:GT ''etoexhib'',''pos11''">огород в нижнем белье и халатике.</a>'
if hour >= 6 and hour <= 20 and etoexhib = 13 and temp ! day:'Интересно, как там в <a href="exec:GT ''etoexhib'',''pos12''">огороде</a>'

if hour < 23:
	act 'Полежать на диване':
		cla
		minut += 60

		if son < 30:
			son += 5
		else
			son = 29
		end

		'Я расслабляюсь лежа на диване.'

		act 'Потянуться':gt'dachain'
	end
end

if hour >= 23:
	act 'Спать в кровати':
		cla
		*clr
		tanga = 1
		health = health + 5
		hapri = 0
		InSleep = 1
		cloth_vid = 0

		'<center><img src="images/pics/son.jpg"></center>'
		if analplugIN = 1:analplugIN = 0 & 'Перед сном вы вынули анальную пробку.'
		if vibratorIN = 1:vibratorIN = 0 & 'Перед сном вы вынули вибратор.'
		if mop > 1:mop = 0 & vidageday = vidageday - 1 & 'Косметика размазалась по лицу, вы подумали, что вредно для внешности спать с косметикой, кожа стареет быстрее от этого.'

		gs'stat'

		'Вы выспались'

		act 'Встать':
			cla
			InSleep = 0
			minut += 480
			son = 30
			gt'dachain'
		end
	end
end

act 'Выйти наружу':minut += 15 & gt'dachamy'
--- dachain ---------------------------------

