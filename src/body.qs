# body
if analplugIN = 0:
	if anus = 0:anpic = 0 & $anus = 'У вас девственный <a href="exec:view''images/picb/0.jpg''">анус</a>' & $anustipe = 'девственный'
	if anus > 0 and anus <= 5:anpic = 1 & $anus = 'Ваш <a href="exec:view''images/picb/1.jpg''">анус</a> выглядит как крохотная щелочка.' & $anustipe = 'крошечный'
	if anus > 5 and anus <= 10:anpic = 2 & $anus = 'Ваш <a href="exec:view''images/picb/2.jpg''">анус</a> имеет форму звездочки.' & $anustipe = 'тугой'
	if anus > 10 and anus <= 15:anpic = 3 & $anus = 'Ваш <a href="exec:view''images/picb/3.jpg''">анус</a> выглядит как щель.' & $anustipe = 'слегка растянутый'
	if anus > 15 and anus <= 25:anpic = 4 & $anus = 'Ваш <a href="exec:view''images/picb/4.jpg''">анус</a> выглядит как дупло.' & $anustipe = 'растянутый'
	if anus > 25 and anus <= 35:anpic = 5 & $anus = 'Ваш <a href="exec:view''images/picb/5.jpg''">анус</a> не закрывается и выглядит как красное раздолбанное дупло из которого регулярно вылетают ветры.' & $anustipe = 'раздолбанный'
	if anus > 35:anpic = 6 & $anus = 'Ваш <a href="exec:view''images/picb/6.jpg''">анус</a> практически полностью уничтожен и представляет из себя бесформенную дыру.' & $anustipe = 'разрушенный'
elseif analplugIN = 1:
	$anus = 'В вашем <a href="exec:view''images/picb/analplug.jpg''">анусе</a> вставлена анальная пробка.'
end

if throat = 0:thpic = 0 & $throat = 'У вас целомудренный <a href="exec:view''images/picb/th0.jpg''">ротик</a>.' & $throattipe = 'абсолютно непривычное'
if throat > 0 and throat <= 5:thpic = 1 & $throat = 'У вас неопытный <a href="exec:view''images/picb/th1.jpg''">ротик</a>.' & $throattipe = 'девственное'
if throat > 5 and throat <= 10:thpic = 2 & $throat = 'У вас рабочий ротик и чувствительное <a href="exec:view''images/picb/th2.jpg''">горло</a>.' & $throattipe = 'чувствительное'
if throat > 10 and throat <= 15:thpic = 3 & $throat = 'У вас опытный рот и слегка растянутое <a href="exec:view''images/picb/th3.jpg''">горло</a>.' & $throattipe = 'слегка растянутое'
if throat > 15 and throat <= 25:thpic = 4 & $throat = 'У вас вместительный рот и тренированное <a href="exec:view''images/picb/th4.jpg''">горло</a>.' & $throattipe = 'растянутое'
if throat > 25 and throat <= 35:thpic = 5 & $throat = 'Ваша глубокая луженая <a href="exec:view''images/picb/th5.jpg''">глотка</a> может принять любой член.' & $throattipe = 'луженое'
if throat > 35:thpic = 6 & $throat = 'У вас полностью отсутствует рвотный рефлекс, ваша разъебанная <a href="exec:view''images/picb/th6.jpg''">глотка</a> похожа на бездонный колодец' & $throattipe = 'бездонное'

