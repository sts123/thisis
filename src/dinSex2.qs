# dinSex2
$d_vag_sex_dildo = {
	frost = 0

	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna = manna - 10
		willpower = willpower - 10
		'У вас месячные и в то время вы засовываете в себя <<dick>> сантиметровый дилдо, из влагалища потихоньку вытекает кровь.'
	elseif mesec <= 0 and vagina > 0:
		!месячных нет
		!horny - возбужденность
		!vagina - эластичность вагины
		!silavag - умение парня 0-неумеха, 1-середняк 2-ебарь
		!dick - размер члена парня
		!orgazm - коэфициент удовольствия Итог
		!0 - очень больно, 1 - больно, 2 - не приятно, 3 - так себе, 4 - недооргазм 5 - оргазм
		smazka = horny/10
		prinat = smazka + vagina

		if dick >= prinat*2:
			!член критично больше возможностей гг
			orgazm = 0
		elseif dick < prinat*2 and dick > prinat:
			!член больше возможностей гг
			if horny >= 100:orgazm = 5
			if horny >= 90 and horny < 100:orgazm = 4
			if horny >= 80 and horny < 90:orgazm = 3
			if horny >= 70 and horny < 80:orgazm = 2
			if horny >= 60 and horny < 70:orgazm = 1
			if horny < 60:orgazm = 0
		elseif dick <= prinat and dick >= vagina:
			!член меньше возможностей гг
			if horny >= 80:orgazm = 5
			if horny >= 60 and horny < 80:orgazm = 4
			if horny >= 40 and horny < 60:orgazm = 3
			if horny < 40:orgazm = 2
		elseif dick <= prinat and dick < vagina:
			if horny >= 100:orgazm = 5
			if horny >= 90 and horny < 100:orgazm = 4
			if horny < 90:orgazm = 3
		end

		if orgazm = 5:
			preOrg += 1
			if razeba < 4:
				orgazm = 4
			elseif razeba = 4:
				orgrand = RAND(50,300)
				if orgrand > preOrg:orgazm = 4
			elseif razeba >= 5:
				orgrand = RAND(0,100)
				if orgrand > preOrg:orgazm = 4
			end
		end

		if orgazm = 0:
			vgape = 3
			vgapetime = totminut
			horny = 0
			manna = manna - 15
			willpower = willpower - 15

			'Вы застонали от боли когда засунули в себя <<dick>> сантиметровый дилдо, из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут.'
		elseif orgazm = 1:
			if vgape < 2:vgape = 2
			vgapetime = totminut
			horny = horny - 10
			manna = manna - 10
			willpower = willpower - 10

			'Вы закусили губу от боли когда засунули в себя <<dick>> сантиметровый дилдо, между ног болезненные ощущения.'
		elseif orgazm = 2:
			if vgape < 1:vgape = 1
			vgapetime = totminut
			horny = horny - 5
			manna = manna - 5
			willpower = willpower - 5

			'Вы вздрогнули от внезапной боли когда засунули в себя <<dick>> сантиметровый дилдо, но болезненные ощущения между ног плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока двигаете <<dick>> сантиметровый дилдо в вашей киске, но у вас ничего не выходит.'
		elseif orgazm = 3:
			!horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда засунули в себя <<dick>> сантиметровый дилдо. Между ног становится немного приятно, когда вы трахаете себя при помощи дилдо.'
		elseif orgazm = 4:
			!horny = horny + 10
			manna = manna + 10
			willpower = willpower + 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда засунули в себя <<dick>> сантиметровый дилдо. Между ног становится немного приятно, когда вы трахаете себя при помощи дилдо. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny = 0
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1
			vaginalOrgasm += 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиватся принимая в себя дилдо. Между ног становится очень тепло и приятно, когда крепкий <<dick>> сантиметровый дилдо двигается в вашей киске. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на дилдо.'
		elseif orgazm = 6:
			horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы почувствовали как дилдо проникает в вашу киску. Между ног приятно, но дилдо значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end

		if vagina <= dick:vagina = vagina + 1
	elseif vagina = 0 and mesec <= 0:
		horny = 0
		manna = manna - 15
		willpower = willpower - 15
		vagina = vagina + 1
		'Вы закусили губу от боли и из глаз брызнули слезы когда <<dick>> сантиметровый дилдо вошел в вас, разорвав вашу девственную плеву. Вы заплакали от боли и вынули из себя окровавленный дилдо.'
	end

	if vagina < dick:vagina += 1
}

