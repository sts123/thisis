# kinosvid
minut += 60
kisvrand = 0
manna += 10
gs'stat'

'<center><b>Кинотеатр</b></center>'
'<center><img src="images/img/kinosvid/0.jpg"></center>'
'Вы и <<$telsob>> купили билеты и заняв свои места приготовились к просмотру'

act 'Смотреть кино':
	if $telsob = 'Алла':
		alla += 1

		if alla >= 20:
			kisvrand = RAND(0,10)
			if kisvrand > 0 and kisvrand < 3:gt'kinosvid','1'
			if kisvrand > 2 and kisvrand < 5:gt'kinosvid','2'
			if kisvrand = 0 or kisvrand > 4:gt'kinosvid','3'
		elseif alla < 20:
			gt'kinosvid','3'
		end
	elseif $telsob = 'Маша':
		masha += 1

		if masha >= 20:
			kisvrand = RAND(0,10)
			if kisvrand > 0 and kisvrand < 3:gt'kinosvid','1'
			if kisvrand > 2 and kisvrand < 5:gt'kinosvid','2'
			if kisvrand = 0 or kisvrand > 4:gt'kinosvid','3'
		elseif masha < 20:
			gt'kinosvid','3'
		end
	elseif $telsob = 'Катя':
		kat += 1

		if kat >= 20:
			kisvrand = RAND(0,10)
			if kisvrand > 0 and kisvrand < 3:gt'kinosvid','1'
			if kisvrand > 2 and kisvrand < 5:gt'kinosvid','2'
			if kisvrand = 0 or kisvrand > 4:gt'kinosvid','3'
		elseif kat < 20:
			gt'kinosvid','3'
		end
	end
end

if $ARGS[0] = '1':
	cla
	*clr
	'<center><img src="images/img/kinosvid/1.jpg"></center>'
	'Передавая вам попкорн <<$telsob>> отвлеклась на экран и просыпала его на вас.'

	act 'Ой':
		cla
		*clr
		lesbian += 1

		'<center><img src="images/img/kinosvid/2.jpg"></center>'
		'"Вот я неуклюжая" прошептала она и принялась убирать попкорн с вашей одежды, её руки скользили по вашему телу собирая попкорн, когда она сняла все c одежды её пальцы скользнули под одежду вытаскивая от туда остатки попкорна, от её прикосновений вы немного возбудились, <<$telsob>> же уже задирала вам одежду чтобы её было удобнее доставать попкорн.'
		'Вдруг она задрала голову и осмотрела зал, в котором никого кроме вас не было и улыбнувшись сказала "Угостишь попкорнчиком?" с этими словами она опустила голову к вашей груди и остатки попкорна стали быстро исчезать с вашего тела под воздействием её языка, отправляющего их к ней в рот.'

		act 'Наслаждаться':gt'kinosvid','10'
		act 'Ласкать её':gt'kinosvid','11'
	end
end

if $ARGS[0] = '10':
	cla
	*clr
	orgasm += 1

	'<center><img src="images/img/kinosvid/3.jpg"></center>'
	'Вскоре её язычок спустился ниже по животу и вот <<$telsob>> уже впилась язычком в вашу киску умело массируя клитор и доводя вас до оргазма.'

	act 'Наслаждаться':
		cla
		*clr
		orgasm += 1
		vagina += 1

		'<center><img src="images/img/kinosvid/4.jpg"></center>'
		'<<$telsob>> пустила в ход пальчики, продолжая массировать языком клитор, она засунула сначала один, затем второй пальчик и так пока в вас не оказались четыре ей пальчика, за тем она сложила все пальцы и ей кисть целиком вошла в вас и начала осторожно двигаться внутри продолжая лизать клитор, через несколько секунд такого массажа вас вновь накрыл оргазм.'

		act 'Ласкать её':gt'kinosvid','13'
		act 'Закончить':gt'kinosvid','3'
	end

	act 'Ласкать её':gt'kinosvid','12'
