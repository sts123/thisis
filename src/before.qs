# before
!Просчет событий на начало раунда.
!У кого защиты, клоны и так далее
knife = 0
knifeV = 0
BonusAtak = 0
BonusDef = 0
BonusAtakV = 0
BonusDefV = 0
!stunner = 0
!stunnerV = 0
kisamePro = 0

round = round + 1
if tuman > 0:'<font color = green>Поле боя покрывает ваш туман. Судя по всему, он продержится еще <<tuman>> ходов.</font>'
if tumanV > 0:'<font color = red>Поле боя покрывает туман противника. Судя по всему, он продержится еще <<tumanV>> ходов.</font>'
if stun > 0:'<font color = red>Вы все еще не в состоянии двигаться.</font>'
if stunV > 0:'<font color = green><<$nameV>> все еще не в состоянии двигаться.</font>'

if unmaterialV > 0:
	unmaterialV = unmaterialV - 1
	mannaV = mannaV - 20
end

if unmaterial > 0:
	unmaterial = unmaterial - 1
	manna = manna - 20

	'<font color = green>Ваша не материальность выдержит еще максимум <<unmaterial>> ходов.</font>'
end

if klon > 0:
	'<font color = green>У вас <<klon>> клонов которые защитят вас в случае атаки противника.</font>'
end

if poison > 0:
	healthV = healthV - poison
	'<font color = green><<$nameV>> отравлен и теряет <<poison>> единиц жизни.</font>'
	poison = poison - 1
end

if poisonV > 0:
	health = health - poisonV
	'<font color = red>Вы отравлены и теряете <<poisonV>> единиц жизни.</font>'
	poisonV = poisonV - 1
end

if blood > 0:
	healthV = healthV - blood
	'<font color = green><<$nameV>> теряет <<blood>> единиц жизни от кровотечения.</font>'
	blood = blood - 1
	if blood < 0:blood = 0
end

if bloodV > 0:
	health = health - bloodV
	'<font color = red>Вы теряете <<bloodV>> единиц жизни от кровотечения.</font>'
	bloodV = bloodV - 1
	if bloodV < 0:bloodV = 0
end

if dospehEnV <= 0 and dospehV > 0:
	dospehEnV = 0
	dospehV = 0
	dospehDefV = 0
	dospehVesV = 0

	'<font color = green>Доспехи противника уничтожены.</font>'
end

if dospehEn <= 0 and dospeh > 0:
	dospehEn = 0
	dospeh = 0
	dospehDef = 0
	dospehVes = 0

	'<font color = red>Ваши доспехи уничтожены.</font>'
end

if initBonusA > 0:initBonusA = 0
--- before ---------------------------------

