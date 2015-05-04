# lezbsex
if $ARGS[0] = 'start':
	gs'stat'
	girl += 1
	lesbian += 1
	picrand = RAND(0,1)

	if tanznak = 1:
		picrand = 12
		tanznak = 2
	end

	xgt'lezbsex','var'
end

if $ARGS[0] = 'var':
	gs'stat'

	if picrand ! 11:act 'Куни':gt'lezbsex','kuni'
	act 'Сделать куни':gt'lezbsex','ukuni'
	if picrand ! 12 and picrand ! 13 and picrand ! 14 and picrand ! 16 and picrand ! 17 and picrand ! 18 and picrand ! 21:act 'Анулингус':gt'lezbsex','anuli'
	if picrand ! 12 and picrand ! 13 and picrand ! 14 and picrand ! 16 and picrand ! 17 and picrand ! 18 and picrand ! 21:act 'Сделать анулингус':gt'lezbsex','uanuli'

	if strapon = 1 and picrand ! 11 and picrand ! 12 and picrand ! 13 and picrand ! 14 and picrand ! 15 and picrand ! 16 and picrand ! 17 and picrand ! 18 and picrand ! 19 and picrand ! 20 and picrand ! 21 and picrand ! 22:
		act 'Страпон в киску':gt'lezbsex','svag'
		act 'Страпон в попку':gt'lezbsex','sanal'
		act 'Страпон вам в киску':gt'lezbsex','usvag'
		act 'Страпон вам в попу':gt'lezbsex','usanal'
	end

	if dildo = 1 and picrand ! 12 and picrand ! 19 and picrand ! 20 and picrand ! 22:
		act 'Дилдо в киску':gt'lezbsex','dvag'
		if picrand ! 11 and picrand ! 15 and picrand ! 16 and picrand ! 17 and picrand ! 18 and picrand ! 21:act 'Дилдо в попку':gt'lezbsex','danal'
		if picrand ! 11:act 'Дилдо вам в киску':gt'lezbsex','udvag'
		if picrand ! 11 and picrand ! 14 and picrand ! 15 and picrand ! 16 and picrand ! 17 and picrand ! 18 and picrand ! 21:act 'Дилдо вам в попу':gt'lezbsex','udanal'
	end
end

if $ARGS[0] = 'ukuni':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/ukuni<<picrand>>.jpg"></center>'
	'Вы целуете ей грудь постепенно спускаясь все ниже и ниже и вот уже перед вами её текущая киска, вы начинаете ласкать языком её губки, заводя свой язык между ними касаетесь клитора, девушка раздвигает губы пальцами, что бы ничто не мешало вам ласкать клитор.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'kuni':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/kuni<<picrand>>.jpg"></center>'
	'Девушка проводит языком по вашим бедрам, целует лобок и спускается к вагине, её язычок скользит по вашей промежности то лаская клитор то проникая в вагину.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'anuli':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/anuli<<picrand>>.jpg"></center>'
	'Она целует ваши ягодицы постепенно приближаясь к центру, достигнув цели она проводит языком по вашему анусу затем вталкивает его внутрь вашей попы, выводит и снова лижет анус, потом все повторяется вновь.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'uanuli':
	cla
	*clr
	minut += 5
	horny += 10
	asslick += 1

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/uanuli<<picrand>>.jpg"></center>'
	'Вы облизываете её ягодицы постепенно приближаясь к центру, достигнув ануса, проводите языком по нему языком и проникаете внутрь её попы, вынимаете и снова лижет анус.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'svag':
	cla
	*clr
	minut += 5
	DOM += 1
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/svag<<picrand>>.jpg"></center>'
	'Вы одеваете страпон и вставляете в её киску, она постанывает пока вы трахаете её.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'sanal':
	cla
	*clr
	minut += 5
	DOM += 2
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/sanal<<picrand>>.jpg"></center>'
	'Вы одеваете страпон и аккуратно вводите его в анус девушки, начиная трахать её зад сначала медленно затем все быстрее и быстрее.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'usvag':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/usvag<<picrand>>.jpg"></center>'
	'Девушка вставляет страпон вам в киску, она двигается взад и вперед доставляя вам удовольствие.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'usanal':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/usanal<<picrand>>.jpg"></center>'
	'Девушка плюет вам на попку, собирает слюну кончиком страпона и вставляет его вам в анус, вы чувствуете как он движется в вашей попке, с каждым толчком все быстрее и глубже.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'dvag':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/dvag<<picrand>>.jpg"></center>'
	'Вы берете дилдо и засовываете в её киску, девушка целует вас пока вы одной рукой управляете дилдо а второй ласкаете её грудь.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'danal':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/danal<<picrand>>.jpg"></center>'
	'Вы берете дилдо, облизываете его, стараясь оставить на нем максимальное количество слюны, и аккуратно вводите в анус девушки, начиная трахать её зад дилдо сначала медленно затем все быстрее и быстрее.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'udvag':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/udvag<<picrand>>.jpg"></center>'
	'Девушка вставляет дилдо вам в киску, она двигает его взад и вперед при этом постоянно проворачивая его, дилдо в её руках становиться лучше любого члена.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'udanal':
	cla
	*clr
	minut += 5
	horny += 10

	if horny >= 80:
		horny = 0
		orgasm += 1
	end

	'<center><img src="images/img/lezbsex/udanal<<picrand>>.jpg"></center>'
	'Девушка плюет вам на попку, собирает слюну кончиком дилдо и вставляет его вам в анус, вы чувствуете как он растягивает ваш анус, доставляя вам удовольствие.'

	act 'Еще':xgt'lezbsex','var'
	act 'Уйти':gt'lezbsex','end'
end

if $ARGS[0] = 'end':
	cla
	if picrand = 22:gt'down'
	if picrand = 21:gt'vann','start'
	if picrand = 19 or picrand = 20:gt'office','work'
	if tanznak = 2:gt'fit','razd'
	gt'<<$sexloc>>','start'
end
--- lezbsex ---------------------------------

