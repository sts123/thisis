# onobjsel
$din_show_tits = {
	view
	view 'images/picb/t<<tits>>.jpg'
}

!$objbody

$objdescrip = {
	clr
	pl'Вас зовут <<$name>> <<$surname>>.'
	pl'Вам <<age>> <<$letgoda>>, на вид вам можно дать не больше <<vidage>> <<$letgoda2>>.'
	if birthday > 0 and birthmonth > 0:pl'Дата вашего рождения <<birthday>>.0<<birthmonth>>.<<birthyear>>г.'
	pl'Рост <<rost>> см, вес <<ves>> кг.'
	pl'<<$body>>'
	pl'<a href="exec:dynamic $objbody"><<grudi>> - <<talia>> - <<bedra>></a>, <a href="exec:dynamic $din_show_tits">размер груди <<tits>></a>, разница между бедрами и талией <<bedra-talia>> см'
	pl'<<$anus>>'
	pl'<<$vnesh>>'
	pl'<<$hair>>'
	pl'<<$lip>>'
	pl'<<$throat>>'
	pl'<<$skin>>'
	pl'<<$glaza>>'
	pl'<<$mop>>'
	pl'<<$leghair>>'
	pl'<<$lobok>>'
	pl'<<$vagina>>'
	nl
	if salo = 0 and musle > 0 and dounspell = 0:pl'<b><font color = red>У вас начинается дистрофия.</font></b>'
	if salo = 0 and musle = 0 and dounspell = 0:pl'<b><font color = red>У вас дистрофия.</font></b>'
	if curly > 0:pl'Завивки хватит еще на <<curly>> дней.'
	if zub = 1:$zuba = ' зуба'
	if zub >= 2:$zuba = 'х зубов'
	if zub > 0:pl'У вас не хватает <<zub>><<$zuba>>.'
	!pl'vnesh <<vnesh>>'
	!pl'curlykoef <<curlykoef>> максимально 1'
	!pl'tits <<tits>> максимально 6'
	!pl'lip <<lip>> максимально 4'
	!pl'tanKoef <<tanKoef>> максимально 1'
	!pl'skin <<skin>> максимально 4'
	!pl'mop <<mop>> максимально 4'
	!pl'resnic <<resnic>> максимально 2'
	!pl'glaraz <<glaraz>> максимально 3'
	!pl'bodykoef <<bodykoef>> максимально 8'
	!pl'legkoef <<legkoef>> максимально 3'
	!pl'lobkoef <<lobkoef>> максимально 3'
	!pl'odevnesh <<odevnesh>> максимально 15'
	!pl'sweat <<sweat>> максимально 0'
	!pl'hapri <<hapri>> максимально 1'
}

$objskills = {
	clr
	!if salo > musle*4:$fat = 'У вас рыхлое жирное тело'
	!if salo <= musle*4 and fat > musle*2:$fat = 'Ваше тело мягкое, но все еще упругое.'
	!if salo <= musle*2 and fat > musle:$fat = 'Вы нормальной комплекции.'
	!if salo <= musle and fat >= musle/2:$fat = 'Вы худенькая и подтянутая.'
	!if salo < musle/2:$fat = 'Вы очень худы, мышцы сильно выделяются на теле.'
	pl'Привлекательность <<vnesh>>'
	pl'Сила <<stren>>'
	pl'Скорость <<speed>>'
	pl'Ловкость <<agil>>'
	pl'Выносливость <<vital>>'
	pl'Интеллект <<intel>>'
	pl'Сила воли <<will>>'
	pl'Реакция <<react>>'
	pl'<<$fat>>'
	!pl'Безстыдство <<shameless>>'
	if SUB > 0:pl'Подчиненность <<SUB>>'
	if DOM > 0:pl'Доминантность <<DOM>>'
	!pl'Мышцы <<$musle>>'
	if magik > 0:pl'Магичность <<magik>>'
	if Jab > 0:pl'Джебы - <<Jab>>'
	if Punch > 0:pl'Силовые удары - <<Punch>>'
	if Kik > 0:pl'Удары ногами - <<Kik>>'
	if KikDef > 0:pl'Защита от ударов - <<KikDef>>'
	if beg > 0:pl'Навык бега - <<beg>>'
	if volleyboll > 0:pl'Навык воллейбола - <<volleyboll>>'
	if oficiant > 0:pl'Навыки официантки - <<oficiant>>'
	if vokal > 0:pl'Вокальные навыки <<vokal>>'
	if dance > 0:pl'Навык танца - <<dance>>'
	if dancePRO > 0:pl'Навык профессионального танца - <<dancePRO>>'
	if stripdance > 0:pl'Навык танцевального стриптиза - <<stripdance>>'
	if poledance > 0:pl'Навык танца на шесте - <<poledance>>'
	if shoot > 0:pl'Навык стрельбы - <<shoot>>'
	if kid = 1:pl'У вас есть ребенок, <<$polreb[1]>> по имени <<$kidname[1]>>. Дата рождения <<daykid[1]>>.<<monthkid[1]>>.<<yearkid[1]>>г. Возраст <<kidage[1]>>'

	if workPTU > 1:pl'Репутация учителя <<teachlevel>>'

	if SchoolAtestat = 0 and StoryLine > 0:
		if Suspeh >= 90:pl'В школе вы круглая отличница.'
		if Suspeh >= 80 and Suspeh < 90:pl'В школе вы учитесь в основном на отлично, но встречаются и четверки.'
		if Suspeh >= 70 and Suspeh < 80:pl'В школе вы учитесь на твердые четверки, среди которых иногда встречаются и пятерки.'
		if Suspeh >= 60 and Suspeh < 70:pl'В школе вы учитесь в основном на четверки и тройки, пятерки очень редки в вашем дневнике.'
		if Suspeh >= 50 and Suspeh < 60:pl'В школе вы учитесь на тройки, иногда проскакивают и четверки.'
		if Suspeh >= 40 and Suspeh < 50:pl'В школе вы учитесь плохо, вам с трудом удается исправлять двойки тройками.'
		if Suspeh < 40:pl'В школе вы учитесь отвратительно, в основном идут одни двойки.'
		if schoolprogul > 1:pl'Прогулов в школе <<schoolprogul>>'
	end
}