if vagina = 0:puspic = 0 & $vagina = 'У вас девственная <a href="exec:view''images/picb/vag0.jpg''">плева</a>.' & $vaginatipe='девственная'
if vagina > 0 and vagina <= 5:puspic = 1 & $vagina = 'Ваша киска <a href="exec:view''images/picb/vag1.jpg''">киска</a> имеет крохотную дырочку.' & $vaginatipe = 'узенькая'
if vagina > 5 and vagina <= 10:puspic = 2 & $vagina = 'У вас тесная, похожая на щель <a href="exec:view''images/picb/vag2.jpg''">вагина</a>.' & $vaginatipe = 'тесная'
if vagina > 10 and vagina <= 15:puspic = 3 & $vagina = 'У вас слегка растянутая эластичная <a href="exec:view''images/picb/vag3.jpg''">вагина</a>.' & $vaginatipe = 'тугая'
if vagina > 15 and vagina <= 25:puspic = 4 & $vagina = 'У вас хорошо разработанная <a href="exec:view''images/picb/vag4.jpg''">вагина</a>.' & $vaginatipe = 'разработанная'
if vagina > 25 and vagina <= 35:puspic = 5 & $vagina = 'Между ног у вас не закрывается здоровенная <a href="exec:view''images/picb/vag5.jpg''">дырень</a>' & $vaginatipe = 'раздолбанная'
if vagina > 35:puspic = 6 & $vagina = 'То что у вас на месте киски, больше похоже на <a href="exec:view''images/picb/vag6.jpg''">скважину</a> глубиной с марианскую впадину' & $vaginatipe = 'безразмерная'

!!!!!!!!!!!!!!!!
!!!РОСТ И ВЕС!!!
!!!!!!!!!!!!!!!!
if dounspell = 0:
	strenbuf = stren
	vitalbuf = vital
	vmeat = strenbuf + vitalbuf
	vmeat = vmeat/8
	vfat = salo/10
	Kves = vmeat + vfat
	krost = rost - 130
	ves = Kves + krost - (agilbuf/10)
	talia = ves - (agilbuf/10)
	grudi = talia + 10 + vfat + silicone
	grutal = talia
	bedra = talia + 15 + (vmeat/2) + vfat
	titK = grudi - talia

	if (bedra - talia) > 45 and musle < salo:
		if ves < 70:koefvesbt = 0
		if ves >= 70:koefvesbt = ves - 70
		koefbt = koefvesbt + ((bedra - talia) - 45)
		talia += koefbt
	end

	if titK <= 10:tits = 0
	if titK > 10 and titK <= 15:tits = 1
	if titK > 15 and titK <= 20:tits = 2
	if titK > 20 and titK <= 25:tits = 3
	if titK > 25 and titK <= 30:tits = 4
	if titK > 30 and titK <= 35:tits = 5
	if titK > 35:tits = 6
elseif dounspell = 1:
	fat = 0
	bedra = bedraDoun
	talia = TaliaDoun
	grudi = talia + 14 + silicone
	ves = TaliaDoun
	titK = grudi - talia

	if titK <= 10:tits = 0
	if titK > 10 and titK <= 15:tits = 1
	if titK > 15 and titK <= 20:tits = 2
	if titK > 20 and titK <= 25:tits = 3
	if titK > 25 and titK <= 30:tits = 4
	if titK > 30 and titK <= 35:tits = 5
	if titK > 35:tits = 6
end

if hapri = 0:$hapri = '<b>спутавшиеся</b>'
if hapri = 1:$hapri = 'аккуратно уложенные'

if shorthair = 0:
	if hcol = 0 and curly <= 0:$hair = 'У вас <<$hapri>> прямые, черные волосы.'
	if hcol = 1 and curly <= 0:$hair = 'У вас <<$hapri>> прямые, русые волосы.'
	if hcol = 2 and curly <= 0:$hair = 'У вас <<$hapri>> прямые, рыжие волосы.'
	if hcol = 3 and curly <= 0:$hair = 'У вас <<$hapri>> прямые, светлые волосы.'
	if hcol = 0 and curly > 0:$hair = 'У вас <<$hapri>> кудрявые, черные волосы.'
	if hcol = 1 and curly > 0:$hair = 'У вас <<$hapri>> кудрявые, русые волосы.'
	if hcol = 2 and curly > 0:$hair = 'У вас <<$hapri>> кудрявые, рыжие волосы.'
	if hcol = 3 and curly > 0:$hair = 'У вас <<$hapri>> кудрявые, светлые волосы.'
elseif shorthair = 1:
	hapri = 1
	curly = 0
	if hcol = 0:$hair = 'У вас короткие черные волосы.'
	if hcol = 1:$hair = 'У вас короткие русые волосы.'
	if hcol = 2:$hair = 'У вас короткие рыжие волосы.'
	if hcol = 3:$hair = 'У вас короткие светлые волосы.'
