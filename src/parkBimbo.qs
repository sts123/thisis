# parkBimbo
if $ARGS[0] = 'pos1':
	cla
	*clr
	minut += 10
	horny += 5
	gs'stat'

	'<center><img src="images/etogame/parkBimbo1.jpg"></center>'
	'Старик указал вам на свою ширинку, а там вы увидели сморщенный, но стоящий член.'
	'- А, какого? 67 лет а он стоит как в 18. А все дело в зарядке и обливаниях, барышня!'

	if horny > 50:act 'Взять член старика в руку':gt'parkBimbo','pos2'
	act 'Покрутить пальцем у виска':gt'gskver'
end

if $ARGS[0] = 'pos2':
	cla
	*clr
	minut += 10
	horny += 10
	cumlip += 1
	bj += 1
	gs'stat'

	'<center><img src="images/etogame/parkBimbo2.jpg"></center>'
	'Вы взяли старика за член и повели его за дерево. Он опешил и начал вертеть головой в поисках помощи. Но деваться некуда.'
	'Заведя его за дерево вы тут же принялись сосать его член.'
	'Долго ждать не пришлось и вскоре он начал кончать.'
	'Ох, ох барышня, вот это вы мне подарочек преподнесли на старости лет.'

	horand = RAND(1,100)
	if horand > horny:horny = horny + 10 & 'Вы остались не удовлетворены'
	if horand <= horny:horny = 0 & orgasm += 1 & 'Вас охватил оргазм'

	act 'Закончить':gt'gskver'
end
--- parkBimbo ---------------------------------