$objstatistika = {
	clr
	if opPRE = 0:pl'Прошло <<daystart>> дней с начала игры.'
	if BuyHous = 2 and ArendHouseSL > 0:pl'Квартира в спальном районе арендована на <<ArendHouseSL>> дней.'
	if KikWinPro > 0 or KikLossPro > 0 or KikDrawPro > 0:pl'Профессиональный рекорд. Победы-Поражения-Ничьи (Победы нокаутом)'
	if KikWinPro > 0 or KikLossPro > 0 or KikDrawPro > 0:pl'<<KikWinPro>> - <<KikLossPro>> - <<KikDrawPro>> (<<KikKOPro>> КО)'
	if Win > 0 or Loss > 0:pl'Побед в драках <<Win>>, поражений в драках <<Loss>>'
	if KisameDead = 1:pl'Вы убили Кисаме.'
	nl
	if razradKik > 0:pl'<<$razradKik>>'
	if KikWinAm > 0:pl'Побед в кикбоксинге среди любителей - <<KikWinAm>>'
	if KikLossAm > 0:pl'Поражений в кикбоксинге среди любителей - <<KikLossAm>>'
	if KikDrawAm > 0:pl'Ничьих в кикбоксинге среди любителей - <<KikDrawAm>>'
	if razradKik > 0:
		if razradKik = 1:$razradKik = 'У вас III любительский разряд по кикбоксингу'
		if razradKik = 2:$razradKik = 'У вас II любительский разряд по кикбоксингу'
		if razradKik = 3:$razradKik = 'У вас I любительский разряд по кикбоксингу'
		if razradKik = 4:$razradKik = 'У вас звание Кандидата в Мастера Спорта по кикбоксингу'
		if razradKik = 5:$razradKik = 'У вас звание Мастера Спорта по кикбоксингу'
	end
	nl
	if kolsorev > 0:pl'<<kolsorev>> раз принимали участие в соревнованиях по бегу'
	if bronzebeg > 0:pl'<<bronzebeg>> - бронзовых медалей по бегу'
	if silverbeg > 0:pl'<<silverbeg>> - серебряных медалей по бегу'
	if goldbeg > 0:pl'<<goldbeg>> - золотых медалей по бегу'
	if razradbegEB > 0:pl'<<razradbegEB>> кратный бронзовый призер чемпионата Европы'
	if razradbegES > 0:pl'<<razradbegES>> кратный вице чемпион Европы'
	if razradbegEG > 0:pl'<<razradbegEG>> кратный чемпион Европы.'
	if razradbeg > 0:
		if razradbeg = 1:pl'У вас 3й спортивный разряд по бегу'
		if razradbeg = 2:pl'У вас 2й спортивный разряд по бегу'
		if razradbeg = 3:pl'У вас 1й спортивный разряд по бегу'
		if razradbeg = 4:pl'У вас звание Кандидата в Мастера Спорта по бегу'
		if razradbeg = 5:pl'У вас звание Мастера Спорта по бегу'
		if razradbeg >= 6:pl'У вас звание Мастера Спорта Международного класса по бегу'
	end
	nl
	if nastjaQW > 0:pl 'Дружба с Настей <<nastjaQW>>'
	if kat > 0:pl'Дружба с Катей <<kat>>'
	if vika > 0:pl'Дружба с Викой <<vika>>'
	if Irina > 0:pl'Дружба с Ириной <<Irina>>'
	if Tamara > 0:pl'Дружба с Тамарой <<Tamara>>'
	if alla > 0:pl'Дружба с Аллой <<alla>>'
	if masha > 0:pl'Дружба с Машей <<masha>>'
	if Givi > 0:pl'Дружба с Гиви Карапетовичем <<Givi>>'
	if Ashot > 0:pl'Дружба с Ашотом <<Ashot>>'
	if Dmitry > 0:pl'Дружба с Димой <<Dmitry>>'
	if afra > 0:pl'Дружба с неграми <<afra>>'
	nl
	if exhibi > 0:pl'Опыт эксгибиционизма <<exhibi>>'
	if maxdamage > 0:pl'Сила удара на силомере <<maxdamage>> кгс'
	nl
	if modelfoto > 0:pl'Вы снимались обнаженной <<modelfoto>> раз'
	if stripdancesum > 0:pl'<<stripdancesum>> раз танцевали стриптиз в клубе'
	if profiDanceTime > 0:pl'Вы <<profiDanceTime>> раз профессионально танцевали.'
	nl
	if SchoolAtestat = 1:pl'Вы закончили школу.'
	if diplom = 1:pl'Вы закончили университет.'
	if teachlevel > 0:pl'Ваш авторитет как учителя <<teachlevel>>'
	nl
	if mastr > 0:pl'Мастурбировали <<mastr>> раз'
	if throat > 0:pl'Вместимость горла <<throat>>'
	if vagina > 0:pl'Эластичность вагины <<vagina>>'
	if vagina = 0 and sex = 0:pl'У вас девственная плева'
	if anus > 0:pl'Растянутость ануса <<anus>>'
	nl
	if GorSlut > 0:
		if GorSlut = 1:pl'В городке вас знают как давалку.'
		if GorSlut = 2:pl'В городке вас знают как вафлершу бравшую в рот.'
		if GorSlut = 3:pl'В городке вас знают как вафлершу отсосавшую несколько хуев сразу.'
		if GorSlut = 4:pl'В городке вас знают как давалку которую трахали сразу несколько пацанов.'
		if GorSlut = 5:pl'В городке вас знают как конченную шлюху с которой можно делать все, что угодно.'
		if GorSlut = 6:pl'В городке вас знают как проститутку готовую за деньги на любую мерзость.'
	end
	if guy > 0:pl'У вас было <<guy>> парней.'
	if divorced > 0:pl'У вас было <<divorced>> мужей.'
	if suprdolg > 0:pl'Выполняли супружеский долг с мужем <<suprdolg>> раз'
	if gang > 0:pl'Групповой секс <<gang>> раз'
	if sex > 0 and sexa = 0:pl'вагинальный секс <<sex>> раз'
	if sex > 0 and sexa > 0:pl'вагинальный секс <<sex>> раз из них <<sexa>> раз со своим парнем'
	if bj > 0:
		if gloryhole = 0 and eggs = 0 and bja = 0:pl'минетов сделано <<bj>> раз'
		if gloryhole = 0 and eggs = 0 and bja > 0:pl'минетов сделано <<bj>> раз, из них <<bja>> раз своему парню'
		if gloryhole > 0 and eggs = 0 and bja = 0:pl'минетов сделано <<bj>> раз, из них вы <<gloryhole>> раз отсосали у незнакомцев через дыру в стене.'
		if gloryhole > 0 and eggs = 0 and bja > 0:pl'минетов сделано <<bj>> раз, из них вы <<gloryhole>> раз отсосали у незнакомцев через дыру в стене. Так же из них <<bja>> раз своему парню'
		if gloryhole = 0 and eggs > 0 and bja = 0:pl'минетов сделано <<bj>> раз, яиц обсосали <<eggs>> раз.'
		if gloryhole = 0 and eggs > 0 and bja > 0:pl'минетов сделано <<bj>> раз, яиц обсосали <<eggs>> раз. Так же из них <<bja>> раз своему парню'
		if gloryhole > 0 and eggs > 0 and bja = 0:pl'минетов сделано <<bj>> раз, из них вы <<gloryhole>> раз отсосали у незнакомцев через дыру в стене. Яиц обсосали <<eggs>> раз.'
		if gloryhole > 0 and eggs > 0 and bja > 0:pl'минетов сделано <<bj>> раз, из них вы <<gloryhole>> раз отсосали у незнакомцев через дыру в стене. Яиц обсосали <<eggs>> раз. Так же из них <<bja>> раз своему парню'
	end
	if hj > 0:
		if hja = 0:pl'Дрочили парням <<hj>> раз'
		if hja > 0:pl'Дрочили парням <<hj>> раз из них <<hja>> раз дрочили своему парню'
	end
	if hump > 0:pl'Об вас дрочили член <<hump>> раз'
	if rape > 0:pl'Вас изнасиловали <<rape>> раз'
	if anal > 0:
		if anala = 0:pl'Анальный секс <<anal>> раз'
		if anala > 0:pl'Анальный секс <<anal>> раз из них <<anala>> раз со своим парнем'
	end
	if kuni > 0:pl'Вам сделали кунилингус <<kuni>> раз'
	if asslick > 0:pl'Вы лизали жопу <<asslick>> раз'
	if pegging > 0:pl'Пеггинг <<pegging>> раз'
	if spank > 0:pl'Вам напороли задницу <<spank>> раз'
	nl
	if slutty > 0:
		if bordelslutty = 0:pl'Продавали свою любовь <<slutty>> раз.'
		if bordelslutty > 0:pl'Продавали свою любовь <<slutty>> раз, из них в борделе <<bordelslutty>> раз.'
	end
	if pfilmSTOP = 1:pl'<<$pfilmstory_new>>'
	if film > 0:pl'В порно индустрии вас знают под именем <<$pfname>>. Вы снимались в порнухе <<film>> раз. <<$pfilmhistory>>'
	if orgasm > 0:pl'Испытали оргазм <<orgasm>> раз. Из них <<vaginalOrgasm>> вагинальных оргазмов во время секса.'
	if analorgasm > 0:pl 'Из них <<analorgasm>> анальных оргазмов'
	if swallow > 0:pl'Спермы проглочено <<swallow>> раз'
	if facial > 0:pl'Кончили на лицо <<facial>> раз'
	if frot > 0:pl'Кончили на вас в транспорте <<frot>> раз'
	if VAF > 0:pl'Вафлизм <<VAF>>'
	if zoo > 0:pl'Занимались сексом с животными <<zoo>> раз.'
	if pee > 0:pl'Вас обоссали <<pee>> раз.'
	if swallowpee > 0:pl'Вы глотали мочу <<swallowpee>> раз.'
	nl
	if girl > 0:pl'У вас было <<girl>> девушек.'
	if lesbian > 0:pl'Вы занимались леcбийским сексом <<lesbian>> раз.'
	if sexfuta > 0:pl'Вы <<sexfuta>> раз занимались сексом с членодевкой.'
}

$din_exhibiTakeOffBimbo = {
	cloth_vid = 0
	gs'stat'
	'Вы сняли наряд бимбо'
}

$din_exhibiHideNewCloth = {
	exhibiHideNewCloth = 1
	gs'stat'
}

$din_cheat_work = {
	if cheatWork = 0:
		cheatWork = 1
		dynamic $din_cheat_menu_permanent
		exit
	elseif cheatWork = 1:
		cheatWork = 0
		dynamic $din_cheat_menu_permanent
	end
}

$din_cheat_hapri = {
	if cheatHapri = 0:
		cheatHapri = 1
		dynamic $din_cheat_menu_permanent
		exit
	elseif cheatHapri = 1:
		cheatHapri = 0
		dynamic $din_cheat_menu_permanent
	end
}

$din_cheat_klisma = {
	if cheatKlisma = 0:
		cheatKlisma = 1
		dynamic $din_cheat_menu_permanent
		exit
	elseif cheatKlisma = 1:
		cheatKlisma = 0
		dynamic $din_cheat_menu_permanent
	end
}

$din_cheat_nomakeup = {
	if cheatNomakeup = 0:
		cheatNomakeup = 1
		dynamic $din_cheat_menu_permanent
		exit
	elseif cheatNomakeup = 1:
		cheatNomakeup = 0
		dynamic $din_cheat_menu_permanent
	end
}

$din_cheat_Nosweat = {
	if cheatNosweat = 0:
		cheatNosweat = 1
		dynamic $din_cheat_menu_permanent
		exit
	elseif cheatNosweat = 1:
		cheatNosweat = 0
		dynamic $din_cheat_menu_permanent
	end
}

$din_cheat_NoEat = {
	if cheatNoEat = 0:
		cheatNoEat = 1
		dynamic $din_cheat_menu_permanent
		exit
	elseif cheatNoEat = 1:
		cheatNoEat = 0
		dynamic $din_cheat_menu_permanent
	end
}

$din_cheat_age = {
	age = input("Сколько вам теперь лет?")
	if age <= 15:age = 15
	dynamic $din_cheat_menu_look
}

$din_cheat_agel = {
	vidage = input("На сколько лет вы хотите выглядеть?")
	if vidage <= 14:vidage = 14
	dynamic $din_cheat_menu_look
}

$din_cheat_money = {
	money = input("Сколько денег вы хотите иметь?")
	if money < 0:money = 0
	dynamic $objcheat_menu
}

$din_cheat_menu_permanent = {
	gs'stat'
	clr
	if cheatWork = 0:$cheatWork = 'ВЫКЛЮЧЕНО'
	if cheatWork = 1:$cheatWork = '<b>ВКЛЮЧЕНО</b>'
	if cheatHapri = 0:$cheatHapri = 'ВЫКЛЮЧЕНО'
	if cheatHapri = 1:$cheatHapri = '<b>ВКЛЮЧЕНО</b>'
	if cheatKlisma = 0:$cheatKlisma = 'ВЫКЛЮЧЕНО'
	if cheatKlisma = 1:$cheatKlisma = '<b>ВКЛЮЧЕНО</b>'
	if cheatNomakeup = 0:$cheatNomakeup = 'ВЫКЛЮЧЕНО'
	if cheatNomakeup = 1:$cheatNomakeup = '<b>ВКЛЮЧЕНО</b>'
	if cheatNosweat = 0:$cheatNosweat = 'ВЫКЛЮЧЕНО'
	if cheatNosweat = 1:$cheatNosweat = '<b>ВКЛЮЧЕНО</b>'
	if cheatNoEat = 0:$cheatNoEat = 'ВЫКЛЮЧЕНО'
	if cheatNoEat = 1:$cheatNoEat = '<b>ВКЛЮЧЕНО</b>'
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a></center>'
	pl''
	pl'<a href="exec:dynamic $din_cheat_work">Отключить требование трудовой</a>: <<$cheatWork>>'
	pl'<a href="exec:dynamic $din_cheat_hapri">Всегда причесанная</a>: <<$cheatHapri>>'
	pl'<a href="exec:dynamic $din_cheat_klisma">Всегда сделана клизма</a>: <<$cheatKlisma>>'
	pl'<a href="exec:dynamic $din_cheat_nomakeup">Косметика никогда не размазывается</a>: <<$cheatNomakeup>>'
	pl'<a href="exec:dynamic $din_cheat_Nosweat">Никогда не потеть</a>: <<$cheatNosweat>>'
	pl'<a href="exec:dynamic $din_cheat_NoEat">Никогда не есть и не пить</a>: <<$cheatNoEat>>'
}