end

if lip > 4:lip = 4
if lip < 0:lip = 0

if lipbalmstat > 0:
	if lip = 0:$lipbalmstat = ', блестящие от бальзама'
	if lip = 1:$lipbalmstat = ', блестящие от бальзама'
	if lip = 2:$lipbalmstat = ', блестящие и сочные от бальзама'
	if lip = 3:$lipbalmstat = 'сочные,'
	if lip = 4:$lipbalmstat = ', лоснящиеся'
else
	$lipbalmstat = ''
end

if pirsA = 1:$pirsA = 'Иногда при разговоре в вашем рту виден <a href="exec:dynamic $dipirsA">пирсинг языка</a>.'
if pirsA = 0:$pirsA = ''
if pirsB = 1:$pirsB = 'Нижняя губа проколота и в нее вдето кольцо.'
if pirsB = 0:$pirsB = ''

if lip = 0:$lip = 'У вас тонкие <<$lipbalmstat>> губы. <<$pirsB>> <<$pirsA>>' & $liptalk = 'тонкими губами' & $liptalk2 = 'тонким губам' & $liptalk3 = 'тонкие губы'
if lip = 1:$lip = 'У вас нормальные <<$lipbalmstat>> губы. <<$pirsB>> <<$pirsA>>' & $liptalk = 'нежными губами' & $liptalk2 = 'нежным губам' & $liptalk3 = 'нежные губы'
if lip = 2:$lip = 'У вас пухленькие <<$lipbalmstat>> губы. <<$pirsB>> <<$pirsA>>' & $liptalk = 'пухленькими губами' & $liptalk2 = 'пухленьким губам' & $liptalk3 = 'пухленькие губы'
if lip = 3:$lip = 'У вас крупные, <<$lipbalmstat>> пухлые губы. <<$pirsB>> <<$pirsA>>' & $liptalk = 'пухлыми губами' & $liptalk2 = 'пухлым губам' & $liptalk3 = 'пухлые губы'
if lip = 4:$lip = 'У вас толстые и огромные <<$lipbalmstat>> губы. <<$pirsB>> <<$pirsA>>' & $liptalk = 'толстыми губами' & $liptalk2 = 'толстым губам' & $liptalk3 = 'толстые губы'

if tan <= 0:$tan = 'бледная'
if tan > 0:$tan = 'загорелая'

if skin > 4:skin = 4
if skin < 0:skin = 0

if pirsC = 1:$pirsC = 'В ушах болтаются сережки.'
if pirsC = 0:$pirsC = ''
if pirsD = 1:$pirsD = 'В ваш нос вставлено кольцо.'
if pirsD = 0:$pirsD = ''
if pirsE = 1:$pirsE = 'Ваша бровь проколота и туда вставлена штанга.'
if pirsE = 0:$pirsE = ''

if skin = 0:$skin = 'Ваша <<$tan>> кожа не ровная и покрыта прыщами и черными точками. <<$pirsC>> <<$pirsD>> <<$pirsE>>'
if skin = 1:$skin = 'Ваша <<$tan>> кожа не ровная и кое где видно прыщики. <<$pirsC>> <<$pirsD>> <<$pirsE>>'
if skin = 2:$skin = 'Ваша <<$tan>> кожа не ровная, но прыщей не видно. <<$pirsC>> <<$pirsD>> <<$pirsE>>'
if skin = 3:$skin = 'У вас <<$tan>>, гладкая и ухоженная кожа. <<$pirsC>> <<$pirsD>> <<$pirsE>>'
if skin = 4:$skin = 'У вас <<$tan>>, гладкая как стекло и шелковистая на ощупь кожа. <<$pirsC>> <<$pirsD>> <<$pirsE>>'

if glacol = 0:$glacol = 'карие'
if glacol = 1:$glacol = 'серые'
if glacol = 2:$glacol = 'зеленые'
if glacol = 3:$glacol = 'голубые'