$d_analsex_dildo = {
	frost = 0

	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0
		'Вы вытащили из вашей ещё узкой и тугой попки пробку,'
	end

	if dick >= anus:anus = anus + 3

	'Вы раздвинув свои ягодицы стали массировать анальное отверстие пальцами, сначала одним, потом двумя.'

	if lubri > 0:
		lubri -= 1
		lubonus += RAND(2,5)
		'Вы выдавили анальной смазки себе на руку и начали намазывать свою попку. После этого вы немного смазали дилдо.'
	end

	if anus < 10:'Когда в вашу попку вошло три пальца вы невольно застонали от боли.'
	if anus >= 10:'Потом вы ввели себе три пальца и начали растягивать анус.'
	'Вы вытащили пальцы из своей попы и приставили дилдо к своей дырочке.'
	if anus + 10 < dick:'Вы взвизгнули и закусили губы от резкой боли когда его <<dick>> сантиметровый дилдо раздвинув вашу попку вошел в вас.'
	if anus + 10 >= dick:'Вы застонали от чувства переполненности когда его <<dick>> сантиметровый дилдо раздвинув вашу попку вошел в вас.'
	'Вы замерли на минуту, давая своей попе приспособится к торчащему в ней дилдо, после чего начали водить им все настойчивей, растягивая свой анус.'

	if anus + lubonus + 2 < dick:
		if mop > 1:mop = 0
		horny -= 20
		manna -= 20
		if agape < 3:agape = 3
		agapetime = totminut
		'Вашу попу пронзила острая боль когда вы начали двигать в своей попе <<dick>> сантиметровый дилдо.'
	elseif anus + lubonus + 2 >= dick:
		horny += 10
		if agape < 2 and lubonus = 0:agape = 2
		agapetime = totminut
		'Вы начали ритмично стонать в такт движениям <<dick>> сантиметрового дилдо внутри вас. Вы чувствуете как ваш анус растягивается когда дилдо двигается внутри попки.'

		if horny >= 100:
			if anal >= 10 and orgasm > 0:
				manna += 20
				if agape < 1 and lubonus = 0:agape = 1 & agapetime = totminut
				'Вам становиться немного приятно когда дилдо движется внутри вашей попки и вы стоните от удовольствия.'
			end
		end
	end
	lubonus = 0
}

