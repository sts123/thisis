# ender
if $ARGS[0] = 'loss':
	cla
	gs'nill'

	if test = 1:
		test = 0
		act 'Далее':gt'test'
		exit
	end

	if jugoFight = 1:
		health = 100
		jugoFight = 0

		'Вы упали на пол и сознание начало ускользать от вас.'

		act 'Далее':gt'karinPRE'
		exit
	elseif jugoFight = 2:
		health = vital*10
		jugoFight = 0

		'Вы упали на пол не в силах больше драться с Джуго.'

		act 'Далее':gt'lab','start'
		exit
	elseif karinFight = 1:
		health = vital*10
		karinFight = 0

		'Вы упали на пол не в силах больше драться с Карин.'

		act 'Далее':gt'lab','start'
		exit
	elseif prostitutFight = 1:
		health = 100
		prostitutFight = 0
		money = 0
		SUB = SUB + 1
		Loss = Loss + 1
		if rikudo > 10:rikudo = rikudo - 10

		'<center><img src="images/pics/spit.jpg"></center>'
		'Вы упали на землю. Проститутка пнула вас еще пару раз. Она обыскала вас и забрала все деньги. После этого она наклонилась над вами и смачно харкнула вам в лицо.'

		act 'Далее':gt'park','start'
		exit
	elseif prostitutFight = 2:
		health = 100
		prostitutFight = 0
		money = 0
		SUB = SUB + 1
		Loss = Loss + 1
		bandfight = bandfight - 1
		if rikudo > 10:rikudo = rikudo - 10

		'<center><img src="images/picLoss/band.jpg"></center>'
		'Вы упали на землю. Бандит закурил и обыскал вас, забрал все ваши деньги, потом скомандовал, "открой рот шлюха". Вы подчинились и открыли рот. Он затянулся и стряхнул пепел вам в рот. "Надеюсь ты усвоила урок шлюха, в следующий раз я не буду таким добрым, накажу по настоящему."'

		act 'Далее':gt'park','start'
		exit
	elseif prostitutFight = 3:
		health = 100
		prostitutFight = 0
		money = 100
		SUB = SUB + 2
		Loss = Loss + 1
		stellfight = stellfight - 1
		if rikudo > 10:rikudo = rikudo - 10

		'<center><img src="images/picVA/irinaQW7.jpg"></center>'
		'Вы упали на землю. Проститутка пнула вас еще пару раз. Она обыскала вас и забрала все деньги. Ей этого показалось мало, он приказала вам встать на колени. Стащив свои трусики, она уселась вам на лицо, заставляя вылизывать, пахнущую выделениями и спермой киску. Боясь новых побоев, вы тщательно полировали своим языком ее промежность. Через несколько минут, оставшись довольной, она оставила вас приходить в себя.'

		act 'Далее':gt'park','start'
		exit
	elseif KisaFight = 1:
		health = 100
		KisaFight = 0
		SUB = SUB + 1
		Loss = Loss + 1
		if rikudo > 10:rikudo = rikudo - 10
		if KisameSex = 0:KisameSex = 1 & guy = guy + 1
		sex = sex + 1
		vagina = vagina + 1
		rape = rape + 1
		horny = 0

		'<center><img src="images/picQW/kisameSex.jpg"></center>'
		'Кисаме плавает вокруг вас и смеется, я отлично повеселился детка. Он схватил вас за ноги у утянул на самое дно бассейна, где всадил вам в киску свой член, вы стараетесь не захлебнутся в воде пока Кисаме вас трахает, Он метелит ваши внутренности своим членом как отбойным молотком и вы чувствуете, что больше не можете не дышать, в глазах темнеет, Кисаме улыбается и наклоняется к вам, поцелуй меня, вы присосались губами к его рту и он вдохнул в вас новую порцию воздуха. Наконец он кончил и его акулье семя стало плавать в воде.'

		act 'Уползти из бассейна':gt'street'
		exit
	elseif RapistFight = 1:
		RapistFight = 0
		health = 100
		RapistFight = 0
		SUB = SUB + 1
		Loss = Loss + 1
		if rikudo > 10:rikudo = rikudo - 10
		sex = sex + 1
		vagina = vagina + 1
		guy = guy + 1
		cumpussy = cumpussy + 1
		manna = 20
		willpower = 20
		rape = rape + 1

		picrand = RAND(1,6)
		if picrand = 1:'<center><img src="images/pics/gopslut.jpg"></center>'
		if picrand = 2:'<center><img src="images/pics/gopslut2.jpg"></center>'
		if picrand = 3:'<center><img src="images/pics/gopslut3.jpg"></center>'
		if picrand = 4:'<center><img src="images/pics/gopslut4.jpg"></center>'
		if picrand = 5:'<center><img src="images/pics/gopslut5.jpg"></center>'
		if picrand = 6:'<center><img src="images/pics/gopslut6.jpg"></center>'

		horand = RAND(1,100)

		'Опухшие от ударов губы шептали: "умоляю не надо", "прошу вас". Все было напрасно, слова поглощались беспощадной тьмой ночи благоволящей, как известно самым безжалостным и потерянным для света дня людям. Вы проиграли, была жалкая попытка бороться но, увы, видно сегодня вам предстоит смотреть на звездное небо, пока ваше тело будет послушным инструментом удовлетворения самых грязных фантазий. С вас сорвали одежду, оставив тело беззащитным, перед холодным руками, трогающими недоступные для чужаков места, вы взревели от бессилия. Сквозь закрытые веки вы не видели что над вами с возбудившимся обрубком навис ваш мучитель. Секунды спустя вы ощутили зловонное дыхание тела бесцеремонно подчинившего себе, ядовитое облако окутало ноздри, пожалуй, было не так отвратительно ощущать ритмичное насилие между ног, как чувствовать зловоние с запахом всевластия. Преодолев отвращение, вы разлепили опухшие от слез глаза, лица зверя вы не рассмотрели, он был сыном тьмы, и она дарила ему свое покровительство. Время безмолвия, разбавленное грязными ругательствами в ваш адрес, сменилось криками и стонами блаженства. Стараясь изо всех сил, вы изображали, что он довел вас до высшего пика страсти, хотя он всего лишь наполнил болью вашу промежность, истерзав буквально каждый кусочек нежной кожи. Уловка принесла вам облегчение, насильник вскоре кончил, облив ваш живот и лобок своим обжигающим семенем, быстро одевшись, он бросился, прочь скрываясь также внезапно, как и появился. Вам было все равно на боль, на унижение, над вами разрезая огненными следами небо падали звезды, давая вам шанс загадать желание.'

		act 'Плакать':gt'street','start'
		exit
	elseif gangrapeFight = 1:
		gangrapeFight = 0
		health = 100
		SUB = SUB + 1
		Loss = Loss + 1
		if rikudo > 10:rikudo = rikudo - 10

		'Пьяное мурло повалил вас на заплеванный пол подъезда и стал срывать с вас одежду, у вас уже не было сил сопротивляться.'

		act 'Плакать':gt'sexm','gangbang'
	elseif ZverevaFight = 1:
		ZverevaFight = 0
		zverRageQW = 10
		health = 100
		Loss = Loss + 1

		'<center><img src="images/pics/spit.jpg"></center>'
		'Кристина Зверева побила вас и вы упали на землю заплакав перед всей школой. Она злобно прошипела вам "Теперь я превращу твою жизнь в ад, мразь!" Она наклонилась к вашему лицу и сказала "Открой рот падла и высунь язык." Вы послушались Кристину и открыли рот высунув язык. Кристина тут же смачно харкнула вам в рот "Глотай падла!" Вы перед всей школой униженно проглотили ее харчек, после чего Кристина еще раз плюнула уже попав вам в лицо. Поиздевавшись над вами Кристина пару раз пнув вам по ребрам развернулась и пошла со школьной площадки.'

		act 'Уйти':gt'gschool'
	end