$din_cheat_menu_look = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a></center>'
	pl''
	pl'<a href="exec:dynamic $din_cheat_menu_param">Показать расчетные параметры тела</a>'
	pl''
	pl'<a href=>Сейчас вам <<age>> лет</a>'
	if age >= 0:pl'<a href="exec:dynamic $din_cheat_age">Изменить возраст</a>'
	pl'<a href=>Вы выглядите на <<vidage>> лет</a>'
	if vidage >= 0:pl'<a href="exec:dynamic $din_cheat_agel">Изменить Видимый возраст</a>'
	pl''
	pl'<<$lip>>'
	if lip < 4:pl'<a href="exec:lip += 1 & dynamic $din_cheat_menu_look">Увеличить губы</a>'
	if lip > 0:pl'<a href="exec:lip -= 1 & dynamic $din_cheat_menu_look">Уменьшить губы</a>'
	pl''
	pl'<<$skin>>'
	if skin < 4:pl'<a href="exec:skin += 1 & dynamic $din_cheat_menu_look">Улучшить кожу</a>'
	if skin > 0:pl'<a href="exec:skin -= 1 & dynamic $din_cheat_menu_look">Ухудшить кожу</a>'
	if tan >= 0:pl'<a href="exec:tan += 10 & dynamic $din_cheat_menu_look">Загореть</a>'
	if tan > 0:pl'<a href="exec:tan = 0 & dynamic $din_cheat_menu_look">Убрать загар</a>'
	pl''
	pl'<<$glaza>>'
	if resnic < 2:pl'<a href="exec:resnic += 1 & dynamic $din_cheat_menu_look">Увеличить ресницы</a>'
	if resnic > 0:pl'<a href="exec:resnic -= 1 & dynamic $din_cheat_menu_look">Уменьшить ресницы</a>'
	if glaraz < 3:pl'<a href="exec:glaraz += 1 & dynamic $din_cheat_menu_look">Увеличить размер глаз</a>'
	if glaraz > 0:pl'<a href="exec:glaraz -= 1 & dynamic $din_cheat_menu_look">Уменьшить размер глаз</a>'
	pl''
	if salo ! fat:pl'<a href="exec:fat = salo & dynamic $din_cheat_menu_look">Сбалансировать жир</a>'
	if salo > 0:pl'<a href="exec:salo -= 5 & fat = salo & dynamic $din_cheat_menu_look">Уменьшить жир</a>'
	if salo > 0:pl'<a href="exec:salo = 0 & fat = salo & dynamic $din_cheat_menu_look">Обнулить жир</a>'
	pl'Жир (<<salo>>): <a href="exec:salo += 5 & fat = salo & dynamic $din_cheat_menu_look">+5</a> <a href="exec:salo += 10 & fat = salo & dynamic $din_cheat_menu_look">+10</a> <a href="exec:salo += 25 & fat = salo & dynamic $din_cheat_menu_look">+25</a> <a href="exec:salo += 50 & fat = salo & dynamic $din_cheat_menu_look">+50</a>'
	pl''
	pl'<a href="exec:dynamic $din_cheat_menu_tatoo">Удаление Татуировок</a>'
}

$din_cheat_menu_param = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a> - <a href="exec:dynamic $din_cheat_menu_look"><b>Внешний Вид</b></a></center>'
	pl''
	pl'<<strenbuf>> - strenbuf'
	pl'<<vitalbuf>> - vitalbuf'
	pl'<<vmeat>> - vmeat'
	pl'<<vfat>> - vfat'
	pl'<<Kves>> - Kves'
	pl'<<krost>> - krost'
	pl'<<ves>> - ves'
	pl'<<talia>> - talia'
	pl'<<grudi>> - grudi'
	pl'<<bedra>> - bedra'
	pl'<<titK>> - titK'
	pl'<<silicone>> - silicone'
	pl'<<grudi>> - <<talia>> - <<bedra>>, размер груди <<tits>>, разница между бедрами и талией <<bedra-talia>> см'
	pl'Мускулистости <<musle>> - musle, <<salo>> - salo, <<fat>> - fat'
}

$din_cheat_menu_tatoo = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a> - <a href="exec:dynamic $din_cheat_menu_look"><b>Внешний Вид</b></a></center>'
	pl''
	if tatlip = 0:pl'У вас нет татуировки на губах</a>'
	if tatlip >= 1:pl'<a href="exec:tatlip = 0 & dynamic $din_cheat_menu_tatoo">Свести татуировку с губ</a>'
	if tatplech = 0:pl'У вас нет татуировки на плечах</a>'
	if tatplech >= 1:pl'<a href="exec:tatplech = 0 & dynamic $din_cheat_menu_tatoo">Свести татуировку с плечей</a>'
	if tatback = 0:pl'У вас нет татуировки на спине</a>'
	if tatback >= 1:pl'<a href="exec:tatback = 0 & dynamic $din_cheat_menu_tatoo">Свести татуировку со спины</a>'
	if tatupb = 0:pl'У вас нет татуировки на пояснице</a>'
	if tatupb >= 1:pl'<a href="exec:tatupb = 0 & dynamic $din_cheat_menu_tatoo">Свести татуировку с поясницы</a>'
	if tatvag = 0:pl'У вас нет татуировки в паху</a>'
	if tatvag >= 1:pl'<a href="exec:tatvag = 0 & dynamic $din_cheat_menu_tatoo">Свести татуировку с паха</a>'
	if tatleg = 0:pl'У вас нет татуировки на лодыжке</a>'
	if tatleg >= 1:pl'<a href="exec:tatleg = 0 & dynamic $din_cheat_menu_tatoo">Свести татуировку с лодыжки</a>'
}

$din_cheat_menu_stats = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a></center>'
	pl''
	pl'Сила (<<stren>>): <a href="exec:stren += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:stren += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:stren += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:stren += 25 & dynamic $din_cheat_menu_stats">+25</a> <a href="exec:stren -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:stren -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:stren -= 10 & dynamic $din_cheat_menu_stats">-10</a> <a href="exec:stren -= 25 & dynamic $din_cheat_menu_stats">-25</a>'
	pl'Скорость (<<speed>>): <a href="exec:speed += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:speed += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:speed += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:speed += 25 & dynamic $din_cheat_menu_stats">+25</a> <a href="exec:speed -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:speed -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:speed -= 10 & dynamic $din_cheat_menu_stats">-10</a> <a href="exec:speed -= 25 & dynamic $din_cheat_menu_stats">-25</a>'
	pl'Ловкость (<<agil>>): <a href="exec:agil += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:agil += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:agil += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:agil += 25 & dynamic $din_cheat_menu_stats">+25</a> <a href="exec:agil -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:agil -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:agil -= 10 & dynamic $din_cheat_menu_stats">-10</a> <a href="exec:agil -= 25 & dynamic $din_cheat_menu_stats">-25</a>'
	pl'Реакция (<<react>>): <a href="exec:react += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:react += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:react += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:react += 25 & dynamic $din_cheat_menu_stats">+25</a> <a href="exec:react -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:react -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:react -= 10 & dynamic $din_cheat_menu_stats">-10</a> <a href="exec:react -= 25 & dynamic $din_cheat_menu_stats">-25</a>'
	pl'Телосложение (<<vital>>): <a href="exec:vital += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:vital += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:vital += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:vital += 25 & dynamic $din_cheat_menu_stats">+25</a> <a href="exec:vital -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:vital -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:vital -= 10 & dynamic $din_cheat_menu_stats">-10</a> <a href="exec:vital -= 25 & dynamic $din_cheat_menu_stats">-25</a>'
	pl'Воля (<<will>>): <a href="exec:will += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:will += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:will += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:will += 25 & dynamic $din_cheat_menu_stats">+25</a> <a href="exec:will -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:will -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:will -= 10 & dynamic $din_cheat_menu_stats">-10</a> <a href="exec:will -= 25 & dynamic $din_cheat_menu_stats">-25</a>'
	pl'Интелект (<<intel>>): <a href="exec:intel += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:intel += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:intel += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:intel += 25 & dynamic $din_cheat_menu_stats">+25</a> <a href="exec:intel -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:intel -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:intel -= 10 & dynamic $din_cheat_menu_stats">-10</a> <a href="exec:intel -= 25 & dynamic $din_cheat_menu_stats">-25</a>'
	pl''
	pl'Доминантность (<<dom>>): <a href="exec:dom += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:dom += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:dom += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:dom -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:dom -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:dom -= 10 & dynamic $din_cheat_menu_stats">-10</a>'
	pl'Сабмиссивность (<<sub>>): <a href="exec:sub += 1 & dynamic $din_cheat_menu_stats">+1</a> <a href="exec:sub += 5 & dynamic $din_cheat_menu_stats">+5</a> <a href="exec:sub += 10 & dynamic $din_cheat_menu_stats">+10</a> <a href="exec:sub -= 1 & dynamic $din_cheat_menu_stats">-1</a> <a href="exec:sub -= 5 & dynamic $din_cheat_menu_stats">-5</a> <a href="exec:sub -= 10 & dynamic $din_cheat_menu_stats">-10</a>'
	pl''
	if beg >= 0:pl'<a href="exec:beg += 25 & dynamic $din_cheat_menu_stats">Бег: <<beg>></a>'
	if volleyboll >= 0:pl'<a href="exec:volleyboll += 25 & dynamic $din_cheat_menu_stats">Волейбол: <<volleyboll>></a>'
	pl''
	if dance >= 0:pl'<a href="exec:dance += 25 &dynamic $din_cheat_menu_stats">Танцы: <<dance>></a>'
	if dancePRO >= 0:pl'<a href="exec:dancePRO += 25 & dynamic $din_cheat_menu_stats">Проф. Танцы: <<dancePRO>></a>'
	if stripdance >= 0:pl'<a href="exec:stripdance += 25 &dynamic $din_cheat_menu_stats">Стриптиз: <<stripdance>></a>'
	if poledance >= 0:pl'<a href="exec:poledance += 25 & dynamic $din_cheat_menu_stats">Танцы на Шесте: <<poledance>></a>'
	pl''
	if Jab >= 0:pl'<a href="exec:jab += 25 & dynamic $din_cheat_menu_stats">Джебы: <<jab>></a>'
	if Punch >= 0:pl'<a href="exec:punch += 25 & dynamic $din_cheat_menu_stats">Силовые Удары: <<punch>></a>'
	if Kik >= 0:pl'<a href="exec:kik += 25 & dynamic $din_cheat_menu_stats">Удары Ногами: <<kik>></a>'
	if KikDef >= 0:pl'<a href="exec:kikdef += 25 & dynamic $din_cheat_menu_stats">Защита: <<kikdef>></a>'
	if vokal > 0:pl'<a href="exec:vokal += 25 & dynamic $din_cheat_menu_stats">Вокальные навыки: <<vokal>></a>'
	pl''
	if workPTU > 1:pl'<a href="exec:teachlevel += 10 & dynamic $din_cheat_menu_stats">Репутация учителя: <<teachlevel>></a>'
	if suspeh >= 0:pl'<a href="exec:suspeh += 10 & dynamic $din_cheat_menu_stats">Повысить Успеваемость: <<suspeh>></a>'
	if schoolprogul >= 0:pl'<a href="exec:schoolprogul = 0 & dynamic $din_cheat_menu_stats">Обнулить Прогулы: <<schoolprogul>></a>'
	pl''
	pl'<b>Тестовые параметры</b> присутствующие в механизме игры, но не задействованные в игровых квестах:'
	if mutagenP = 0:pl'Мутаген силы <a href="exec:mutagenP = 1 & stren = 150 & dynamic $din_cheat">1й уровень</a>'
	if mutagenP = 1:pl'Мутаген силы <a href="exec:mutagenP = 2 & stren = 200 & dynamic $din_cheat">2й уровень</a>'
	if mutagenP = 2:pl'Мутаген силы <a href="exec:mutagenP = 3 & stren = 250 & dynamic $din_cheat">3й уровень</a>'
	if mutagenP > 0:pl'Мутаген силы <a href="exec:mutagenP = 0 & stren = 100 & dynamic $din_cheat">Обнулить</a>'
	if mutagenV = 0:pl'Мутаген выносливости <a href="exec:mutagenV = 1 & vital = 150 & dynamic $din_cheat">1й уровень</a>'
	if mutagenV = 1:pl'Мутаген выносливости <a href="exec:mutagenV = 2 & vital = 200 & dynamic $din_cheat">2й уровень</a>'
	if mutagenV = 2:pl'Мутаген выносливости <a href="exec:mutagenV = 3 & vital = 250 & dynamic $din_cheat">3й уровень</a>'
	if mutagenV > 0:pl'Мутаген выносливости <a href="exec:mutagenV = 0 & vital = 100 & dynamic $din_cheat">Обнулить</a>'
	if mutagenA = 0:pl'Мутаген ловкости <a href="exec:mutagenA = 1 & agil = 150 & dynamic $din_cheat">1й уровень</a>'
	if mutagenA = 1:pl'Мутаген ловкости <a href="exec:mutagenA = 2 & agil = 200 & dynamic $din_cheat">2й уровень</a>'
	if mutagenA = 2:pl'Мутаген ловкости <a href="exec:mutagenA = 3 & agil = 250 & dynamic $din_cheat">3й уровень</a>'
	if mutagenA > 0:pl'Мутаген ловкости <a href="exec:mutagenA = 0 & agil = 100 & dynamic $din_cheat">Обнулить</a>'
}