$d_strapon_vag = {
	frost = 0

	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna = manna - 10
		willpower = willpower - 10
		'У вас месячные и в то время пока <<$boy>> вгоняет в вашу киску <<dick>> сантиметровый страпон, из влагалища потихоньку вытекает кровь.'
	elseif mesec <= 0 and vagina > 0:
		!месячных нет
		!horny - возбужденность
		!vagina - эластичность вагины
		!silavag - умение парня 0-неумеха, 1-середняк 2-ебарь
		!dick - размер члена парня
		!orgazm - коэфициент удовольствия Итог
		!0 - очень больно, 1 - больно, 2 - не приятно, 3 - так себе, 4 - недооргазм 5 - оргазм
		smazka = horny/10
		prinat = smazka + vagina

		if dick >= prinat*2:
			!член критично больше возможностей гг
			orgazm = 0
		elseif dick < prinat*2 and dick > prinat:
			!член больше возможностей гг
			if horny >= 100:orgazm = 5
			if horny >= 90 and horny < 100:orgazm = 4
			if horny >= 80 and horny < 90:orgazm = 3
			if horny >= 70 and horny < 80:orgazm = 2
			if horny >= 60 and horny < 70:orgazm = 1
			if horny < 60:orgazm = 0
		elseif dick <= prinat and dick >= vagina:
			!член меньше возможностей гг
			if horny >= 80:orgazm = 5
			if horny >= 60 and horny < 80:orgazm = 4
			if horny >= 40 and horny < 60:orgazm = 3
			if horny < 40:orgazm = 2
		elseif dick <= prinat and dick < vagina:
			if horny >= 100:orgazm = 5
			if horny >= 90 and horny < 100:orgazm = 4
			if horny < 90:orgazm = 6
		end

		if oragazm = 5:
			preOrg += 1
			if razeba < 4:
				oragazm = 4
			elseif razeba = 4:
				orgrand = RAND(50,300)
				if orgrand > preOrg:oragazm = 4
			elseif razeba >= 5:
				orgrand = RAND(0,100)
				if orgrand > preOrg:oragazm = 4
			end
		end

		if orgazm = 0:
			vgape = 3
			vgapetime = totminut
			horny = 0
			manna = manna - 15
			willpower = willpower - 15

			'Вы застонали от боли когда <<$boy>> засунула в вас <<dick>> сантиметровый страпон, из глаз потекли слезы и между ног ощущение как будто вам вогнали раскаленный прут.'
		elseif orgazm = 1:
			if vgape < 2:vgape = 2
			vgapetime = totminut
			horny = horny - 10
			manna = manna - 10
			willpower = willpower - 10

			'Вы закусили губу от боли когда <<$boy>> засунула в вас <<dick>> сантиметровый страпон, между ног болезненные ощущения.'
		elseif orgazm = 2:
			if vgape < 1:vgape = 1
			vgapetime = totminut
			horny = horny - 5
			manna = manna - 5
			willpower = willpower - 5

			'Вы вздрогнули от внезапной боли когда <<$boy>> засунула в вас <<dick>> сантиметровый страпон, но болезненные ощущения между ног плавно успокаиваются и становятся вполне сносными. Вы пытаетесь возбудиться пока <<$boy>> двигает <<dick>> сантиметровый страпон в вашей киске, но у вас ничего не выходит.'
		elseif orgazm = 3:
			!horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> засунула в вас <<dick>> сантиметровый страпон. Между ног становится немного приятно, когда <<$boy>> трахает вас страпоном.'
		elseif orgazm = 4:
			!horny = horny + 10
			manna = manna + 10
			willpower = willpower + 10

			'Вы вздрогнули от ощущения, что ваша киска растягивается, когда <<$boy>> засунула в вас <<dick>> сантиметровый страпон. Между ног становится немного приятно, когда <<$boy>> трахает вас при помощи страпона. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		elseif orgazm = 5:
			horny = 0
			manna = manna + 15
			willpower = willpower + 15
			orgasm = orgasm + 1
			vaginalOrgasm += 1

			'Вы вздрогнули от приятного ощущения, когда ваша киска начала растягиваться принимая в себя страпон. Между ног становится очень тепло и приятно, когда крепкий <<dick>> сантиметровый страпон двигается в вашей киске. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения обрушиваются на вас и все ваше тело охватывают горячие волны оргазма, вы невольно кричите от удовольствия извиваясь на дилдо.'
		elseif orgazm = 6:
			horny = horny + 5
			manna = manna + 5
			willpower = willpower + 5

			'Вы почувствовали как страпон проникает в вашу киску. Между ног приятно, но страпон значительно меньше вашей киски и <<dick>> сантиметров для вас мало. Постепенно приятное тепло и пульсация нарастают в низу живота, потом ощущения чуть уменьшаются и остаются до конца.'
		end

		if vagina <= dick:vagina = vagina + 1
	elseif vagina = 0 and mesec <= 0:
		horny = 0
		manna = manna - 15
		willpower = willpower - 15
		vagina = vagina + 1

		'Вы закусили губу от боли и из глаз брызнули слезы когда <<dick>> сантиметровый страпон вошел в вас, разорвав вашу девственную плеву. Вы заплакали от боли и <<$boy>> вынула из вас окровавленный страпон.'
	end

	if vagina < dick:vagina += 1
}

