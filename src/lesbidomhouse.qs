# lesbidomhouse
gs'stat'

if $ARGS[0] = 'start':
	cla
	*clr
	minut = minut + 5
	lesrand = RAND(1,3)
	clr
	gs'stat'

	if lesrand = 1:
		'Вы позвонили, но дверь вам никто не открыл. На повторный звонок тоже никто не отозвался'

		act 'Уйти':gt'street'
	elseif lesrand >= 2:
		'Вы позвонили в дверь несколько раз. Раза с третьего вам открыли.'

		act 'Зайти':gt'lesbidomhouse','ev1'
		act 'Уйти':gt'street'
	end
end

if $ARGS[0] = 'ev1':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/picQW/lesbi.jpg"></center>'
	'Позвонили в дверь.'
	'Вам не открыли и вы хотели уйти, но желание научиться повелеванию девушками вас пересилило и вы позвонили еще раз.'
	'И наконец вам открыли.'
	'-Здравствуйте - сказала Света'
	'-а, это ты, пренебрежительно сказала дама, проходи.'

	act 'Зайти':gt'lesbidomhouse','ev2'
end

if $ARGS[0] = 'ev2':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/pic/irinaroom.jpg"></center>'
	'Вы осмотрелись, в квартире было очень чисто, но уюта это не вызывало.'
	'-Как-то не уютно у вас - сказали вы, и тут же встретились с холодным взглядом дамы.'
	'Вам стало очень неловко.'
	'-Извините - сказала вы'
	'-Ничего, ты должна привыкнуть к такой обстановке. Ведь что бы заставить девушку, нужно, чтобы она чувствовала себя неуютно, слабой, беззащитной.'
	'-Хорошо, я запомню. Я так и не спросила вашего имени.'
	'- Зови меня Хозяйкой.'

	act 'Согласиться':gt'lesbidomhouse','ev4'
	if sub < 30 and horny < 75:
		act 'Скандалить':gt'lesbidomhouse','ev3'
	end
end

if $ARGS[0] = 'ev3':
	cla
	*clr
	minut = minut+5
	lesbiQW = -1
	if dom > 0:dom = dom+5
	if sub > 0:sub = sub-5

	'<center><img src="images/picQW/pnx.jpg"></center>'
	'Вы решили, что она хочет сделать из вас рабыню и ничего большего, поэтому вы накричали на женщину и ушли'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'ev4':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/picQW/lesbi.jpg"></center>'
	'Вы подумали, что она хочет сделать из вас раба, не научить. Но все же не стали ничего говорить.'
	'-Хорошо, Хозяйка. И с чего мы начнем мое обучение?'
	'-Самое первое, это не спешить. Ты должна узнать хорошо жертву. Например для начала, выпей и вотрись в доверие к ней. С этого'
	'И начнем, ты будешь объектом, на котором я покажу тебе все свои приемы.'

	act 'Слушать дальше':gt'lesbidomhouse','ev5'
end

if $ARGS[0] = 'ev5':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/picQW/zst.jpg"></center>'
	'Вы согласились, прошли в комнату, где уже было приготовлена выпивка и закуска.'

	act 'Выпивать':gt'lesbidomhouse','ev6'
end

if $ARGS[0] = 'ev6':
	cla
	*clr
	hour = hour+23
	minut = minut+5
	lesbiQW = 3

	'<center><img src="images/picQW/zst.jpg"></center>'
	'Вы начали выпивать и вскоре ваша скованность и неуверенность пропала и вы начали рассказывать Хозяйке свои похождения,'
	'сколько у вас было парней, сколько раз давали в попу, сколько отсосали, а выпив еще рассказали, что секс был даже с'
	'незнакомыми парнями в клубах и парке и прочие ваши приключения.'
	'В конец напившись вы решили пойти домой. Хозяйка не стала вас провожать, но вы были так пьяны, что забили на это.'

	if oral >= anal and oral >= sex:
		callnm = 1
	elseif anal >= oral and anal >= sex:
		callnm = 2
	elseif sex >= oral and sex >= anal:
		callnm = 3
	end

	if vaf >= 100:
		callnm = 4
	end

	act 'Уйти домой':gt'korr'