$din_cheat_menu_reputation = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a></center>'
	pl''
	if nastjaQW >= 0:pl '<a href="exec:nastjaQW += 10 & dynamic $din_cheat_menu_reputation">Дружба с Настей: <<nastjaQW>></a>'
	if kat >= 0:pl'<a href="exec:kat += 10 & dynamic $din_cheat_menu_reputation">Дружба с Катей: <<kat>></a>'
	if vika >= 0:pl'<a href="exec:vika += 10 & dynamic $din_cheat_menu_reputation">Дружба с Викой: <<vika>></a>'
	if Irina >= 0:pl'<a href="exec:Irina += 10 & dynamic $din_cheat_menu_reputation">Дружба с Ириной: <<Irina>></a>'
	if Tamara >= 0:pl'<a href="exec:Tamara += 10 & dynamic $din_cheat_menu_reputation">Дружба с Тамарой: <<Tamara>></a>'
	if alla >= 0:pl'<a href="exec:alla += 10 & dynamic $din_cheat_menu_reputation">Дружба с Аллой: <<alla>></a>'
	if masha >= 0:pl'<a href="exec:masha += 10 & dynamic $din_cheat_menu_reputation">Дружба с Машей: <<masha>></a>'
	if Givi >= 0:pl'<a href="exec:Givi += 10 & dynamic $din_cheat_menu_reputation">Дружба с Гиви Карапетовичем: <<Givi>></a>'
	if Ashot >= 0:pl'<a href="exec:Ashot += 10 & dynamic $din_cheat_menu_reputation">Дружба с Ашотом: <<Ashot>></a>'
	if Dmitry >= 0:pl'<a href="exec:Dmitry += 10 & dynamic $din_cheat_menu_reputation">Дружба с Димой: <<Dmitry>></a>'
	if afra >= 0:pl'<a href="exec:afra += 10 & dynamic $din_cheat_menu_reputation">Дружба с неграми: <<afra>></a>'
	pl''
	if GorSlut > 0:pl'В городке вы известны как <<$gnikname>> (<<GorSlut>>)'
	if GorSlut = 0:pl'У вас хорошая репутация в городке (0)'
	if GorSlut ! 1:pl'<a href="exec:GorSlut = 1 & dynamic $din_cheat_menu_reputation">Сменить репутацию на "Давалка" (1)</a>'
	if GorSlut ! 2:pl'<a href="exec:GorSlut = 2 & dynamic $din_cheat_menu_reputation">Сменить репутацию на "Вафлерша" (2)</a>'
	if GorSlut ! 3:pl'<a href="exec:GorSlut = 3 & dynamic $din_cheat_menu_reputation">Сменить репутацию на "Общая хуесоска" (3)</a>'
	if GorSlut ! 4:pl'<a href="exec:GorSlut = 4 & dynamic $din_cheat_menu_reputation">Сменить репутацию на "Общая дырка" (4)</a>'
	if GorSlut ! 5:pl'<a href="exec:GorSlut = 5 & dynamic $din_cheat_menu_reputation">Сменить репутацию на "Опущенная шалава" (5)</a>'
	if GorSlut ! 6:pl'<a href="exec:GorSlut = 6 & dynamic $din_cheat_menu_reputation">Сменить репутацию на "Проститутка" (6)</a>'
	if GorSlut > 0:pl'<a href="exec:GorSlut = 0 & dynamic $din_cheat_menu_reputation">Очистить репутацию в городке (0)</a>'
	if opusk > 0 or sipovka > 0 or rozetka > 0:pl'<a href="exec:opusk = 0 & sipovka = 0 & rozetka = 0 & dynamic $din_cheat_menu_reputation">Очистить репутацию у гопников</a>'
}

$din_cheat_menu_documents = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a></center>'
	pl''
	if diplom = 0:pl'<a href="exec:diplom = 1 & dynamic $din_cheat_menu_documents">Получить Диплом</a>'
	if diplom = 1:pl'У вас уже есть Диплом'
	if secrdiplom = 0:pl'<a href="exec:secrdiplom = 1 & dynamic $din_cheat_menu_documents">Получить Диплом Секретаря</a>'
	if secrdiplom = 1:pl'У вас уже есть Диплом Секретаря'
	if masash < 10:pl'<a href="exec:masash = 10 & dynamic $din_cheat_menu_documents">Получить Сертификат Массажиста</a>'
	if masash >= 10:pl'У вас уже есть Сертификат Массажиста'
	if prava = 0:pl'<a href="exec:prava = 1 & dynamic $din_cheat_menu_documents">Получить Права</a>'
	if prava = 1:pl'У вас уже есть Права'
}

$din_cheat_menu_time = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a></center>'
	pl''
	pl'Сейчас <<$week>> <<day>> число, <<$month>>, <<year>> год.'
	pl'<a href="exec:dynamic $din_cheat_menu_week">Выбрать День Недели</a>'
	pl'<a href="exec:day += 1 & dynamic $din_cheat_menu_time">+1 День</a>'
	pl'<a href="exec:day -= 1 & dynamic $din_cheat_menu_time">-1 День</a>'
	pl'<a href="exec:dynamic $din_cheat_menu_month">Выбрать Месяц</a>'
	pl'<a href="exec:year += 1 & dynamic $din_cheat_menu_time">+1 Год</a>'
	pl'<a href="exec:year -= 1 & dynamic $din_cheat_menu_time">-1 Год</a>'
}

$din_cheat_menu_week = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a> - <a href="exec:dynamic $din_cheat_menu_time"><b>Время</b></a></center>'
	pl''
	pl'Сейчас <<$week>> <<day>> число, <<$month>>, <<year>> год.'
	pl'<a href="exec:week = 1 & dynamic $din_cheat_menu_time">Понедельник</a>'
	pl'<a href="exec:week = 2 & dynamic $din_cheat_menu_time">Вторник</a>'
	pl'<a href="exec:week = 3 & dynamic $din_cheat_menu_time">Среда</a>'
	pl'<a href="exec:week = 4 & dynamic $din_cheat_menu_time">Четверг</a>'
	pl'<a href="exec:week = 5 & dynamic $din_cheat_menu_time">Пятница</a>'
	pl'<a href="exec:week = 6 & dynamic $din_cheat_menu_time">Суббота</a>'
	pl'<a href="exec:week = 7 & dynamic $din_cheat_menu_time">Воскресенье</a>'
}

