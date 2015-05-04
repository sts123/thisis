# popu
if $ARGS[0] = 'start':
	cla
	*clr
	clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><img src="images/zoo/1a640f07cc5c.jpg"></center>'
	'<center><<$namepopu>> сидит в своей клетке.</center>'

	act 'Уйти':gt'korr'
	act 'Выпустить в окно':
		popugai = 0
		minut += 10
		gt'korr'
	end
end
--- popu ---------------------------------