end

if $ARGS[0] = 'start1':
	cla
	*clr
	minut = minut + 5
	lesrand = RAND(1,3)
	clr
	gs'stat'

	if lesrand = 1:
		'Вы позвонили, но дверь вам никто не открыл. На повторный звонок тоже никто не отозвался'

		act 'Уйти':gt'street'
	end
	if lesrand >= 2:
		'Вы позвонили в дверь несколько раз. Раза с третьего вам открыли.'

		act 'Зайти':gt'lesbidomhouse','ev7'
		act 'Уйти':gt'street'
	end
end

if $ARGS[0] = 'ev7':
	cla
	*clr
	minut = minut+5

	'<center><img src="images/picQW/lesbi.jpg"></center>'
	'Вы решили зайти к, хммм, Хозяйке? узнать не было ли вчера чего-то постыдного и какой ж урок вы должны'
	'были вынести? так как помните вы мало с того дня.'

	act 'Поздороваться':gt'lesbidomhouse','ev8'
end

if $ARGS[0] = 'ev8':
	cla
	*clr
	minut = minut+5

	if callnm = 1:
		$callnm = 'соска'
	elseif callnm = 2:
		$callnm = 'анальщица'
	elseif callnm = 3:
		$callnm = 'давалка'
	elseif callnm = 4:
		$callnm = 'спермоедка'
	end

	'<center><img src="images/picQW/lesbi.jpg"></center>'
	'-Здравствуйте, Хозяйка.'
	'-Привет <<$callnm>>'
	'-Как вы меня назвали? - опешили вы. И покраснели, ведь хозяйка сказала правду.'
	'-Это урок номер 2. Унижай свою цель. Используй то, что узнала о ней.'

	act 'Попросить не называть вас так':gt'lesbidomhouse','ev9'
end

if $ARGS[0] = 'ev9':
	cla
	*clr
	minut = minut+5

	if callnm = 1:
		$callnm = 'соска'
	elseif callnm = 2:
		$callnm = 'анальщица'
	elseif callnm = 3:
		$callnm = 'давалка'
	elseif callnm = 4:
		$callnm = 'спермоедка'
	end

	'-Нет, ты должна на своей шкуре почувствовать все, <<$callnm>>'
	'-Продолжаем обучение. Если то, что ты узнала о девке, заденет ее, то считай что она твоя. Заставь ее делать то, что она'
	'больше всего любит.'
	'-но если она любит ёблю и анал или сосать члены и глотать кончу, как я ее заставлю это делать? у меня же нету члена и я не'
	'какая-нить фентезийная фута.'
	'На этот счет не беспокойся, я тебе дам (может быть) специальный страпон, он может выдавать потоки спермы.'

	act 'Попросить попробовать':gt'lesbidomhouse','ev10'
end

if $ARGS[0] = 'ev10':
	cla
	*clr
	minut = minut+5

	'-ого а я и не знала про такие, можно примерить?'
	'-Пока нет, я же сказала, сначала ты все попробуешь на себе.'
	'-Хорошо - неуверенно сказали вы.'
	'-Приступим.'

	act 'Приступить':gt'lesbidomhouse','ev10a'
end