$din_cheat_menu_month = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a> - <a href="exec:dynamic $din_cheat_menu_time"><b>Время</b></a></center>'
	pl''
	pl'Сейчас <<$week>> <<day>> число, <<$month>>, <<year>> год.'
	pl'<a href="exec:month = 1 & dynamic $din_cheat_menu_time">Январь</a>'
	pl'<a href="exec:month = 2 & dynamic $din_cheat_menu_time">Февраль</a>'
	pl'<a href="exec:month = 3 & dynamic $din_cheat_menu_time">Март</a>'
	pl'<a href="exec:month = 4 & dynamic $din_cheat_menu_time">Апрель</a>'
	pl'<a href="exec:month = 5 & dynamic $din_cheat_menu_time">Май</a>'
	pl'<a href="exec:month = 6 & dynamic $din_cheat_menu_time">Июнь</a>'
	pl'<a href="exec:month = 7 & dynamic $din_cheat_menu_time">Июль</a>'
	pl'<a href="exec:month = 8 & dynamic $din_cheat_menu_time">Август</a>'
	pl'<a href="exec:month = 9 & dynamic $din_cheat_menu_time">Сентябрь</a>'
	pl'<a href="exec:month = 10 & dynamic $din_cheat_menu_time">Октябрь</a>'
	pl'<a href="exec:month = 11 & dynamic $din_cheat_menu_time">Ноябрь</a>'
	pl'<a href="exec:month = 12 & dynamic $din_cheat_menu_time">Декабрь</a>'
}

$din_cheat_menu_magic = {
	gs'stat'
	clr
	pl'<center><a href="exec:dynamic $objcheat_menu"><b>Чит меню</b></a></center>'
	pl''
	pl'<a href="exec:magik += 1 & dynamic $din_cheat_menu_magic">Магичность: <<magik>></a>'
	pl''
	if spelltuman = 0:pl'<a href="exec:spelltuman = 1 & dynamic $din_cheat_menu_magic">Накрыть местность туманом</a>'
	if spellklon = 0:pl'<a href="exec:spellklon = 1 & dynamic $din_cheat_menu_magic">Подменить себя клоном</a>'
	if spellstun = 0:pl'<a href="exec:spellstun = 1 & dynamic $din_cheat_menu_magic">Парализовать противника</a>'
	if spellweap = 0:pl'<a href="exec:spellweap = 1 & dynamic $din_cheat_menu_magic">Вложить энергию в оружие (требуется оружие)</a>'
	if spellwind = 0:pl'<a href="exec:spellwind = 1 & dynamic $din_cheat_menu_magic">Сдуть туман</a>'
	if spellklon2 = 0:pl'<a href="exec:spellklon2 = 1 & dynamic $din_cheat_menu_magic">Подменить себя клонами (3 штуки)</a>'
	if spellenergo = 0:pl'<a href="exec:spellenergo = 1 & dynamic $din_cheat_menu_magic">Создать слабый энерго щит</a>'
	if spellinit = 0:pl'<a href="exec:spellinit = 1 & dynamic $din_cheat_menu_magic">Создать слабое замедление времени</a>'
	if spellhel = 0:pl'<a href="exec:spellhel = 1 & dynamic $din_cheat_menu_magic">Боевое лечение</a>'
	if spellfire0 = 0 or spellfire2 = 0 or spellfire3 = 0 or spellfire4 = 0 or spellfire5 = 0:
		pl''
		pl'<b>Заклинания Стихии Огня:</b></a>'
	end
	if spellfire0 = 0:pl'<a href="exec:spellfire0 = 1 & dynamic $din_cheat_menu_magic">Пламя</a>'
	if spellfire2 = 0:pl'<a href="exec:spellfire2 = 1 & dynamic $din_cheat_menu_magic">Высвобождение огня</a>'
	if spellfire3 = 0:pl'<a href="exec:spellfire3 = 1 & dynamic $din_cheat_menu_magic">Барьер огня</a>'
	if spellfire4 = 0:pl'<a href="exec:spellfire4 = 1 & dynamic $din_cheat_menu_magic">Огненный шторм</a>'
	if spellfire5 = 0:pl'<a href="exec:spellfire5 = 1 & dynamic $din_cheat_menu_magic">Пламенный щит</a>'

	if spellele0 = 0 or spellele2 = 0 or spellele3 = 0 or spellele4 = 0 or spellele5 = 0:
		pl''
		pl'<b>Заклинания Стихии Молний:</b></a>'
	end
	if spellele0 = 0:pl'<a href="exec:spellele0 = 1 & dynamic $din_cheat_menu_magic">Разряд</a>'
	if spellele2 = 0:pl'<a href="exec:spellele2 = 1 & dynamic $din_cheat_menu_magic">Молния</a>'
	if spellele3 = 0:pl'<a href="exec:spellele3 = 1 & dynamic $din_cheat_menu_magic">Электро барьер</a>'
	if spellele4 = 0:pl'<a href="exec:spellele4 = 1 & dynamic $din_cheat_menu_magic">Танец тысячи птиц</a>'
	if spellele5 = 0:pl'<a href="exec:spellele5 = 1 & dynamic $din_cheat_menu_magic">Пляшущая сфера</a>'

	if spellert0 = 0 or spellert2 = 0 or spellert3 = 0 or spellert4 = 0 or spellert5 = 0:
		pl''
		pl'<b>Заклинания Стихии Земли:</b></a>'
	end
	if spellert0 = 0:pl'<a href="exec:spellert0 = 1 & dynamic $din_cheat_menu_magic">Зыбучий песок</a>'
	if spellert2 = 0:pl'<a href="exec:spellert2 = 1 & dynamic $din_cheat_menu_magic">Активная защита</a>'
	if spellert3 = 0:pl'<a href="exec:spellert3 = 1 & dynamic $din_cheat_menu_magic">Пропасть</a>'
	if spellert4 = 0:pl'<a href="exec:spellert4 = 1 & dynamic $din_cheat_menu_magic">Абсолютная защита</a>'
	if spellert5 = 0:pl'<a href="exec:spellert5 = 1 & dynamic $din_cheat_menu_magic">Сандо</a>'

	if spellwind0 = 0 or spellwind2 = 0 or spellwind3 = 0 or spellwind4 = 0 or spellwind5 = 0:
		pl''
		pl'<b>Заклинания Стихии Ветра:</b></a>'
	end
	if spellwind0 = 0:pl'<a href="exec:spellwind0 = 1 & dynamic $din_cheat_menu_magic">Порыв ветра</a>'
	if spellwind2 = 0:pl'<a href="exec:spellwind2 = 1 & dynamic $din_cheat_menu_magic">Ужасающее давление</a>'
	if spellwind3 = 0:pl'<a href="exec:spellwind3 = 1 & dynamic $din_cheat_menu_magic">Вакуумная сфера</a>'
	if spellwind4 = 0:pl'<a href="exec:spellwind4 = 1 & dynamic $din_cheat_menu_magic">Вакуумные снаряды</a>'
	if spellwind5 = 0:pl'<a href="exec:spellwind5 = 1 & dynamic $din_cheat_menu_magic">Пожирающий вакуум</a>'

	if spellwater0 = 0 or spellwater2 = 0 or spellwater3 = 0 or spellwater4 = 0 or spellwater5 = 0:
		pl''
		pl'<b>Заклинания Стихии Воды:</b></a>'
	end
	if spellwater0 = 0:pl'<a href="exec:spellwater0 = 1 & dynamic $din_cheat_menu_magic">Ручей манны</a>'
	if spellwater2 = 0:pl'<a href="exec:spellwater2 = 1 & dynamic $din_cheat_menu_magic">Затопление</a>'
	if spellwater3 = 0:pl'<a href="exec:spellwater3 = 1 & dynamic $din_cheat_menu_magic">Водяной пузырь</a>'
	if spellwater4 = 0:pl'<a href="exec:spellwater4 = 1 & dynamic $din_cheat_menu_magic">Водяная акулья ракета</a>'
	if spellwater5 = 0:pl'<a href="exec:spellwater5 = 1 & dynamic $din_cheat_menu_magic">Великий потоп'
}

$objcheat_menu = {
	gs'stat'
	clr
	pl'<center><a href="exec:gs''stat''"><b>Выйти из чит меню</b></a></center>'
	pl''
	pl'<a href="exec:dynamic $din_cheat_menu_permanent"><b>Перманентные</b></a>'
	pl'<a href="exec:dynamic $din_cheat_menu_look"><b>Внешность</b></a>'
	pl'<a href="exec:dynamic $din_cheat_menu_stats"><b>Характеристики</b></a>'
	pl'<a href="exec:dynamic $din_cheat_menu_reputation"><b>Отношения и Репутация</b></a>'
	pl'<a href="exec:dynamic $din_cheat_menu_documents"><b>Документы</b></a>'
	pl'<a href="exec:dynamic $din_cheat_menu_time"><b>Манипуляции временем</b></a>'
	if StoryLine = 0:pl'<a href="exec:dynamic $din_cheat_menu_magic"><b>Магия</b></a>'
	pl''
	pl'<a href="exec:health = vital*10 + stren*5+1000 & willpower = intel*5 + will*5+1000 & manna = (intel*magik) + magik*100 + vital*10 + rikudo & dynamic $objcheat_menu">Полное восстановление здоровья, манны, разума.</a>'
	pl'<a href="exec:dynamic $din_cheat_money">Изменить количество денег</a>'
	pl'<a href="exec:money = 0 & dynamic $din_cheat">Обнулить деньги</a>'
}