end

if $ARGS[0] = '11':
	cla
	*clr
	'<center><img src="images/img/kinosvid/5.jpg"></center>'
	'Вы поднялись с кресла заставляя ей встать и впившись губами в её грудь, запустили руку к ней в штаны, её киска была уже сильно влажная и ваши пальчики без труда проскользнули внутрь. Через минуту <<$telsob>> сильно прижала вашу голову к груди и вы ощутили как все её тело содрогнулось а по вашей руке потекли её соки.'

	act 'Ласкать её киску':gt'kinosvid','14'
	act 'Ласкать её попку':gt'kinosvid','15'
	act 'Поставить на колени':gt'kinosvid','16'
end

if $ARGS[0] = '12':
	cla
	*clr
	'<center><img src="images/img/kinosvid/6.jpg"></center>'
	'Вы сползли пониже и взяв <<$telsob>> под руки потянули наверх, она поняла что вы хотите и быстро заскочила на кресла, расположив свою сочащуюся киску над вашим лицом. Прильнув губами к её промежности вы ввели свой язык в неё, старательно орудуя им внутри. Через несколько минут <<$telsob>> стала быстро тереться о ваш ротик и через пару секунд её соки заполнили ваш рот.'

	act 'Закончить':gt'kinosvid','3'
end

if $ARGS[0] = '13':
	cla
	*clr
	'<center><img src="images/img/kinosvid/7.jpg"></center>'
	'Усадив её в кресло, вы опустились на колени и начали вылизывать ей киску одновременно вставляя в неё пальчики один за другим, когда её киска достаточно растянулась, вы сложили ладонь и осторожно ввели её. Вскоре <<$telsob>> содрогнулась и из её уст вырвался стон удовольствия.'

	act 'Подставить попку':gt'kinosvid','110'
	act 'Закончить':gt'kinosvid','3'
end

if $ARGS[0] = '14':
	cla
	*clr
	'<center><img src="images/img/kinosvid/8.jpg"></center>'
	'Развернув её спиной к себе вы немного толкнули её вперед так чтобы она встала коленями на кресло и опустившись на колени прильнули к её киске, ваш язык то заскакивал внутрь то ласкал клитор, <<$telsob>> постанывала от удовольствия.'

	act 'Ласкать её':gt'kinosvid','17'
end

if $ARGS[0] = '15':
	cla
	*clr
	'<center><img src="images/img/kinosvid/9.jpg"></center>'
	'Развернув её спиной к себе вы немного толкнули её вперед так чтобы она встала коленями на кресло и опустившись на колени прильнули к её попке, ваш язык то заскакивал внутрь ануса то ласкал ягодицы, <<$telsob>> постанывала от удовольствия, стараясь глубже запустить в себе ваш язык.'

	act 'Ласкать её':gt'kinosvid','17'
end

if $ARGS[0] = '16':
	cla
	*clr
	'<center><img src="images/img/kinosvid/11.jpg"></center>'
	'Вы надавили ей на плечи и <<$telsob>> быстро опустилась перед вами на колени, вы выгнулись вперед стараясь дать ей максимальный доступ к своей промежности, <<$telsob>> припала губами к вашей киски и то втягивала в себя ваши губки то пускала в ход язык, массируя ваш клитор.'

	act 'Наслаждаться':gt'kinosvid','18'
	act 'Ласкать её':gt'kinosvid','19'
end

if $ARGS[0] = '17':
	cla
	*clr
	'<center><img src="images/img/kinosvid/10.jpg"></center>'
	'Постепено вы начали вводить ей в киску пальчики, одновременно щекочя её анус язычком, каждый раз как её вагина достаточно растягивалась вы засовывали еще один пальчик, через несколько минут уже вся ваша рука была внутри её киски. <<$telsob>> стонала и старательно подмахивала в такт вашей руке, через пару минут она вскрикнула, сильно вцепившись в кресло и вы ощутили как внутри её лона разливается тепло.'

	act 'Закончить':gt'kinosvid','3'