end

if $ARGS[0] = 'win':
	cla
	gs'nill'

	if test = 1:
		test = 0
		act 'Далее':gt'test'
		exit
	end

	if jugoFight = 2:
		health = vital*10
		rikudo = rikudo + 10
		jugoFight = 0
		if winJugo = 0:winJugo = 1

		'Джуго упал на пол и больше не в силах спаринговать.'

		act 'Далее':gt'lab','start'
		exit
	elseif karinFight = 1:
		health = vital*10
		karinFight = 0
		rikudo = rikudo + 10
		if winKarin = 0:winKarin = 1

		'Карин упала на пол и больше не в силах спаринговать.'

		act 'Далее':gt'lab','start'
		exit
	elseif prostitutFight = 1:
		prostitutFight = 0
		whoreQW = 1
		DOM = DOM + 1
		Win = Win + 1
		rikudo = rikudo + 10

		'Проститутка упала на землю и начала умолять вас не бить ее больше.'

		act 'Далее':gt'park','start'
		exit
	elseif prostitutFight = 2:
		prostitutFight = 0
		DOM = DOM + 1
		Win = Win + 1
		bandfight = bandfight + 1
		rikudo = rikudo + 10
		if prostOnce = 0:prostOnce = 1 & money = money + RAND(500,5000)

		'Бандит упал на землю со стоном, вы забрали у него бумажник и добавив пару раз ногой по ребрам отошли от него.'

		act 'Далее':gt'park','start'
		exit
	elseif prostitutFight = 3:
		prostitutFight = 0
		DOM = DOM + 1
		Win = Win + 1
		stellfight = stellfight + 1
		rikudo = rikudo + 10
		money = money + RAND(300,500)

		'Побитая проститутка упала на землю, вы врезали ей еще раз под ребра и она достала все свои деньги и отдала вам, только бы вы ее больше не били.'

		act 'Далее':gt'park','start'
		exit
	elseif KisaFight = 1:
		KisameDead = 1
		KisaFight = 2
		DOM = DOM + 1
		Win = Win + 1
		if rikudo > 10:rikudo = rikudo + 3000
		money = money + 5000

		'Вы убили Кисаме и забрали с его тела 5000 рублей.'

		act 'Далее':gt'street'
		exit
	elseif RapistFight = 1:
		RapistFight = 0
		if rikudo > 10:rikudo = rikudo + 100
		DOM = DOM + 1
		Win = Win + 1
		if rapistOnce = 0:rapistOnce = 1 & money = money + RAND(500,2000)

		'Вы избили насильника и отобрали его бумажник.'

		act 'Выйти':gt'park','start'
		exit
	elseif gangrapeFight = 1:
		gangrapeFight = 0
		if rikudo > 10:rikudo = rikudo + 100
		DOM = DOM + 1
		Win = Win + 1
		if gangrapeOnce = 0:gangrapeOnce = 1 & money = money + RAND(500,2000)

		'Пьяное мурло воткнулся разбитым рылом в заплеванный пол в подъезде, вы достали у него деньги из кармана сказав это за моральный ущерб. Парни глядя на вас с опаской расступились.'

		act 'Выйти':gt'street'
	elseif ZverevaFight = 1:
		zverSlutQW = 1
		Win = Win + 1
		ZverevaFight = 0

		$npcText[18] = 'Кристина после того как отловила пиздюлей от вас, перед всей школой рассказала о том, как сосала хуй у физрука, после этого наводившая ужас на окружающих Кристина была сломлена и унижена.'
		grupTipe[18] = -1

		'Кристина Зверева упала на землю, вы схватили ее за волосы. "Ну что сучка, говори, сосала ты у физрука или нет?" Кристина заревев призналась перед всей школой в том, что она сосала хуй у физрука.'

		act 'Уйти':gt'gschool'
	end
end
--- ender ---------------------------------

