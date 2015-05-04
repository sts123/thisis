# dima
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'
	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Подъезд где живет Дима</font></b></center>'
	'<center><img src="images/pic/podezdhr.jpg"></center>'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'street'
	end
end
--- dima ---------------------------------