end

if $ARGS[0] = '18':
	cla
	*clr
	orgasm += 1

	'<center><img src="images/img/kinosvid/12.jpg"></center>'
	'Вы задрали ногу на кресло а <<$telsob>> обняв ваше бедро продолжила целовать вашу киску то проникая языком внутрь, то целуя клитор, втягивала его в себя. Через несколько минут в обессилившая и удовлетворенная рухнули на кресло.'

	act 'Закончить':gt'kinosvid','3'
end

if $ARGS[0] = '19':
	cla
	*clr
	'<center><img src="images/img/kinosvid/13.jpg"></center>'
	'Вы подняли её и помогли забраться на спинку кресла, после чего широко разведя её ноги припали к её киске страстно облизывая губы и клитор, спустя несколько минут <<$telsob>> застонала, вцепившись вам в волосы и обильно кончила, вы тщательно слизали все что вытекло из неё стараясь не упустить не капли.'

	act 'Закончить':gt'kinosvid','3'
end

if $ARGS[0] = '110':
	cla
	*clr
	orgasm += 1

	'<center><img src="images/img/kinosvid/14.jpg"></center>'
	'Вы встали коленями на кресло, повернувшись к неё попкой и стали призывно покачивать бедрами, <<$telsob>> не заставила себя ждать, уже через пару секунд её руки развели ваши ягодицы а язычок настойчиво вторгался вам в попку, через несколько минут такого массажа вы кончили, и <<$telsob>> тщательно слизала все соки с ваших бедер.'

	act 'Закончить':gt'kinosvid','3'
end

if $ARGS[0] = '2':
	cla
	*clr
	lesbian += 1

	'<center><img src="images/img/kinosvid/0.jpg"></center>'
	'Во время сеанса <<$telsob>> сказала что её надо выйти и потихоньку вышла из зала.'

	act 'Ждать':
		cla
		*clr
		'<center><img src="images/img/kinosvid/20.jpg"></center>'
		if kendra = 0:'Пока её не было к вам подсела симпатичная африканка и бесцеремонно положив руку вам на бедро, начала гладить его постепенно приближаясь к промежности и вот уже её пальцы наглаживают ваш клитор. Вы растерялись от такой наглости и просто сидели в ступоре наблюдая как наманикюринные ноготки проникают вам в вагину. В этот момент в зал вернулась <<$telsob>> и увидив эту картину, тут же схватила африканку за ухо и вытащила из зала, парни сидевшие в зале рассмеялись и вернувшись <<$telsob>> начала орать на них так, что они предпочли удалиться. В зале остались только вы и <<$telsob>>.'
		if kendra > 0:'Пока её не было к вам подсела Кендра и бесцеремонно положив руку вам на бедро, начала гладить его постепенно приближаясь к промежности и вот уже её пальцы наглаживают ваш клитор. Вы растерялись от такой наглости и просто сидели в ступоре наблюдая как наманикюринные ноготки проникают вам в вагину. В этот момент в зал вернулась <<$telsob>> и увидив эту картину, тут же схватила Кендру за ухо и вытащила из зала, парни сидевшие в зале рассмеялись и вернувшись <<$telsob>> начала орать на них так, что они предпочли удалиться. В зале остались только вы и <<$telsob>>.'

		act 'Ждать':
			cla
			*clr
			'<center><img src="images/img/kinosvid/21.jpg"></center>'
			'Когда <<$telsob>> немного успокоилась и снова села рядом с вами, вы все еще так и сидели с широко раздвинутыми ногами и оголенной мокрой киской. Посмотрев на вас, <<$telsob>> спокойно начала снимать с вас верх одежды'

			act 'Ждать':
				cla
				*clr
				vagina += 1
				orgasm += 1

				'<center><img src="images/img/kinosvid/22.jpg"></center>'
				'Когда <<$telsob>> оголила вашу грудь, то сначала прошлась по ней языком, а затем впившись вам в губы, с силой вставила вам два пальца в вагину и принялась яростно двигать ими, похоже что злость в ней все еще бурлила. Вам льстило что <<$telsob>> ревнует и вы начали старательно подмахивать, хотя с трудом успевали за её движениями, и через несколько минут кончили. <<$telsob>> никак не унималась и попыталась перевернуть вас.'

				act 'Подчиниться':
					cla
					*clr
					orgasm += 1

					'<center><img src="images/img/kinosvid/23.jpg"></center>'
					'Вы послушно перевернулись и встали раком на кресле, на этот раз уже четыре пальца вошли вам в вагину. <<$telsob>> двигала ими с такой скоростью что вскоре вам стала больно, но сквозь эту боль пробивалось удовольствие и вскоре вы снова кончили.'

					act 'Далее':
						cla
						*clr
						'<center><img src="images/img/kinosvid/24.jpg"></center>'
						'<<$telsob>> встала на подлокотники соседнего кресла и взяв вашу руку вставила четыре пальца себе в киску, вы начали осторожно двигать рукой стараясь не причинить ей боли, но получив укоризненный взгляд, ускорились что было сил. <<$telsob>> Стонала так что перекрикивала фильм, вскоре она вскрикнула и обмякла, сползая с подлокотников она поцеловала вас и как ни в чем не бывало продолжила смотреть фильм.'

						act 'Закончить':gt'kinosvid','3'
					end
				end

				act 'Ласкать её':gt'kinosvid','22'
			end

			act 'Ласкать её':gt'kinosvid','21'
		end
	end