if resnic > 2:resnic = 2
if resnic = 0:$resnic = 'с короткими ресницами'
if resnic = 1:$resnic = 'с нормальной длинны ресницами'
if resnic = 2:$resnic = 'с длинными ресницами'

if brow = 0 and browper = 0:$brow = 'немного не аккуратные брови'
if brow > 0 and browper = 0:$brow = 'ухоженные брови' & brokoef = 1
if browper > 0:$brow = 'перманентный татуаж бровей' & brokoef = 2

if glass <= 0:$glass = '' & glassvnesh = 0
if glass = 1:$glass = ' Вы носите дурацкие очки в дешевой оправе.' & glassvnesh = 10
if glass = 2:$glass = ' Вы носите очки.' & glassvnesh = 5

if glaraz > 3:glaraz = 3
if glaraz = 0:$glaza = 'У вас маленькие <<$glacol>> глаза, <<$resnic>> и <<$brow>>.<<$glass>>'
if glaraz = 1:$glaza = 'У вас выразительные <<$glacol>> глаза, <<$resnic>> и <<$brow>>.<<$glass>>'
if glaraz = 2:$glaza = 'У вас большие <<$glacol>> глаза, <<$resnic>> и <<$brow>>.<<$glass>>'
if glaraz = 3:$glaza = 'У вас огромные <<$glacol>> глаза, <<$resnic>> и <<$brow>>.<<$glass>>'

if mop = 0:$mop = '<b><font color = red>У вас потек макияж.</font></b>'
if mop = 1:$mop = 'У вас нет макияжа'
if mop = 2:$mop = 'У вас легкий макияж'
if mop = 3:$mop = 'У вас нормальный макияж'
if mop = 4:$mop = 'У вас яркий, вызывающий макияж'

if leghair <= 0:legkoef = 3 & $leghair = 'У вас гладкие ноги.'
if leghair > 0 and leghair <= 2:legkoef = 0 & $leghair = 'У вас не видимая глазу но шершавая на ощупь щетина на ногах.'
if leghair > 2 and leghair <= 5:legkoef = 0 & $leghair = 'У вас отчетливо видимые тонкие волосики на ногах.'
if leghair > 5:legkoef = 0 & $leghair = 'У вас длинные выделяющиеся волосы на ногах.'

if pirsG = 1:$pirsG = 'На губах влагалища висят колечки.'
if pirsG = 0:$pirsG = ''

if lobok <= 0:lobkoef = 3 & $lobok = 'У вас гладкий, <a href="exec:view''images/picb/pussy.jpg''">выбритый лобок</a>. <<$pirsG>>'
if lobok > 0 and lobok <= 2:lobkoef = 0 & $lobok = 'У вас <a href="exec:view''images/picb/spussy.jpg''">не большая щетина на лобке</a>. <<$pirsG>>'
if lobok > 2:lobkoef = 0 & $lobok = 'У вас <a href="exec:view''images/picb/hpussy.jpg''">волосатый лобок</a>. <<$pirsG>>'

bodytipe = bedra - talia
if bodytipe < 20:bodykoef = 0
if bodytipe >= 20 and bodytipe < 25:bodykoef = 2
if bodytipe >= 25 and bodytipe < 30:bodykoef = 4
if bodytipe >= 30 and bodytipe < 35:bodykoef = 8
if bodytipe >= 35:bodykoef = 4
if tan > 0:tanKoef = 1
if tan = 0:tanKoef = 0

if curly > 0:curlykoef = 1
if curly = 0:curlykoef = 0

if sweat <= 0:sweatKoef = 0
if sweat > 0:sweatKoef = sweat*5

if lipbalmstat > 0:
	lipbalmKoef = 1
else
	lipbalmKoef = 0
end

if vidage < 21:vidagebonus = 0
if vidage >= 21 and vidage < 26:vidagebonus = 1
if vidage >= 26 and vidage < 30:vidagebonus = 3
if vidage >= 30 and vidage < 34:vidagebonus = 6
if vidage >= 34 and vidage < 36:vidagebonus = 9
if vidage >= 36 and vidage < 38:vidagebonus = 12
if vidage >= 38 and vidage < 40:vidagebonus = 16
if vidage >= 40 and vidage < 45:vidagebonus = 25
if vidage >= 45:vidagebonus = 50

