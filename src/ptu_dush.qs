# ptu_dush
if $ARGS[0] = 'pos1':
	cla
	*clr
	minut += 10
	gs'stat'

	'<center><b><font color=maroon>Женская душевая</font></b></center>'
	'<center><img src="images/etogame/ptu_jen.jpg"></center>'
	'Душевая поделена на 2 секции, раздевалка с шкафчиками обшитая деревом и сама душевая с кафельным полом и стенами. Убедившись, что в душевой никого нет, вы собираетесь запереть дверь, но с досадой обнаруживаете, что замка нет, нет даже простейшего шпингалета, возможно так и полагается в общественных душевых или это сделано в целях безопасности. Но, что поделать, не можете же вы ходить разящей потом. Ведь вы здесь поэтому, не так ли?'

	act 'Раздеться (Минус к репутации)':gt'ptu_dush','pos2'
	act 'В зал':gt'etoexhib','pos33'
end

if $ARGS[0] = 'pos2':
	cla
	*clr
	minut += 15
	teachlevel -= 1
	horny += 3
	hapri = 0
	mop = 1
	sweat = -3
	gs'stat'

	'<center><b><font color=maroon>Душ</font></b></center>'
	'<center><img src="images/etogame/ptu_medush.jpg"></center>'
	'Вы быстренько принимаете душ, надеясь, что никто вас не застукает.'

	act 'Одеться и выйти':gt'etoexhib','pos33'
end
--- ptu_dush ---------------------------------