end

if $ARGS[0] = '21':
	cla
	*clr
	'<center><img src="images/img/kinosvid/25.jpg"></center>'
	'Не дожидаясь пока она закончит в скидываете с себя остатки одежды и сев на пол перед ней запрокидываете голову и высовываете язык. <<$telsob>> не спеша встала и скинув одежду встала над вами, она несколько раз качнула бедрами так чтобы ваш высунутый язык прошелся по её киске, затем остановилась расположив свою киску так, что ваш язычок слегка касался её клитора. Вы прильнули к её промежности и то запускали язык внутрь то щекотали клитор, спустя несколько минут <<$telsob>> кончила наполняя ваш рот своими выделениями.'

	act 'Закончить':
		cla
		*clr
		orgasm += 1

		'<center><img src="images/img/kinosvid/26.jpg"></center>'
		'Когда вы уже оделись и вновь сели смотреть фильм, <<$telsob>> вдруг упала на колени у вашего кресла и широко раскинув вам ноги впилась губами вам в киску, её язычок заскользил по вашим губкам и клитору то заскакивая в вагину то проскакиваю чуть ниже к анусу. Вскоре её старания увенчались успехом, ваше тело всколыхнулось по коже пробежали мурашки и волна удовольствия накрыла вас.'

		act 'Закончить':gt'kinosvid','3'
	end
end

if $ARGS[0] = '22':
	cla
	*clr
	'<center><img src="images/img/kinosvid/27.jpg"></center>'
	'Вы слегка отталкиваете её и опустившись на колени задираете её ноги вверх. <<$telsob>> раздвигает бедра руками и вы начинаете ласкать её языком, сначала проводя по бедрам затем облизываете её губы и аккуратно вводите язык её в вагину, затем по спирали возвращаетесь обратно к бедрам, через несколько таких подходов <<$telsob>> начинает дрожать и из неё вырывается стон удовольствия.'

	act 'Закончить':gt'kinosvid','3'
end

if $ARGS[0] = '3':
	cla
	horny = 0
	minut += 90
	gs'stat'

	'Когда фильм закончился <<$telsob>> сказала что ей нужно бежать и ушла'

	act 'Уйти':gt'torgcentr'
end
--- kinosvid ---------------------------------