$d_strapon_anal = {
	frost = 0

	if analplugin = 1:
		analpluginbonus = 10
		analplugin = 0
		'Вы вытащили из вашей ещё узкой и тугой попки пробку,'
	end

	if dick >= anus:anus = anus + 3
	'<<$boy>> раздвинув ваши ягодицы стала массировать анальное отверстие пальцами, сначала одним, потом двумя.'

	if lubri > 0:
		lubri -= 1
		lubonus += RAND(1,5)
		'Вы выдавили анальной смазки себе на руку и начали намазывать свою попку. После этого <<$boy>> смазала страпон.'
	end

	if anus < 10:'Когда в вашу попку вошло три пальца вы невольно застонали от боли.'
	if anus >= 10:'Потом <<$boy>> ввела вам три пальца и начала растягивать анус.'
	'<<$boy>> вытащила пальцы из вашей попы и приставили страпон к вашей дырочке.'
	if anus + 10 < dick:'Вы взвизгнули и закусили губы от резкой боли когда <<dick>> сантиметровый страпон раздвинув вашу попку вошел в вас.'
	if anus + 10 >= dick:'Вы застонали от чувства переполненности когда <<dick>> сантиметровый страпон раздвинув вашу попку вошел в вас.'
	'<<$boy>> замерла на минуту, давая вашей попе приспособится к торчащему в ней страпону, после чего начала водить им все настойчивей, растягивая ваш анус.'

	if anus + lubonus + 2 < dick:
		if mop > 1:mop = 0
		horny -= 20
		manna -= 20
		if agape < 3:agape = 3
		agapetime = totminut
		'Вашу попу пронзила острая боль когда <<$boy>> начала трахать вашу попу при помощи <<dick>> сантиметрового страпона.'
	elseif anus + lubonus + 2 >= dick:
		horny += 10
		if agape < 2 and lubonus = 0:agape = 2
		agapetime = totminut
		'Вы начали ритмично стонать в такт движениям <<dick>> сантиметрового страпона внутри вас. Вы чувствуете как ваш анус растягивается когда страпон двигается внутри попки.'

		if horny >= 100:
			if anal >= 10 and orgasm > 0:
				manna += 20
				if agape < 1 and lubonus = 0:agape = 1 & agapetime = totminut
				'Вам становиться немного приятно когда страпон движется внутри вашей попки и вы стоните от удовольствия.'
			end
		end
	end

	lubonus = 0
}

