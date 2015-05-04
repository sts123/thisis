# sauna2
minut = minut + 5
gs'stat'
FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Сауна</font></b></center>'
'<center><img src="images/pic/sauna1.jpg"></center>'
'Снять номер на час стоит 2000 руб.'

act 'Выйти':gt'sauna'

if money >= 2000 and saunaday ! day:
	act 'Снять номер':
		cls
		money = money-2000
		minut += 60
		fat -= 10
		sweat = -10

		dynamic $showerdin

		saunaday = day
		manna = (intel*magik) + magik*100 + vital*10 + rikudo
		gs'stat'

		'<center><img src="images/pic/sau.jpg"></center>'
		'Вы в течении часа парились в сауне, мылись под душем и расслаблялись.'

		act 'Уйти':gt'sauna'
	end
end
--- sauna2 ---------------------------------

