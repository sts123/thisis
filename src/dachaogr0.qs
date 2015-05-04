# dachaogr0
clr
gs'stat'
gs'time'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Огород</font></b></center>'
'<center><img src="images/etogame/burjan.jpg"></center>'

if etoexhib < 11:
	'Огород весь порос сорняком и бурьяном. Какой либо урожай здесь вырастить невозможно. Похоже бывшие хозяева совершенно не заботились о нем. Надо придумать как перекопать огород.'
elseif etoexhib = 11:
	'Рабочие лениво и с перекурами копаются в земле, вырывают сорняки.'
elseif etoexhib >= 12 and etoexhib < 14:
	'Рабочие копают землю. Убирают пни.'
elseif etoexhib = 14 and temp ! day:
	cls
	gs'stat'

	'<center><b><font color = maroon>Огород</font></b></center>'
	'<center><img src="images/etogame/vspah.jpg"></center>'
	'Ваш огородик вспахан. Грядки аккуратно расчерчены. Посажены яблони.'
	'Довольные пьяные рабочие отдыхают в тени. Понятно, на деньги они взяли выпивку. И, видимо под допингом, быстрее закончили работу.'

	act 'Расплатиться':gt'etoexhib','pos14'
elseif etoexhib = 15 and temp ! day:
	cls
	gs'stat'

	'<center><b><font color = maroon>Огород</font></b></center>'
	'<center><img src="images/etogame/vspah.jpg"></center>'
	'Ваш огородик вспахан. Грядки аккуратно расчерчены. Посажены яблони.'
	'Усталые рабочие отдыхают в тени.'

	act 'Расплатиться деньгами':
		cla
		*clr
		money -= 3000
		etoexhib = 16
		gs'stat'

		'Вы заплатили рабочим 3000 рублей.'

		act 'К домику':minut += 15 & gt'dachamy'
	end

	if etoexhib = 15 and horny > 30:
		act 'Расплатиться телом':gt'etoexhib','pos13'
	end
end

act 'К домику':minut += 15 & gt'dachamy'
--- dachaogr0 ---------------------------------