$objmagic = {
	clr

	if magik = 0:
		pl'Вы неспособны применять магию.'
	elseif magik > 0:
		pl'Вам доступно <<manna>> единиц манны.'
		!' Сил Рикудо доступных вам <<rikudo>> единиц'
		nl
		pl'<b>Базовые Заклинания:</b>'
		nl
		if spelltuman > 0:pl'Накрыть местность туманом, отличный способ скрыть свои атакующие действия от противника и не плохой способ повысить шанс увернутся от атак противника, так как он вас не видит в вашем тумане (стоимость 10 единиц манны)'
		nl
		if spellklon > 0:pl'Подменить себя клоном, способ избежать мощных атак противника подменив себя клоном, противник попадет по клону а не по вам, он только зря потратит силы (стоимость 15 единиц манны)'
		nl
		if spellstun > 0:pl'Парализовать противника, отличный способ остановить противника, он не сможет защищаться и атаковать. ( стоимость 20 единиц манны)'
		nl
		if spellweap > 0 and weapon > 0:pl'Вложить энергию в оружие'
		nl
		if spellwind > 0:pl'Сдуть туман, заклинание рассеивающие любой туман над полем боя.'
		nl
		if spellklon2 > 0:pl'Подменить себя клонами (3 штуки), противник не сумеет добраться до вас, пока не уничтожит все ваши клоны. (стоимость 45 единиц манны)'
		nl
		if spellenergo > 0:pl'Создать слабый энерго щит, заклинание защищающее от любых атак физической природы, даже если атака противника превосходит возможности этого щита и щит будет разрушен первым же ударом, вы все равно защитите себя от урона(стоимость 50 единиц манны)'
		nl
		if spellinit > 0:pl'Создать слабое замедление времени, сильное заклинание позволяющее вам двигаться быстрее, вы сможете вырвать инициативу при помощи этого заклинания, что бы нанести удар другим заклинанием, вероятность попадания тоже увеличиться, ведь вы будете двигаться очень быстро (стоимость 60 единиц манны)'
		nl
		if spellhel > 0:pl'Боевое лечение, восстанавливает или добавляет 400 единиц здоровья в обмен на 400 единиц манны.'
		nl
		if stihia = 1:pl'<b>Заклинания Стихии Огня:</b>'
		nl
		if spellfire1 = 1:pl'Пламя. Наносит маленький урон. (Стоимость 10 манны)'
		nl
		if spellfire2 = 1:pl'Высвобождение огня. Наносит большой урон. (Стоимость 100 манны)'
		nl
		if spellfire3 = 1:pl'Барьер огня, создает щит в 750 единиц. (Стоимость 150 манны)'
		nl
		if spellfire4 = 1:pl'Огненный шторм. Наносит огромный урон, противнику трудно увернуться. (Стоимость 250 манны)'
		nl
		if spellfire5 = 1:pl'Пламенный щит, создает щит в 2500 единиц. (Стоимость 500 манны)'
		nl
		if stihia = 2:pl'<b>Заклинания Стихии Молний:</b>'
		nl
		if spellele1 = 1:pl'Разряд. Наносит очень маленький урон. (Стоимость 10 манны)'
		nl
		if spellele2 = 1:pl'Молния. Наносит урон выше среднего. (Стоимость 100 манны)'
		nl
		if spellele3 = 1:pl'Электро барьер, создает щит в 1500 единиц. (Стоимость 150 манны)'
		nl
		if spellele4 = 1:pl'Танец тысячи птиц. Наносит очень большой урон. (Стоимость 250 манны)'
		nl
		if spellele5 = 1:pl'Пляшущая сфера, создает щит в 5000 единиц. (Стоимость 500 манны)'
		nl
		if stihia = 3:pl'<b>Заклинания Стихии Земли:</b>'
		nl
		if spellert1 = 1:pl'Зыбучий песок, ловит противника в ловушку зыбучего песка и наносит маленький урон. (Стоимость 10 манны)'
		nl
		if spellert2 = 1:pl'Активная защита, создает защитную сферу из земли, камня и песка 2500 единиц защиты манны и здоровья, эта защита самовосстанавливается в течении 10 ходов поглощая 20 единиц манны в ход. (Стоимость 100 манны)'
		nl
		if spellert3 = 1:pl'Пропасть, земля разверзнется под ногами врага нанося ему урон выше среднего и лишая его возможности двигаться. (Стоимость 150 манны)'
		nl
		if spellert4 = 1:pl'Абсолютная защита, создает огромную защитную сферу земли, которая регенерирует каждый ход и сама атакует противника. (Стоимость 250 манны)'
		nl
		if spellert5 = 1:pl'Сандо, две огромных плиты выходят из земли и схлопываются раздавливая противника нанося ему огромный урон и лишая его возможности двигаться. Стоимость 500 манны.'
		nl
		if stihia = 4:pl'<b>Заклинания Стихии Ветра:</b>'
		nl
		if spellwind1 = 1:pl'Порыв ветра, наносит очень маленький урон и уничтожает клонов и туман, очень сложно увернутся. (Стоимость 10 манны)'
		nl
		if spellwind2 = 1:pl'Ужасающее давление, наносит средний урон и уничтожает клонов и туман, очень сложно увернутся. (Стоимость 100 манны)'
		nl
		if spellwind3 = 1:pl'Вакуумная сфера, создает щит в 1500 единиц. (Стоимость 150 манны)'
		nl
		if spellwind4 = 1:pl'Вакуумные снаряды, наносят Большой урон и уничтожает клонов и туман, очень сложно увернутся. (Стоимость 250 манны)'
		nl
		if spellwind5 = 1:pl'Пожирающий вакуум, засасывает щит противника разрушая его какой бы прочности он не был. (Стоимость 500 манны)'
		nl
		if stihia = 5:pl'<b>Заклинания Стихии Воды:</b>'
		nl
		if spellwater1 = 1:pl'Ручей манны, наносит очень маленький урон и поглощает много манны. Стоимость 10 манны.'
		nl
		if spellwater2 = 1:pl'Затопление, наносит средний урон и поглощает манны выше среднего. Стоимость 100 манны.'
		nl
		if spellwater3 = 1:pl'Водяной пузырь, создает защитную сферу из воды 1500 единиц защиты от всех воздействий, эта защита самовосстанавливается в течении 10 ходов поглощая 20 единиц манны в ход. (Стоимость 150 манны)'
		nl
		if spellwater4 = 1:pl'Водяная акулья ракета, наносит большой урон и поглощает очень много манны. Стоимость 250 манны.'
		nl
		if spellwater5 = 1:pl'Великий потоп, создает огромную водяную сферу которая поглощает и противника выкачивая из него манну и передавая ее на усиление защиты. Стоимость 500 манны.'
		nl
	end
}

$objface = {
	if glass <= 0:
		if shorthair = 0:
			if hcol = 0 and curly <= 0:view 'images/picb/hcol.jpg'
			if hcol = 1 and curly <= 0:view 'images/picb/hcol1.jpg'
			if hcol = 2 and curly <= 0:view 'images/picb/hcol2.jpg'
			if hcol = 3 and curly <= 0:view 'images/picb/hcol3.jpg'
			if hcol = 0 and curly > 0:view 'images/picb/hcolcurly.jpg'
			if hcol = 1 and curly > 0:view 'images/picb/hcolcurly1.jpg'
			if hcol = 2 and curly > 0:view 'images/picb/hcolcurly2.jpg'
			if hcol = 3 and curly > 0:view 'images/picb/hcolcurly3.jpg'
		elseif shorthair = 1:
			if hcol = 0:view 'images/picb/SHhcol.jpg'
			if hcol = 1:view 'images/picb/SHhcol1.jpg'
			if hcol = 2:view 'images/picb/SHhcol2.jpg'
			if hcol = 3:view 'images/picb/SHhcol3.jpg'
		end
	elseif glass > 0:
		if glass = 1:
			view 'images/picb/nerd.jpg'
		elseif glass = 2:
			if hcol = 0:view 'images/picb/hcolglass.jpg'
			if hcol = 1:view 'images/picb/hcolglass1.jpg'
			if hcol = 2:view 'images/picb/hcolglass2.jpg'
			if hcol = 3:view 'images/picb/hcolglass3.jpg'
		end
	end
}

$objbody = {
	if musle >= salo:
		!мускулистый тип
		if bedra < 60:
			view 'images/picb/fit.jpg'
		elseif bedra >= 60 and bedra < 70:
			view 'images/picb/fit1.jpg'
		elseif bedra >= 70 and bedra < 80:
			view 'images/picb/fit2.jpg'
		elseif bedra >= 80 and bedra < 90:
			view 'images/picb/fit3.jpg'
		elseif bedra >= 90 and bedra < 100:
			view 'images/picb/fit4.jpg'
		elseif bedra >= 100 and bedra < 110:
			view 'images/picb/fit5.jpg'
		elseif bedra >= 110 and bedra < 120:
			view 'images/picb/fit6.jpg'
		elseif bedra >= 120:
			view 'images/picb/fit7.jpg'
		end
	elseif musle < salo:
		!жирный тип
		if bedra < 60:
			view 'images/picb/body/0.jpg'
		elseif bedra >= 60 and bedra < 65:
			view 'images/picb/body/1.jpg'
		elseif bedra >= 65 and bedra < 70:
			view 'images/picb/body/2.jpg'
		elseif bedra >= 70 and bedra < 75:
			view 'images/picb/body/3.jpg'
		elseif bedra >= 75 and bedra < 80:
			view 'images/picb/body/4.jpg'
		elseif bedra >= 80 and bedra < 85:
			view 'images/picb/body/5.jpg'
		elseif bedra >= 85 and bedra < 90:
			view 'images/picb/body/6.jpg'
		elseif bedra >= 90 and bedra < 95:
			view 'images/picb/body/7.jpg'
		elseif bedra >= 95 and bedra < 100:
			view 'images/picb/body/8.jpg'
		elseif bedra >= 100 and bedra < 105:
			view 'images/picb/body/9.jpg'
		elseif bedra >= 105 and bedra < 110:
			view 'images/picb/body/10.jpg'
		elseif bedra >= 110 and bedra < 115:
			view 'images/picb/body/11.jpg'
		elseif bedra >= 115 and bedra < 120:
			view 'images/picb/body/12.jpg'
		elseif bedra >= 120:
			view 'images/picb/body/13.jpg'
		end
	end
}