$doublepenetration = {
	frost = 0
	smazka = horny/10
	prinat = smazka + vagina

	if dick > prinat:
		!член больше возможностей гг
		if vgape < 3:vgape = 3
		vgapetime = totminut
		DPvag = 2
	elseif dick <= prinat and dick >= vagina:
		!член меньше возможностей гг
		if vgape = 2:vgape = 3
		if vgape < 2:vgape = 2
		vgapetime = totminut
		DPvag = 1
	elseif dick < vagina:
		if vgape = 2:vgape = 3
		if vgape = 1:vgape = 2
		if vgape < 1:vgape = 1
		vgapetime = totminut
		DPvag = 0
	end

	if lubri > 0:
		lubri -= 1
		lubonus += RAND(1,5)
	end

	if anus+lubonus+5<dick2:
		if agape < 3:agape = 3
		agapetime = totminut
		DPass = 2
	elseif anus+lubonus < dick2 and anus+lubonus+5 >= dick2:
		if agape = 2:agape = 3
		if agape < 2:agape = 2
		agapetime = totminut
		DPass = 1
	elseif anus +lubonus >= dick2:
		if agape = 2:agape = 3
		if agape = 1:agape = 2
		if agape < 1:agape = 1
		agapetime = totminut
		DPass = 0
	end

	if mesec > 0:
		!месячные, оргазм не возможен
		horny = 0
		manna = manna - 10
		willpower = willpower - 10
		'У вас месячные и вам не приятно и больно пока <<dick>> сантиметровый член таранит вашу кровоточащую вагину. Одновременно вы чувствуете как ваш <<$anustipe>> анус трахает второй член длинною <<dick2>> сантиметров.'
	end

	totPAIN = DPvag+DPass+(agape-1)+(vgape-1)
	if totPAIN = 0:
		'Ощущения сливаются воедино когда внутри вас двигаются два члена соприкасаясь друг с другом через тоненькую стеночку разделяющее ваше влагалище наполненное <<dick>> сантиметровым членом и ваш <<$anustipe>> анус заполненный <<dick2>> сантиметровым членом. Внизу живота горит приятный огонек распространяя тепло по всему телу.'
		bonusManna = (manna*100)/mannamax
		DPplus = (vaginalOrgasm*10)+horny+bonusManna
		DPminus = RAND(250,350)
		if DPplus > DPminus:
			vaginalOrgasm += 1
			DPorgasm += 1
			orgasm += 1
			manna = mannamax
			horny = 0
			'Внезапно вас охватывает оргазм и вы не помня себя стоните и кричите пока ваши мышцы судорожно сокращаются вокруг двух членов внутри вашего тела.'
		end
	elseif totPAIN = 1:
		'Ощущения сливаются воедино когда внутри вас двигаются два члена соприкасаясь друг с другом через тоненькую стеночку разделяющее ваше влагалище наполненное <<dick>> сантиметровым членом и ваш <<$anustipe>> анус заполненный <<dick2>> сантиметровым членом. Немного больно, но все же очень приятно чувствовать как все свободные отверстия заполняются членами.'
	elseif totPAIN = 2:
		horny = horny/2
		manna = manna/2
		'Вы чуствуете себя так, как будто вот вот готовы лопнуть от переполненности когда внутри вас двигаются два члена соприкасаясь друг с другом через тоненькую стеночку разделяющее ваше влагалище наполненное <<dick>> сантиметровым членом и ваш <<$anustipe>> анус заполненный <<dick2>> сантиметровым членом. Ощущения очень странные, в один клубок смешалась боль, удовольствие и болезненная переполненность.'
	elseif totPAIN = 3:
		manna = manna/4
		horny = horny/4
		if mop > 1:mop = 0
		'Вам больно и иногда резкие вспышки боли заставляют вас застонать когда внутри вас двигаются два члена соприкасаясь друг с другом через тоненькую стеночку разделяющее ваше влагалище наполненное <<dick>> сантиметровым членом и ваш <<$anustipe>> анус заполненный <<dick2>> сантиметровым членом. Вы чувствуете себя готовой лопнуть, ваша попа и киска по ощущениям слились в один довольно болезненный комок. Ваши глаза не произвольно застилает пелена слез.'
	elseif totPAIN >= 4:
		manna = 0
		horny = 0
		willpower = willpower/2
		if mop > 1:mop = 0
		'Вы визжите и слезы ручьем льются из ваших глаз от жуткой боли, весь ваш низ живота и попа отдает острой болью пока вас трахает <<$boy>> во влагалище своим <<dick>> сантиметровым членом и <<$boy2>> практически рвет ваш <<$anustipe>> анус своим <<dick2>> сантиметровым орудием.'
	end

	if vagina < dick:vagina += 1
	if anus < dick2:anus += 1
	!sex += 1
	gs'stat'
}
--- dinSex2 ---------------------------------

