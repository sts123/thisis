# krol
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><img src="images/zoo/1791_640.jpg"></center>'
	'<center><<$namekrol>> отдыхает.</center>'

	act 'Уйти':gt'korr'
	act 'Сдать в шашлычку на мясо':
		krolik = 0
		minut += 60
		money += 200
		gt'korr'
	end
end
--- krol ---------------------------------