$objclothes = {
	clr
	if nude = 0:
		if vatnik = 2:view 'images/ode/vatnik.jpg'
		if odetjeans > 0:
			view 'images/ode/jeans<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<jeansH[numdress]>>, Размер бедер <<jeansB[numdress]>>)'
		elseif odetyoga > 0:
			view 'images/ode/yoga<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<yogaH[numdress]>>, Размер бедер <<yogaB[numdress]>>)'
		elseif odetsarafan > 0:
			view 'images/ode/sarafan<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<sarafanH[numdress]>>, Размер бедер <<sarafanB[numdress]>>)'
		elseif odetshort > 0:
			view 'images/ode/short<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<shortH[numdress]>>, Размер бедер <<shortB[numdress]>>)'
		elseif odetskirt > 0:
			view 'images/ode/skirt<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<skirtH[numdress]>>, Размер бедер <<skirtB[numdress]>>)'
		elseif odetdress > 0:
			view 'images/ode/dress<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<dressH[numdress]>>, Размер бедер <<dressB[numdress]>>)'
		elseif odetprofi > 0:
			view 'images/ode/profi<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<profiH[numdress]>>, Размер бедер <<profiB[numdress]>>)'
		elseif odetpants > 0:
			view 'images/ode/pants<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<pantsH[numdress]>>, Размер бедер <<pantsB[numdress]>>)'
		elseif odetlatex > 0:
			view 'images/ode/latex<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<latexH[numdress]>>, Размер бедер <<latexB[numdress]>>)'
		elseif odethooker > 0:
			view 'images/ode/hooker<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<hookerH[numdress]>>, Размер бедер <<hookerB[numdress]>>)'
		elseif odetkis > 0:
			view 'images/kis/k<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<odekisH[numdress]>>, Размер бедер <<odekisB[numdress]>>)'
		elseif odetnewclo > 0:
			view 'images/ode/newclo/<<numdress>>.jpg'
			pl'(Оставшаяся прочность <<newcloH[numdress]>>, Размер бедер <<newcloB[numdress]>>)'
		end
		if odetero > 0:view 'images/img/dress/ero<<numdress>>.jpg'
		if cloth_vid = 1:view 'images/etogame/bimboView.jpg' & pl'Вы одеты в образе бимбо'
	elseif nude = 1:
		view 'images/ode/nude.jpg'
		pl'Вы не одеты.'
	end
}

$objtattoos = {
	$tatlipdi = {
		if tatlip = 1:view 'images/picBody/tatlip1.jpg'
		if tatlip = 2:view 'images/picBody/tatlip2.jpg'
		if tatlip = 3:view 'images/picBody/tatlip3.jpg'
	}
	$tatpledi = {
		if tatplech = 1:view 'images/picBody/tatplech1.jpg'
		if tatplech = 2:view 'images/picBody/tatplech2.jpg'
		if tatplech = 3:view 'images/picBody/tatplech3.jpg'
		if tatplech = 4:view 'images/picBody/tatplech4.jpg'
	}
	$tatbackdi = {
		if tatback = 1:view 'images/picBody/tatb1.jpg'
		if tatback = 2:view 'images/picBody/tatb2.jpg'
		if tatback = 3:view 'images/picBody/tatb3.jpg'
		if tatback = 4:view 'images/picBody/tatb4.jpg'
	}
	$tatupbdi = {
		if tatupb = 1:view 'images/picBody/tatupb1.jpg'
		if tatupb = 2:view 'images/picBody/tatupb2.jpg'
		if tatupb = 3:view 'images/picBody/tatupb3.jpg'
		if tatupb = 4:view 'images/picBody/tatupb4.jpg'
	}
	$tatvagdi = {
		if tatvag = 1:view 'images/picBody/tatvag.jpg'
		if tatvag = 2:view 'images/picBody/tatvag2.jpg'
		if tatvag = 3:view 'images/picBody/tatvag3.jpg'
		if tatvag = 4:view 'images/picBody/tatvag4.jpg'
		if tatvag = 5:view 'images/picBody/tatvag5.jpg'
		if tatvag = 6:view 'images/picBody/tatvag6.jpg'
	}
	$tatlegdi = {
		if tatleg = 1:view 'images/picBody/tatleg1.jpg'
		if tatleg = 2:view 'images/picBody/tatleg2.jpg'
		if tatleg = 3:view 'images/picBody/tatleg3.jpg'
		if tatleg = 4:view 'images/picBody/tatleg4.jpg'
	}

	clr
	if tatlip > 0:pl '<a href="exec: dynamic $tatlipdi ">Тату на губе</a>'
	if tatplech > 0:pl'<a href="exec: dynamic $tatpledi">Тату на плечах</a>'
	if tatback > 0:pl'<a href="exec: dynamic $tatbackdi">Тату на спине</a>'
	if tatupb > 0:pl'<a href="exec: dynamic $tatupbdi">Тату на пояснице</a>'
	if tatvag > 0:pl'<a href="exec: dynamic $tatvagdi">Тату в паху</a>'
	if tatleg > 0:pl'<a href="exec: dynamic $tatlegdi">Тату на ногах</a>'
	if tatvag = 0 and tatlip = 0 and tatplech = 0 and tatback = 0 and tatupb = 0 and tatleg = 0:
		pl'У вас девственно чистое тело. Не в плане разврата, а в плане тату.'
	end
}

$objpirsing = {
	$dipirsA = {
		view 'images/picb/pirsA.jpg'
	}
	$dipirsB = {
		view 'images/picb/pirsB.jpg'
	}
	$dipirsC = {
		view 'images/picb/pirsC.jpg'
	}
	$dipirsD = {
		view 'images/picb/pirsD.jpg'
	}
	$dipirsE = {
		view 'images/picb/pirsE.jpg'
	}
	$dipirsF = {
		view 'images/picb/pirsF.jpg'
	}
	$dipirsG = {
		view 'images/picb/pirsG.jpg'
	}
	$dipirsN = {
		view 'images/picb/pirsN.jpg'
	}

	clr
	if pirsA = 1:pl 'Ваш язык проколот и туда вставлена маленькая штанга которая постоянно чувствуется во рту. <a href="exec:dynamic $dipirsA">Посмотреть</a>'
	if pirsB = 1:pl 'У вас проколота нижняя губа и туда вдето колечко. <a href="exec:dynamic $dipirsB">Посмотреть</a>'
	if pirsC = 1:pl 'На ваших ушах висят сережки. <a href="exec:dynamic $dipirsC">Посмотреть</a>'
	if pirsD = 1:pl 'У вас маленькое колечко в носу. <a href="exec:dynamic $dipirsD">Посмотреть</a>'
	if pirsE = 1:pl 'В вашу бровь вставлена штанга. <a href="exec:dynamic $dipirsE">Посмотреть</a>'
	if pirsF = 1:pl 'У вас проколоты соски и в них вставлены маленькие металлические штанги. <a href="exec:dynamic $dipirsF">Посмотреть</a>'
	if pirsG = 1:pl 'У вас проколоты губы на влагалище и туда вставлены колечки. <a href="exec:dynamic $dipirsG">Посмотреть</a>'
	if pirsN = 1:pl 'У вас проколот пупок и туда вставлена штанга. <a href="exec:dynamic $dipirsN">Посмотреть</a>'
}

$objobnovit = {
	gs'stat'
}