if $ARGS[0] = 'ev10a':
	cla
	*clr
	minut = minut+35
	horny = 95

	'<center><img src="images/picQW/lesbi2.jpg"></center>'

	if callnm = 1 or callnm = 4:
		'Хозяйка начала вас иметь. Сначала она заставила вас сосать пластиковый член, после чего засунула пластиковый член вам в горло и начала безбожно вас туда трахать. Вы были близки к пику наслаждения, как вдруг Хозяйка прекратила.'
	elseif callnm = 2:
		'Хозяйка начала вас иметь. Сначала она заставила вас сосать пластиковый член, потом развернула вас и начала нещадно трахать вашу киску. Вы были близки к пику наслаждения, как вдруг Хозяйка прекратила.'
	elseif callnm = 3:
		'Хозяйка начала вас иметь. Сначала она заставила вас сосать пластиковый член, потом развернула вас и начала нещадно насиловать вашу попку. Вы были близки к пику наслаждения, как вдруг Хозяйка прекратила.'
	end

	act 'Возмутиться':gt'lesbidomhouse','ev11'
end

if $ARGS[0] = 'ev11':
	cla
	*clr
	minut = minut+5
	lesbiQW = 4
	sub = sub+2
	lesbian += 1
	if ldmistresex = 0:ldmistresex = 1 & girl += 1
	lesbiday = day

	'-Ну же, я почти кончила - простонали вы.'
	'-Следующий урок - не давай девке то, что она еще не заслужила. Хочешь кончить? Сначала вылижи мне киску.'
	'Вы начали с усердием вылизывать киску Хозяйки, безропотно и беспрекословно.'
	'Получив должное наслаждение, Хозяйка положила руку вам на голову и подвела ваш язычок к своему анусу.'

	act 'Протестовать':gt'lesbidomhouse','ev12'
	act 'Вылизывать попу':gt'lesbidomhouse','ev13'
end

if $ARGS[0] = 'ev12':
	cla
	*clr
	minut = minut+5

	'-Фу, он же не вымыт, тут кал - начали отстраняться вы.'
	'-Требования не должны быть легкими, иначе девка не будет столь покорной. Но зато потом ее будет ждать очень хорошее'
	'поощрение.'

	act 'Уйти':
		lesbiQW = -1
		gt'street'
	end
	act 'Вылизывать попу':gt'lesbidomhouse','ev13'
end

if $ARGS[0] = 'ev13':
	cla
	*clr
	asslick += 1
	minut = minut+5
	energy += 1

	'<center><img src="images/picQW/lesbi3.jpg"></center>'
	'Вы нехотя начали вылизывать анус Хозяйки. Вас чуть было не стошнило, но большая возбужденность и желание узнать, что же за'
	'награда ее ждет после, заставили вас продолжать.'
	'Хозяйка вся содрогнулась, хватила вас за волосы. Она кончила.'
	'-Ну и какая награда меня ждет, Хозяйка?'
	'-Никакой...'

	act 'Непонимающе смотреть':gt'lesbidomhouse','ev14'
	act 'Уйти':
		lesbiQW = -1
		gt'street'
	end
end

if $ARGS[0] = 'ev14':
	cla
	*clr
	lesbiQW = 5

	'<center><img src="images/picQW/lesbi9.jpg"></center>'
	'-Чтоооо?! Ты же сказала, что меня потом ждет награда!!!'
	'-Это еще один урок, нельзя давать девке награды сразу. Она должна понять, что получить что-то не так то просто. Все, иди.'
	'Встретимся завтра!'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'ev15':
	cla
	*clr
	lesbiday = day
	minut = minut+30

	if callnm = 1:
		$callnm = 'соска'
	elseif callnm = 2:
		$callnm = 'анальщица'
	elseif callnm = 3:
		$callnm = 'давалка'
	elseif callnm = 4:
		$callnm = 'спермоедка'
	end

	'-Заходи, <<$callnm>>'
	'-Здравствуйте, Хозяйка.'
	'-Ну что же, ты знаешь, что делать, чтобы получить награду.'

	act 'Лизать Хозяйке':gt'lesbidomhouse','ev16'
end

