# test
rost = 170
fat = 110

!Статы
rikudo = 9000
stren = 100
speed = 100
react = 100
agil = 100
vital = 100
intel = 100
will = 100
boxing = 100
magik = 10
health = vital*10 + stren*5
willpower = intel*5 + will*5
manna = (intel*magik) + magik*100 + vital*10 + rikudo

vmeat = stren + vital
vmeat = vmeat/8
vfat = fat/10
Kves = vmeat + vfat
krost = rost - 130
ves = Kves + krost - (agil/10)
talia = ves - (agil/10)
grudi = talia + 10 + vfat + silicone
bedra = talia + 15 + (vmeat/2) + vfat
titK = grudi - talia

if titK <= 10:tits = 0
if titK > 10 and titK <= 15:tits = 1
if titK > 15 and titK <= 20:tits = 2
if titK > 20 and titK <= 25:tits = 3
if titK > 25 and titK <= 30:tits = 4
if titK > 30 and titK <= 35:tits = 5
if titK > 35:tits = 6

spelltuman = 1
spellklon = 1
spellstun = 1
spellweap = 1
spellwind = 1
spellklon2 = 1
spellenergo = 1
spellinit = 1
spellhel = 1
spellreset = 1
spellavtoklon = 1
spellhand = 1
spellfire1 = 1
spellfire2 = 1
spellfire3 = 1
spellfire4 = 1
spellfire5 = 1
spellele1 = 1
spellele2 = 1
spellele3 = 1
spellele4 = 1
spellele5 = 1
spellert1 = 1
spellert2 = 1
spellert3 = 1
spellert4 = 1
spellert5 = 1
spellwind1 = 1
spellwind2 = 1
spellwind3 = 1
spellwind4 = 1
spellwind5 = 1
spellwater1 = 1
spellwater2 = 1
spellwater3 = 1
spellwater4 = 1
spellwater5 = 1
spellunmat = 1
spellbefshild = 1

'<<rost>>см <<ves>>кг <<grudi>>-<<talia>>-<<bedra>> размер грудей <<tits>>'
'Все статы по 100, все заклинания, магичность 10, сил Рикудо 9000'
'У вас есть еще второе теневое сердце, которое может один раз умереть за вас.'

heart = 1
mannaReset = 10000

act '(Тоби маг12)':
	cla
	$nameV = 'Тоби'
	!Статы
	strenV = 300
	speedV = 100
	agilV = 100
	reactV = 100
	vitalV = 100
	intelV = 100
	willV = 200
	!Навыки
	magikV = 12
	boxingV = 100
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 6

	test = 1
	tobiPic = 1

	unmaterialV = 40
	izanagiOnce = 0
	tobizanagi = 0
	izanagiV = 1
	GedoMazo = 0
	TobiStena = 0
	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500
	gt'fight','start'
end

act '(Кисаме маг10)':
	cla
	horny = horny + 10
	$nameV = 'Кисаме'
	!Статы
	strenV = 300
	speedV = 100
	agilV = 100
	reactV = 100
	vitalV = 200
	intelV = 100
	willV = 50
	!Навыки
	magikV = 10
	boxingV = 100
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 5

	test = 1
	kisamePic = 1

	KisaFight = 1
	klonV = 5
	!defenceV = 10000
	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500
	gt'fight','start'
end

act '(Сасори маг10)':
	cla
	$nameV = 'Кукла Сасори'
	!Статы
	strenV = 100
	speedV = 50
	agilV = 50
	reactV = 50
	vitalV = 100
	intelV = 100
	willV = 100
	!Навыки
	magikV = 10
	boxingV = 50
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 9

	test = 1
	sasoriPic = 1

	klonV = 3
	SasoriBody = 6
	!defenceV = 10000
	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Конан маг10)':
	cla
	$nameV = 'Конан'
	!Статы
	strenV = 60
	speedV = 105
	agilV = 100
	reactV = 100
	vitalV = 60
	intelV = 100
	willV = 100
	!Навыки
	magikV = 10
	boxingV = 100
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 10

	test = 1
	konanPic = 1

	!klonV = 3
	!defenceV = 10000
	unmaterialV = 20
	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Хидан маг9)':
	cla
	$nameV = 'Хидан'
	!Статы
	strenV = 500
	speedV = 100
	agilV = 80
	reactV = 100
	vitalV = 600
	intelV = 100
	willV = 100
	!Навыки
	magikV = 9
	boxingV = 110
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 11

	test = 1
	hidanPic = 1

	!klonV = 3
	!defenceV = 10000
	barierV = 5500
	hidanAtk = 1
	!unmaterialV = 20
	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Джуго, мутант, сила 600)':
	cla
	!judosparday = day
	$nameV = 'Джуго'
	!Статы
	strenV = 600
	speedV = 60
	agilV = 60
	reactV = 50
	vitalV = 200
	intelV = 50
	willV = 50
	!Навыки
	magikV = 1
	boxingV = 100
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 0

	test = 1

	jugoFight = 2
	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Карин, маг6)':
	cla
	$nameV = 'Карин'
	!Статы
	strenV = 60
	speedV = 90
	agilV = 90
	reactV = 60
	vitalV = 100
	intelV = 100
	willV = 100
	!Навыки
	magikV = 6
	boxingV = 100
	shootV = 100
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 4

	test = 1

	karinFight = 1
	klonV = 3
	tumanV = 10
	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Метатель ножей, маг1)':
	cla
	$nameV = 'Метатель ножей'
	!Статы
	strenV = 40
	speedV = 40
	agilV = 40
	reactV = 40
	vitalV = 60
	intelV = 60
	willV = 60
	!Навыки
	magikV = 1
	boxingV = 60
	shootV = 60
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 1

	test = 1

	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Туманный метатель, маг2)':
	cla
	$nameV = 'Туманный метатель'
	!Статы
	strenV = 50
	speedV = 50
	agilV = 50
	reactV = 50
	vitalV = 60
	intelV = 60
	willV = 60
	!Навыки
	magikV = 2
	boxingV = 60
	shootV = 60
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 2

	test = 1

	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Туманный повелитель клонов, маг3)':
	cla
	$nameV = 'Туманный повелитель клонов'
	!Статы
	strenV = 60
	speedV = 60
	agilV = 60
	reactV = 60
	vitalV = 70
	intelV = 70
	willV = 70
	!Навыки
	magikV = 3
	boxingV = 70
	shootV = 70
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 3

	test = 1

	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Парализующий маг, маг4)':
	cla
	$nameV = 'Парализующий маг'
	!Статы
	strenV = 70
	speedV = 70
	agilV = 70
	reactV = 70
	vitalV = 80
	intelV = 80
	willV = 80
	!Навыки
	magikV = 4
	boxingV = 80
	shootV = 80
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 4

	test = 1

	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end

act '(Спецназовец)':
	cla
	$nameV = 'Спецназовец'
	!Статы
	strenV = 200
	speedV = 100
	agilV = 100
	reactV = 100
	vitalV = 200
	intelV = 10
	willV = 10
	!Навыки
	magikV = 0
	boxingV = 100
	shootV = 80
	!Параметры
	healthV = vitalV*10 + strenV*5
	mannaV = intelV*magikV + magikV*100 + vitalV*10
	willpowerV = willV*10
	BonusAtakV = 0
	BonusDefV = 0
	!программа действий
	program = 8
	dospehV = 800
	dospehEnV = 10

	test = 1

	if spellavtoklon = 1:klon = 3
	if spellbefshild = 1:defence = 500

	gt'fight','start'
end
--- test ---------------------------------