$objbloknot = {
	clr
	if housr > 0:pl'Вы живете в двух комнатной квартире, в спальном районе. Оплата за квартиру снимается автоматически, в сумме 3000 рублей каждое 25е число. Плюс еще счет за свет.'
	nl
	if workPTU > 2:pl'Вы работаете преподавателем в лицее. Рабочие дни ПН-СБ, с 14.00 до 16.00. Зарплата 300р/день. Форма одежды - офисная, строгая. Дорога от квартиры до лицея занимает 2 часа 10 минут.'
	nl
	if (work = 1 or cheatWork = 1) and workKafe > 0:pl'Вы работаете официанткой в кафе. На работу нужно приходить с 11 до 12, рабочие дни, вторник, среда, четверг. На работе каждый день получаешь чаевые от клиентов и зарплата автоматически перечисляется 25го числа.'
	nl
	if (work = 1 or cheatWork = 1) and workhosp > 0:pl'Вы работаете медсестрой в поликлинике. На работу нужно приходить с 8 до 9, в будни. Зарплата автоматически перечисляется 25го числа.'
	nl
	if (work = 1 or cheatWork = 1) and worksalon > 0:pl'Вы работаете массажисткой в салоне. На работу нужно приходить с 9 до 10, рабочие дни, понедельник, среда, пятница. Зарплата автоматически перечисляется 25го числа.'
	nl
	if (work = 1 or cheatWork = 1) and workhosp > 0:pl'Вы работаете секретарем в офисе. На работу нужно приходить до 9, в будни. Зарплата автоматически перечисляется 25го числа.'
	nl
	if (work = 1 or cheatWork = 1) and tanwork > 0:pl'Вы работаете гувернанткой у Тани. Зарплата автоматически перечисляется 25го числа.'
	nl
	if (work = 1 or cheatWork = 1) and young_shop_work = 1:pl'Вы работаете продавщицей в магазине Кис Киска. На работу нужно приходить в 15, рабочие дни все кроме субботы и воскресенья. Зарплата выдается раз в неделю по пятницам.'
	nl
	if workrin = 1:pl'Вы работаете на рынке в палатке Артура продавщицей одежды. Работа по Вторникам, Четвергам и Субботам, приходить в 8 часов. Зарплата зависит от продаж.'
	nl
	if stripwork >= 1:pl'Вы работаете стриптизершей, график свободный, в любой день с 15 до 2х ночи. Зарплата только чаевые.'
	nl
	if bumtolik = 4:pl'Служба помощи бездомным находится в Северном районе.'
	nl
	if bumtolik = 5:pl'Вы волонтер в службе помощи бездомным. Рабочие часы с 9 до 17, выходные суббота и воскресенье.'
	nl
	if husband > 0:pl'Вы замужем <<husbanday>> дней. Ваш муж <<$husName>> <<$husBody>> <<$husFat>> <<$husHair>>. Член <<husDick>> Отношения <<husband>>'
	if kid > 0:pl'У вас есть ребенок <<$kidname>>, возраст <<kid>> дней.'
	nl
	if $bfsex > 0:pl'<<$bfsex>>'
	nl
	if bfA > 1:pl'Ваш парень <<$boyA>> <<$boybodyA>> <<$boybodA>> <<$boyfaceA>>.<<$boyA>> <<$boyCloA>> Отношения <<bfA>>, встречались <<dayA>> раз.'
	if harakBoyA = 0 and bfA > 1:pl'У него спокойный и выдержанный характер.'
	if harakBoyA = 1 and bfA > 1:pl'У него веселый и общительный характер.'
	if harakBoyA = 2 and bfA > 1:pl'У него вспыльчивый и жесткий характер.'
	if bfB > 1:pl'Ваш парень <<$boyB>> <<$boybodyB>> <<$boybodB>> <<$boyfaceB>>.<<$boyB>> <<$boyCloB>> Отношения <<bfB>>, встречались <<dayB>> раз.'
	if bfC > 1:pl'Ваш парень <<$boyC>> <<$boybodyC>> <<$boybodC>> <<$boyfaceC>>.<<$boyC>> <<$boyCloC>> Отношения <<bfC>>, встречались <<dayC>> раз.'
	nl
	gs'Menu.Create','zapisMenu'
	gs'Menu.Add','zapisMenu','Запись с автодатой','','MenuLoc','zapisosn'
	gs'Menu.Add','zapisMenu','Сделать запись на 1ю строчку','','MenuLoc','zapis'
	gs'Menu.Add','zapisMenu','С красной строки 1ю строчку','','MenuLoc','ot'
	gs'Menu.Add','zapisMenu','Сделать запись на 2ю строчку','','MenuLoc','zapis2'
	gs'Menu.Add','zapisMenu','С красной строки 2ю строчку','','MenuLoc','ot2'
	gs'Menu.Add','zapisMenu','Сделать запись на 3ю строчку','','MenuLoc','zapis3'
	gs'Menu.Add','zapisMenu','С красной строки 3ю строчку','','MenuLoc','ot3'
	gs'Menu.Add','zapisMenu','Сделать запись на 4ю строчку','','MenuLoc','zapis4'
	gs'Menu.Add','zapisMenu','С красной строки 4ю строчку','','MenuLoc','ot4'
	gs'Menu.Add','zapisMenu','Сделать запись на 5ю строчку','','MenuLoc','zapis5'
	gs'Menu.Add','zapisMenu','С красной строки 5ю строчку','','MenuLoc','ot5'
	gs'Menu.Add','zapisMenu','Сделать запись на 6ю строчку','','MenuLoc','zapis6'
	gs'Menu.Add','zapisMenu','С красной строки 6ю строчку','','MenuLoc','ot6'
	gs'Menu.Add','zapisMenu','Сделать запись на 7ю строчку','','MenuLoc','zapis7'
	gs'Menu.Add','zapisMenu','С красной строки 7ю строчку','','MenuLoc','ot7'
	gs'Menu.Add','zapisMenu','Сделать запись на 8ю строчку','','MenuLoc','zapis8'
	gs'Menu.Add','zapisMenu','С красной строки 8ю строчку','','MenuLoc','ot8'
	gs'Menu.Add','zapisMenu','Сделать запись на 9ю строчку','','MenuLoc','zapis9'
	gs'Menu.Add','zapisMenu','С красной строки 9ю строчку','','MenuLoc','ot9'
	gs'Menu.Add','zapisMenu','Сделать запись на 10ю строчку','','MenuLoc','zapis10'
	gs'Menu.Add','zapisMenu','С красной строки 10ю строчку','','MenuLoc','ot10'

	gs'Menu.Create','disMenu'
	gs'Menu.Add','disMenu','Удалить запись с 1й строки','','MenuLoc','diszapis'
	gs'Menu.Add','disMenu','Удалить запись с 2й строки','','MenuLoc','diszapis2'
	gs'Menu.Add','disMenu','Удалить запись с 3й строки','','MenuLoc','diszapis3'
	gs'Menu.Add','disMenu','Удалить запись с 4й строки','','MenuLoc','diszapis4'
	gs'Menu.Add','disMenu','Удалить запись с 5й строки','','MenuLoc','diszapis5'
	gs'Menu.Add','disMenu','Удалить запись с 6й строки','','MenuLoc','diszapis6'
	gs'Menu.Add','disMenu','Удалить запись с 7й строки','','MenuLoc','diszapis7'
	gs'Menu.Add','disMenu','Удалить запись с 8й строки','','MenuLoc','diszapis8'
	gs'Menu.Add','disMenu','Удалить запись с 9й строки','','MenuLoc','diszapis9'
	gs'Menu.Add','disMenu','Удалить запись с 10й строки','','MenuLoc','diszapis10'

	pl'<a href="exec: gs''Menu.Call'',''zapisMenu''">Сделать запись</a> или <a href="exec: gs''Menu.Call'',''disMenu''">удалить запись</a>'

	pl'<<$zapisOsn>>'
	pl'<<$zapis>>'
	pl'<<$zapis2>>'
	pl'<<$zapis3>>'
	pl'<<$zapis4>>'
	pl'<<$zapis5>>'
	pl'<<$zapis6>>'
	pl'<<$zapis7>>'
	pl'<<$zapis8>>'
	pl'<<$zapis9>>'
	pl'<<$zapis10>>'
}

$objavariya = {
	'<center><b>ВАМИ ТОЛЬКО ЧТО БЫЛ ИСПОЛЬЗОВАН АВАРИЙНЫЙ ВЫХОД ИЗ БАГА ПУСТОГО ЭКРАНА</b></center>'
	*nl
	'<center><b>НЕ ИСПОЛЬЗУЙТЕ ЭТУ ВОЗМОЖНОСТЬ БЕЗ ВЕСКОЙ ПРИЧИНЫ, МОЖЕТЕ ВЫЗВАТЬ СБОЙ КОТОРЫЙ РАЗРУШИТ ВАШИ СОХРАНЕНИЯ</b></center>'
	*nl

	if StoryLine = 1:gt'gorodok'
	gt'street'
}

$objnewmenu = {
	killobj
	oldobjmenu = 0
	addobj 'Персонаж'
	addobj 'Посмотреть'
	addobj 'Прочее'
	addobj 'Меню'
}

$objoldmenu = {
	killobj
	oldobjmenu = 1
	addobj '<font color = green>Персонаж</font>'
	addobj 'Навыки'
	addobj 'Статистика'
	if magik > 0:addobj 'Магия'
	addobj 'Лицо'
	addobj 'Тело'
	addobj 'Одежда'
	addobj 'Татуировки'
	addobj 'Пирсинг'
	if mobila > 0:addobj 'Телефон'
	addobj 'Записная книжка'
	addobj 'Аварийный выход'
	addobj 'Обновить'
	addobj 'Меню'
	addobj 'Новое меню'
	addobj 'Чит меню'
	if disable_autosave = 1:
		addobj 'Включить автосохранение'
	else
		addobj 'Отключить автосохранение'
	end
}

$objautosave = {
	if oldobjmenu = 0:
		if disable_autosave = 1:
			disable_autosave = 0
		else
			disable_autosave = 1
		end
	elseif oldobjmenu = 1:
		if disable_autosave = 1:
			disable_autosave = 0
			delobj 'Включить автосохранение'
			addobj 'Отключить автосохранение'
		else
			disable_autosave = 1
			delobj 'Отключить автосохранение'
			addobj 'Включить автосохранение'
		end
	end
	gs'stat'
}

$menu_character[0] = 'Описание:$menu_descrip'
$menu_character[1] = 'Характеристики:$menu_skills'
$menu_character[2] = 'Статистика:$menu_statistika'
if magik > 0:$menu_character[3] = 'Магия:$menu_magic'

$menu_lookon[0] = 'Лицо:$menu_face'
$menu_lookon[1] = 'Тело:$menu_body'
$menu_lookon[2] = 'Одежда:$menu_clothes'
$menu_lookon[3] = 'Татуировки:$menu_tattoos'
$menu_lookon[4] = 'Пирсинг:$menu_pirs'

$menu_other[0] = 'Обновить:$menu_obnovit'
$menu_other[1] = 'Записная книжка:$menu_bloknot'
$menu_other[2] = 'Аварийный выход:$menu_avariya'
$menu_other[3] = 'Старое меню:$menu_addoldmenu'
$menu_other[4] = 'Чит меню:$menu_cheat'
if disable_autosave = 1:
	$menu_other[5] = 'Включить автосохранение:$menu_autosave'
else
	$menu_other[5] = 'Отключить автосохранение:$menu_autosave'
end
if mobila > 0:$menu_other[6] = 'Телефон:$menu_mobila'

!Старое меню: начало
if $selobj = '<font color = green>Персонаж</font>':dynamic $objdescrip
if $selobj = 'Навыки':dynamic $objskills
if $selobj = 'Статистика':dynamic $objstatistika
if magik > 0:if $selobj = 'Магия':dynamic $objmagic
if $selobj = 'Лицо':dynamic $objface
if $selobj = 'Тело':dynamic $objbody
if $selobj = 'Одежда':dynamic $objclothes
if $selobj = 'Татуировки':dynamic $objtattoos
if $selobj = 'Пирсинг':dynamic $objpirsing
if $selobj = 'Записная книжка':dynamic $objbloknot
if $selobj = 'Аварийный выход':dynamic $objavariya
if $selobj = 'Обновить':gs'stat'
if $selobj = 'Новое меню':dynamic $objnewmenu
if $selobj = 'Чит меню':dynamic $objcheat_menu
if disable_autosave = 1:
	if $selobj = 'Включить автосохранение':dynamic $objautosave
else
	if $selobj = 'Отключить автосохранение':dynamic $objautosave
end
!Старое меню: конец

!Новое меню: начало
if $selobj = 'Персонаж':menu '$menu_character'
if $selobj = 'Посмотреть':menu '$menu_lookon'
if $selobj = 'Прочее':menu '$menu_other'
!Новое меню: конец

if $selobj = 'Игрок':
	clr
	pl'Вас зовут <<$name>> <<$surname>>. Вам <<age>> лет. <<$vneshPRE>>'
	pl'У вас короткие черные волосы с проблесками начинающейся седины, маленькие карие глаза и волевая челюсть покрытая синевой от сбритой щетины.'
	pl'Рост <<rost>> см, вес 100 кг.'
end

if $selobj = 'Меню':
	clr
	gs'Menu.Create','mainMenu'
	gs'Menu.Add','mainMenu','Статус Бар','','MenuMainLoc','0'
	gs'Menu.Add','mainMenu','Текстовые Обозначения','','MenuMainLoc','1'
	gs'Menu.Call','mainMenu'
end

unselect
--- onobjsel ---------------------------------