if $ARGS[0] = 'ev16':
	cla
	*clr
	minut = minut+5
	asslick += 1
	horny = horny+20
	energy += 1

	'<center><img src="images/picQW/lesbi4.jpg"></center>'
	'Вы стали вылизывать сначала киску Хозяйки, а потом и немытый анус...вы не могли понять почему, но вам начало нравиться это.'
	'Когда Хозяйка насладилась в вдоволь, она встала и сказала:'
	'-Ну что, шлюшка, теперь пора и наградить тебя.'
	'-И какая же награда? - света даже не стала возмущаться, что ее так назвали, она именно так себя и чувствовала.'
	'-Вставай раком.'

	act 'Сделать, как сказали':gt'lesbidomhouse','ev17'
end

if $ARGS[0] = 'ev17':
	cla
	*clr
	minut = minut+5
	horny = 95

	'<center><img src="images/picQW/lesbi5.jpg"></center>'
	'Вы, в предвкушении блаженства, встали на четвереньки и расслабились.'
	'Сначала в киску вошел один пальчик и начал двигаться в ней.'
	'потом второй.'
	'За ним третий.'
	'Вы начали получать удовольствие...и были на грани, как в киску вошел четвертый палец.'
	'Влагалище начало раздвигаться все сильнее и вас поразила боль, вы закричали.'
	'Но Хозяйка будто не слышала этого, она начала вставлять всю ладонь.'
	'Вы снова вскрикнули от боли и готовы были вскочить на ноги.'

	act 'Наорать и уйти':gt'lesbidomhouse','ev18'
	act 'Покорно терпеть':gt'lesbidomhouse','ev19'
end

if $ARGS[0] = 'ev18':
	cla
	*clr
	horny = 0
	minut = minut+5
	lesbiQW = 6

	'<center><img src="images/picQW/pnx.jpg"></center>'
	'-Да пошла ты, извращенка херова!!! и Это награда за твою сраную жопу!!! Иди нахуй!!!'
	'Вы схватили одежду и голой помчались в свою квартиру.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'ev19':
	cla
	*clr
	minut = minut+5
	lesbiQW = 7
	sub = sub+5
	vagina += 5
	lesbian += 1
	horny = 5
	orgasm += 1

	'<center><img src="images/picQW/lesbi6.jpg"></center>'
	'Вам было дико больно, но вы, не смотря ни на что, терпели боль. Даже слёзы брызнули из глаз. Но хозяйка продолжала двигать рукой, а вы даже не подозревали, что в вашу киску может влезть целый кулак. Но в конце концов, вам даже стало нравиться, и вас поразил оргазм.'

	act 'Уйти':gt'street'
	act 'Поблагодарить хозяйку':gt'lesbidomhouse','ev20'
end

if $ARGS[0] = 'ev20':
	cla
	*clr
	lesbiQW = 8
	minut += 3

	'<center><img src="images/picQW/lesbi4.jpg"></center>'
	'Вы полезли к влагалищу хозяйки, дабы отблагодарить её за такой мощный оргазм, на что она ухмыльнулась и сказала:'
	'"А ты быстро схватываешь, Светик! Ты точно учишься, или тебе просто нравится делать всё, что тебе прикажут?"'

	act 'Возмутиться':gt'lesbidomhouse','ev18'
	act 'Молча лизать киску':gt'lesbidomhouse','ev21'
end

if $ARGS[0] = 'ev21':
	cla
	*clr
	lesbiQW = 9
	sub = sub+5
	lesbian += 1
	minut += 30

	'<center><img src="images/picQW/lesbi4.jpg"></center>'
	'После нескольких минут вашей умелой работы языком, Хозяйка содрогнулась в оргазме. Вы, ничего не говоря, встали и пошли домой'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'ev22':
	cla
	*clr
	minut += 5
	horny += 50

	'<center><img src="images/picQW/lesbi.jpg"></center>'
	'Bы подумали:"нахуй эту тварь". Но пройдя лестничный пролет, вспомнили, как лизали грязный зад и'
	'как вам это понравилось...'
	'Блин, она же меня использовала, а не учила...А черт с ней..'
	'подумали вы и решили навестить извращенку, но только чтоб вылизать ей.'
	'-Хозяйка, я тут это..пришла..ну в общем..'
	'-Понравилось подчиняться мне? - спросила Хозяйка, - ну хорошо, но ты оскорбила меня. Это не хорошо!'
	'-Я готова зализать свою вину перед вами...но без этого, вашего фистинга..'
	'-Этого будет мало, придется сделать кое-что еще!'
	'-Надеюсь без рукоприкладства?'
	'-не волнуйся.'

	act 'Исправлять свои поступки':gt'lesbidomhouse','ev23'