if age < 18:leghair = -5

vnesh = (curlykoef + tits + lip + tanKoef + skin + mop + resnic + glaraz + bodykoef + legkoef + lobkoef + odevnesh + hapri + bonusZ + lipbalmKoef + brokoef) - (sweatKoef+vidagebonus) - (zub*2) - glassvnesh

if vnesh < 0:vnesh = 0
	if StrongNarkota <= 0:
	if SNarkTimes >= 3 and SLomka = 0:SLomka = 1
	if Gerpes >= 3 or Sifilis >= 21 or Triper > 2:vnesh = -10
end

if StrongNarkota > 0:
	if SLomka > 0:SLomka = 0
	manna = (intel*magik) + magik*100 + vital*10 + rikudo
end

if vnesh = -10:$vnesh = 'У вас заметны признаки венерического заболевания. Поэтому парни разбегаются в ужасе.'
if vnesh < 5 and vnesh > -10:$vnesh = 'У вас страшная внешность. Парни от вас шарахаются.'
if vnesh >= 5 and vnesh < 15:$vnesh = 'У вас серенькая внешность. Парни практически вас не замечают.'
if vnesh >= 15 and vnesh < 30:$vnesh = 'У вас симпатичная внешность. Парни частенько обращают на вас внимание.'
if vnesh >= 30 and vnesh < 50:$vnesh = 'У вас сногсшибательная внешность. Парни постоянно оборачиваются видя вас.'
if vnesh >= 50:$vnesh = 'У вас просто божественная внешность. Парни сами падают к вашим ногам.'

!!!!!!!!!!
!!!ТЕЛО!!!
!!!!!!!!!!
musle = strenbuf + vitalbuf
if musle >= salo:
	!мускулистый тип
	if bedra < 60:
		$body = 'Вы очень худы, жира на теле практически нет, через кожу выступают мышцы.'
	elseif bedra >= 60 and bedra < 70:
		$body = 'Вы очень худы, жира на теле практически нет, через кожу выступают мышцы.'
	elseif bedra >= 70 and bedra < 80:
		$body = 'Вы худы, жира на теле практически нет, через кожу выступают мышцы.'
	elseif bedra >= 80 and bedra < 90:
		$body = 'Вы худы, жира на теле практически нет, через кожу выступают мышцы.'
	elseif bedra >= 90 and bedra < 100:
		$body = 'Вы худы, жира на теле практически нет, через кожу выступают крупные мышцы.'
	elseif bedra >= 100 and bedra < 110:
		$body = 'Жира на теле практически нет, через кожу выступают крупные мышцы.'
	elseif bedra >= 110 and bedra < 120:
		$body = 'Жира на теле практически нет, через кожу выступают массивные мышцы.'
	elseif bedra >= 120:
		$body = 'Жира на теле практически нет, через кожу выступают массивные мышцы.'
	end
elseif musle < salo:
	!жирный тип
	if bedra < 60:
		$body = 'Вы очень худы и у вас практически полностью отсутствуют мышцы.'
	elseif bedra >= 60 and bedra < 70:
		$body = 'Вы очень тонкая девушка, с маленькой мягкой попой и у вас практически полностью отсутствуют мышцы.'
	elseif bedra >= 70 and bedra < 80:
		$body = 'Вы очень стройная девушка.'
	elseif bedra >= 80 and bedra < 90:
		$body = 'Вы стройная девушка.'
	elseif bedra >= 90 and bedra < 100:
		$body = 'Вы фигуристая девушка.'
	elseif bedra >= 100 and bedra < 110:
		$body = 'Вы формастая девушка.'
	elseif bedra >= 110 and bedra < 120:
		$body = 'Вы жирноватая девушка.'
	elseif bedra >= 120:
		$body = 'Вы очень жирны.'
	end
end

$fat = $body
--- body ---------------------------------