end

if $ARGS[0] = 'ev23':
	cla
	*clr
	lesbiday = day
	lesbiQW = 8
	sub = sub+1
	lesbian += 1
	minut += 30
	asslick += 1

	'<center><img src="images/picQW/lesbi7.jpg"></center>'
	'Вы опять начали вылизывать все места Хозяйке и вам это определенно нравилось.'
	if sub < 50 or vaf < 100:'"что ж это со мной"- думали вы'
	'-ну а теперь на колени и открой рот - сказала Хозяйка.'

	act 'Встать на колени и открыть рот':gt'lesbidomhouse','ev24'
end

if $ARGS[0] = 'ev24':
	cla
	*clr
	minut += 5
	pee += 1
	swallowpee +=1
	sweat = 2
	orgasm += 1
	horny += 5
	water += 1

	'<center><img src="images/picQW/lesbi8.jpg"></center>'
	'Хозяйка встала над вами и начала писать вам в рот. Моча попала на все лицо, в рот и на тело.'
	'Вас охватил неописуемый оргазм, похоже вам стало нравиться подчиняться.'
	'Вы еще раз вылизала киску, с которой капали капли мочи. После этого Хозяйка указала на дверь.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'ev25':
	cla
	*clr
	minut += 5
	horny += 25

	'<center><img src="images/picQW/lesbi.jpg"></center>'
	'Вы пришли к хозяйке за новой порцией фистинга, но она сказала, что вы поступили очень плохо, не поблагодарив её, и поэтому ничего не получите.'
	'Странно, но такой запрет вас только возбудил'

	act 'Узнать, как загладить вину':gt'lesbidomhouse','ev26'
end

if $ARGS[0] = 'ev26':
	cla
	*clr
	minut += 5
	horny += 25

	'<center><img src="images/picQW/lesbi10.jpg"></center>'
	'Для начала хозяйка сняла трусы (оттуда ударил запах немытого влагалища) и приказала вам сделать обычную работу язычком.'

	act 'Лизать':gt'lesbidomhouse','ev23'
end

if $ARGS[0] = 'ev28':
	cla
	*clr
	minut += 5
	horny += 25
	lesbiday = day
	energy += 1

	'<center><img src="images/picQW/lesbi11.jpg"></center>'
	'Вы пришли к хозяйке за новой порцией кала и золотого дождя, помимо прочего - вылизав ей киску'

	lrnd = RAND(1,10)
	if lrnd > 7:
		'Во время всех этих извращений вас охватил оргазм'
		orgasm += 1
	elseif lrnd <= 7:
		horny += 75
		'К сожалению, оргазма вы не получили, но очень сильно возбудились.'
	end

	pee += 1
	swallowpee += 1
	asslick += 1
	sweat = 2
	lesbian += 1
	lesbimeet += 1

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'ev29':
	cla
	*clr
	minut += 5
	horny += 25

	'<center><img src="images/picQW/lesbi3.jpg"></center>'
	'Вы пришли к хозяйке, чтобы в очередной раз вылизать ей всё, что можно, но она сказала, что у неё есть небольшой подарок для такой хорошей девочки, как вы, но язычком для начала поработать всё же придётся'

	act 'Сделать то, за чем вы пришли':gt'lesbidomhouse','ev23'
end
--- lesbidomhouse ---------------------------------

