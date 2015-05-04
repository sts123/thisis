# kavkazkafe
if $ARGS[0] = 'podgivi':
	gs'bdman','givi'
	gs'dinsexgivi'
	minut += 30
	gs'stat'

	if IrinaSlut >= 2:
		cla
		*clr
		if bjgiviiraonce = 1:bjgiviiraonce = 0
		smenaKafe = smenaKafe + 1

		tiprand = RAND(0,1)
		if tiprand = 0:
			'Гиви расплылся в улыбке схватив вас обеих руками "Вай, пойдемте телочки, развлечемся."'

			act 'Идти':gt'kavkazkafe','threesome'
		elseif tiprand = 1:
			'В комнату вошел Ашот и сказал "Ну что сучки, дрочите дырки, сейчас вас настоящие джигиты во все дыры отъебут."'

			act 'Идти':gt'kavkazkafe','foursome'
		end

		exit
	end

	podrand = RAND(0,100)
	if podrand < 70 and kavslut > 0:
		gs'bdman','ashot'

		'<center><img src="images/picKav/podsob.jpg"></center>'
		'Вы зашли в подсобку вместе с Гиви и начали пересчитывать вино и говорить Гиви цифры которые тот записывал в блокнотик.'
		'Внезапно дверь в подсобку открылась и туда вошел Ашот. Вы посмотрели на кавказцев.'
		'Гиви сказал, вай, а что? Нам понравилось, Свэтик, подставляй дырки, сейчас тебя два джигита оттрахают, век не забудешь.'

		act 'Уйти':gt'street'
		act 'Ладно':gt'kavkazkafe','grup'
		exit
	elseif podrand < 70 and kavslut = 0 and giviAnalOnce = 1:
		gs'bdman','ashot'

		'<center><img src="images/picKav/podsob.jpg"></center>'
		'Вы зашли в подсобку вместе с Гиви и начали пересчитывать вино и говорить Гиви цифры которые тот записывал в блокнотик.'
		'Внезапно дверь в подсобку открылась и туда вошел Ашот. Вы посмотрели с недоумением на Гиви.'
		'Гиви заулыбался. "Свэточка, моему племяннику Ашотику уже давно пора стать мужчиной, я надеюсь ты поможешь ему, за премиальными дело не станет."'

		act 'Да за кого вы меня принимаете?':
			cla
			'Вы возмутились "Да за кого вы меня принимаете?"'
			'Гиви засмеялся. "Ну же дэвочка смелей. Я же знаю ты хочешь потрахаться с двумя такими джигитами, вай мы никому не скажем, не бойся."'
			'Ашот подошел к вам и протянул руки что бы вас обнять.'

			act 'Позволить себя обнять':gt'kavkazkafe','grup'
			act 'Все с меня этого хватит, я иду домой!':
				cla
				'Вы выпалили "Все с меня этого хватит, я иду домой!" и развернулись идти к выходу.'
				'Гиви засеменил следом "Свэтик ну подожди я же пошютил, зачэм обижаешься?"'

				act 'Уйти':gt'street'
			end
		end

		act 'Ну ладно, давайте':gt'kavkazkafe','grup'
		exit
	end

	'<center><img src="images/picKav/podsob.jpg"></center>'
	'Вы зашли в подсобку вместе с Гиви и начали пересчитывать вино и говорить Гиви цифры которые тот записывал в блокнотик.'
	'Гиви сказал вам посчитать вину в ящике с низу, вы наклонились и начали считать.'

	if givisex = 0:
		'Вы ощутили как рука Гиви сжала вашу попку и начала гладить вас сзади.'

		act 'Продолжать считать делая вид что не замечаете':
			cla
			gs'stat'

			'Вы ухмыльнулись и продолжили считать как не в чем ни бывало. Гиви уже вовсю шарил по вашей попе руками.'
			'(Гиви) - Свэтик. Я хочу тебя. Иди ко мне сладенькая.'
			'Сильные руки Гиви развернули вас к нему. И вы оказались лицом к лицу с Гиви.'

			act 'Встать на колени':gt'kavkazkafe','givibj'
			act 'Да за кого вы меня принимаете?':
				cla
				'Вы возмутились "Да за кого вы меня принимаете?"'
				'Гиви заухмылялся. "Ты шлюха, зачэм попой перед мужиком вертишь?"'

				act 'Встать на колени':
					money += 5000
					gt'kavkazkafe','givibj'
				end
				act 'Все с меня этого хватит, я иду домой!':
					cla
					'Вы выпалили "Все с меня этого хватит, я иду домой!" и развернулись идти к выходу.'
					'Гиви схватил вас за руку и потащил к стулу в подсобке.'

					act 'Пытаться вырвать руку':gt'kavkazkafe','givirape'
				end
			end
		end
		act 'Убрать его руки':
			cla
			gs'stat'

			'Вы выпрямились и посмотрели на Гиви. "Что вы себе позволяете Гиви Карапетович?"'
			'Гиви облизываясь и пожирая вас горящими глазами сбивчиво заговорил "Вай Свэтик, ты такая сочная, слюшай, хочешь денег? Я тебе премиальные сделаю, будешь жить как королева."'

			act 'Встать на колени':gt'kavkazkafe','givibj'
			act 'Да за кого вы меня принимаете?':
				cla
				'Вы возмутились "Да за кого вы меня принимаете?"'
				'Гиви опять залопотал наступая на вас и обхватывая руками. "Ну же дэвочка смелей. Хочешь, я тебе дэнег прямо сейчас дам? Пять тысяч? И премиальные."'

				act 'Встать на колени':
					money += 5000
					gt'kavkazkafe','givibj'
				end
				act 'Все с меня этого хватит, я иду домой!':
					cla
					'Вы выпалили "Все с меня этого хватит, я иду домой!" и развернулись идти к выходу.'
					'Гиви засеменил следом "Свэтик ну подожди я же пошютил, зачэм обижаешься?"'

					act 'Уйти':gt'street'
				end
			end
		end
	else
		'Гиви смачно хлопнул вам по жопе рукой.'
		'(Гиви) - Вай, какая у тэбя попка. Светик пососи у меня, я тебе премиальных прибавлю.'

		act 'Встать на колени':gt'kavkazkafe','givibj'
		act 'Уйти':gt'street'
	end
end

if $ARGS[0] = 'grup':
	Givi = 100
	smenaKafe = smenaKafe + 2
	if GiviSex = 0:GiviSex = 1 & guy = guy + 1
	if Ashotsex = 0:Ashotsex = 1 & guy = guy + 1
	minut += 5
	kavslut += 1
	gang += 1
	bj += 2
	gs'stat'

	picrand = RAND(0,1)
	if picrand = 0:'<center><img src="images/picKav/grupbj.jpg"></center>'
	if picrand = 1:'<center><img src="images/picKav/grupbj1.jpg"></center>'

	'Вы встали на колени и взяли в обе руки члены. Вы покорно открыли рот и обхватили своими <<$liptalk>> багровый и теплый член начали вбирать его в свой рот, после нескольких движений вы не прекращая дрочить первый член обхватили своим рабочим ртом второй член и стали его отсасывать, так вы сосали по очереди члены и пытались взять сразу два хуя в ваш рабочий рот.'

	act 'Беспомощно мычать':gt'kavkazkafe','grup1'
end

if $ARGS[0] = 'grup1':
	minut += 5
	gs'stat'

	picrand = RAND(0,1)
	if picrand = 0:'<center><img src="images/picKav/grupv.jpg"></center>'
	if picrand = 1:'<center><img src="images/picKav/grupv1.jpg"></center>'

	dynamic $sexudo

	'Вы сосете член Гиви своими <<$liptalk>> вбирая его до горла каждым движением пока Ашот долбит вашу киску.'
	if givserand >= 8:anus += 1 & 'Во время секса Ашот засунул палец вам в попу и начал ее массировать.'

	gianrand = RAND(0,10)
	if anus > 1 and gianrand >= 8:
		'Внезапно Ашот вынул из вас член и стал сильнее пальцами работать в вашей попке.'

		act 'Сосать у Гиви':gt'kavkazkafe','grup2'
		exit
	end

	'Внезапно Ашот вынул из вас член и взяв вас за плечи поставил перед ним на колени.'

	act 'Подставить лицо':gt'kavkazkafe','grupcum'
end

if $ARGS[0] = 'grup2':
	minut += 5
	gs'stat'

	picrand = RAND(0,1)
	if picrand = 0:'<center><img src="images/picKav/grupd.jpg"></center>'
	if picrand = 1:'<center><img src="images/picKav/grupd1.jpg"></center>'
	if picrand = 2:'<center><img src="images/picKav/grupd2.jpg"></center>'

	'Вы продолжаете отсасывать член Гиви своими <<$liptalk>> вбирая его до горла каждым движением пока Ашот возится сзади вас.'

	gs'bdsex','an'

	gianrand = RAND(0,10)
	if anus > 1 and gianrand >= 8:
		'Внезапно Ашот вынул из вас член и стал сильнее пальцами работать в вашей попке.'

		act 'Двойное проникновение':gt'kavkazkafe','grup3'
		exit
	end

	'Внезапно Ашот вынул из вас член и взяв вас за плечи поставил перед ним на колени.'

	act 'Подставить лицо':gt'kavkazkafe','grupcum'
end

if $ARGS[0] = 'grup3':
	minut += 5
	gs'stat'

	picrand = RAND(0,1)
	if picrand = 0:'<center><img src="images/picKav/grupdouble.jpg"></center>'
	if picrand = 1:'<center><img src="images/picKav/grupdouble1.jpg"></center>'
	if picrand = 2:'<center><img src="images/picKav/grupdouble2.jpg"></center>'

	'Гиви и Ашот вводят в вас свои члены.'

	gs'bdman','givi'
	dynamic $sexudo
	gs'bdman','ashot'
	gs'bdsex','an'

	'Внезапно Ашот вынул из вас член и взяв вас за плечи поставил перед ним на колени.'

	act 'Подставить лицо':gt'kavkazkafe','grupcum'
end

if $ARGS[0] = 'grupcum':
	minut += 5
	facial += 1
	cumface += 2
	gs'stat'

	'<center><img src="images/picKav/grupcum.jpg"></center>'
	'Вы встали на колени и Ашот с Гиви вместе начали кончать вам на лицо покрывая его горячей и липкой спермой которая хлестала вам по лицу теплыми и унизительными струйками и стекала вниз.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'givirape':
	Givi = 100
	smenaKafe = smenaKafe + 1
	if GiviSex = 0:GiviSex = 1 & guy = guy + 1
	rape += 1
	givirape += 1
	minut += 5
	manna -= 20
	gs'stat'

	'<center><img src="images/picKav/rape.jpg"></center>'
	'Гиви взял скотч и начал связывать вас, что бы вы не трепыхались предварительно заткнув вам рот кляпом.'
	'Наконец он вас так замотал, что вы даже дернутся не могли.'

	act 'Беспомощно мычать':gt'kavkazkafe','givirape1'
end

if $ARGS[0] = 'givirape1':
	minut += 5
	bj += 1
	gs'stat'

	'<center><img src="images/picKav/rape1.jpg"></center>'
	'Гиви вынул кляп и вставил вам в рот свой толстый, не мытый член.'

	act 'Сосать':gt'kavkazkafe','givirapebj'
	act 'Укусить':gt'kavkazkafe','givirape2'
end

if $ARGS[0] = 'givirapebj':
	minut += 5
	if mop > 1:mop = 0
	hapri = 0
	throat = throat + 1
	cumlip += 1
	swallow += 1
	money += 5000

	'<center><img src="images/picKav/rape1.jpg"></center>'
	'Не видя другого выхода вы начали старательно работать ртом, что бы Гиви побыстрей кончил. Гиви вошел в раж и начал вас долбить своим членом в рот ударяя каждым движением вам в горло.'
	if mop > 1:mop = 0 & 'У вас потекли слезы и размазалась косметика по лицу.'
	'Наконец Гиви закряхтел и горячая струя спермы ударила вам в горло. Вы начали судорожно глотать ее что бы не подавится.'
	'После того как Гиви кончил, он сразу подобрел и начал вас развязывать. Вай Свэтик, ты хорошая соска. На тебе дэнег, купи себе что нибудь.'

	gs'stat'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'givirape2':
	minut += 5
	money += 5000

	'<center><img src="images/picKav/rape2.jpg"></center>'
	'Вы укусили член и Гиви разъярился, тогда я тебя в жопу выебу шлюха, раз сосать не хочешь.'
	'Вы почувствовали как что то большое и твердое прижимается к вашему анусу пытаясь туда войти.'

	if anus >= 1:
		anus += 3
		anal += 1
		cumass += 1
		manna -= 100
		horny = 0

		'Гиви надавил сильнее и его член влетел в вашу попу. Вы завизжали от сумасшедшой боли. Гиви начал долбить вас в жопу без смазки не обращая на то, что вы ревели как белуга.'
		'Анальное изнасилование показалось вам вечностью, наконец Гиви закряхтел и остановился, вы почувствовали как попе разливается тепло от его спермы.'
	elseif anus <= 0:
		'Аа, какая ты узкая, никак не войду, ладно, тогда в пизду тебя отъебу.'

		dynamic $sexudo

		'Вы стонали и кряхтели с заткнутым ртом пока Гиви долбил ваши внутренности своим членом.'

		pose = 1

		dynamic $sexcum
	end

	gs'stat'

	'После того как Гиви кончил, он сразу подобрел и начал вас развязывать. Вай Свэтик, не реви, ты же баба, тебе на роду написано под мужиком лежать, а ты кочевряжишься. На тебе дэнег, купи себе что нибудь.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'givibj':
	Givi = 100
	smenaKafe = smenaKafe + 1
	if GiviSex = 0:GiviSex = 1 & guy = guy + 1
	givitime += 1
	minut += 3
	gs'bdman','givi'
	gs'stat'

	'<center><img src="images/picKav/before.jpg"></center>'
	'Вы кивнули головой и встали перед пузатым армянином на колени. Он расстегнул ширинку и достал оттуда свой длинный и толстый член который очутился прямо на против вашего лица едва не касаясь вас.'

	act 'Дрочить его член':gt'kavkazkafe','givibj1'
	act 'Взять в рот':gt'kavkazkafe','givibj3'
end

if $ARGS[0] = 'givibj1':
	minut += 3
	hj += 1
	gs'stat'

	'<center><img src="images/picKav/before3.jpg"></center>'
	'Вы взяли член Гиви руками и начали его ласкать своими пальчиками. Гиви положил свою волосатую руку вам на лицо и стал трогать ваши губы.'

	act 'Сосать его палец':gt'kavkazkafe','givibj2'
	act 'Взять в рот член':gt'kavkazkafe','givibj3'
end

if $ARGS[0] = 'givibj2':
	minut += 3
	if sub > 0:horny += sub
	sub += 1
	gs'stat'

	'<center><img src="images/picKav/before2.jpg"></center>'
	'Вы начали сосать соленые пальцы Гиви и дрочить его член.'

	act 'Взять в рот':gt'kavkazkafe','givibj3'
end

if $ARGS[0] = 'givibj3':
	minut += 3
	bj += 1
	hapri = 0
	gs'stat'

	'<center><img src="images/picKav/bj1.jpg"></center>'
	'Гиви взял вас за волосы подтянул ваше лицо к его члену. Вы коснулись своими <<$liptalk>> багровой головки. Гиви с удовольствием провел залупой вам по губам. Вы встав на четвереньки обхватили своими <<$liptalk>> его толстый и чуть солоноватый член и начали его сосать, вбирая до горла этот твердый кусок плоти заполняющий ваш рот.'

	act 'Сосать дальше':gt'kavkazkafe','givibj4'
end

if $ARGS[0] = 'givibj4':
	minut += 3
	gs'stat'

	'<center><img src="images/picKav/bj.jpg"></center>'
	'Гиви надоело стоять и он сел на диванчик не выпуская ваших волос из рук. Вы продолжили работать своими <<$liptalk>> обрабатывая твердый как камень член стоя перед пузатым кавказцем на четвереньках. Гиви начал пыхтеть и кажется вот вот кончит.'

	act 'Вынуть изо рта':gt'kavkazkafe','givibj5'
	act 'Продолжать сосать':gt'kavkazkafe','givibj6'

	if givitime > 1:
		givrand = RAND(0,100)
		if givrand >= 75:
			cla
			'Гиви вынул член из вашего рта и сказал "Становись Свэтик раком."'

			act 'Встать раком':gt'kavkazkafe','givisex'
		end
	end
end

if $ARGS[0] = 'givibj5':
	minut += 3
	facial += 1
	cumface += 1
	gs'stat'

	picrand = RAND(1,9)
	'<center><img src="images/picKav/facial<<picrand>>.jpg"></center>'
	'Вы вынули член изо рта, но Гиви не дал вам увернутся и струя спермы хлестнула вам по губам покрывая вас липкой и горячей жижей с резким запахом.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'givibj6':
	minut += 3
	swallow += 1
	cumlip += 1
	gs'stat'

	picrand = RAND(1,9)
	'<center><img src="images/picKav/cum<<picrand>>.jpg"></center>'
	'Вы открыли ротик и Гиви начал кончать вам в рот набивая его спермой. Вкус у спермы был ужасный и ее у вас был полный рот, плевать было особо не куда и дождавшись пока Гиви иссякнет, вы проглотили сперму в вашем рту которая оставила после себя резкое послевкусие и из вашего рта можно было за пару метров унюхать резкий запах спермы.'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'givisex':
	minut += 3
	gs'stat'

	'<center><img src="images/picKav/before4.jpg"></center>'
	'Вы разделись и встали на четвереньки раздвинув руками полужопия. Гиви одобрительно хмыкнул и шлепнул вам по жопе рукой. "Хорошая жопа у тебя Свэтка!"'

	if givitime > 5:
		givrand = RAND(0,100)
		if givrand >= 75 and anal > 0 and giviVagOnce = 1:
			cla
			'Свэтик, я тебя в попку хочу.'

			act 'Я так не хочу':gt'kavkazkafe','givisex1'
			act 'Закрыть глаза':gt'kavkazkafe','givianal'
			exit
		end
	end

	act 'Закрыть глаза':gt'kavkazkafe','givisex1'
end

if $ARGS[0] = 'givisex1':
	minut += 3
	if giviVagOnce = 0:giviVagOnce = 1
	gs'stat'

	givserand = RAND(0,10)
	if givserand < 8:'<center><img src="images/picKav/sex.jpg"></center>'
	if givserand >= 8:'<center><img src="images/picKav/sex1.jpg"></center>'

	dynamic $sexudo

	'Вы стоните пока Гиви долбил ваши внутренности своим членом.'

	if givserand >= 8:anus += 1 & 'Во время секса Гиви засунул палец вам в попу и начал ее массировать.'

	gianrand = RAND(0,10)
	if anus > 1 and givserand >= 8 and gianrand >= 8:
		'Внезапно Гиви вынул из вас член и стал сильнее пальцами работать в вашей попке.'

		act 'Закрыть глаза':gt'kavkazkafe','givianal'
		exit
	end

	givfinrand = RAND(0,10)
	if givfinrand >= 8:
		'Внезапно Гиви вынул из вас член и взяв вас за плечи поставил перед ним на колени.'

		act 'Подставить лицо':gt'kavkazkafe','givibj5'
		act 'Открыть рот':gt'kavkazkafe','givibj6'
		exit
	end

	pose = 1
	dynamic $sexcum

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'givianal':
	minut += 3
	if giviAnalOnce = 0:giviAnalOnce = 1
	gs'stat'

	'<center><img src="images/picKav/anal.jpg"></center>'

	gs'bdsex','an'

	givfinrand = RAND(0,10)
	if givfinrand >= 8:
		'Внезапно Гиви вынул из вас член и взяв вас за плечи поставил перед ним на колени.'

		act 'Подставить лицо':gt'kavkazkafe','givibj5'
		act 'Открыть рот':gt'kavkazkafe','givibj6'
		exit
	end

	gs'bdsex','ancum'

	act 'Уйти':gt'street'
end

if $ARGS[0] = 'threesome':
	minut += 3
	gang += 1
	gs'stat'

	'<center><img src="images/picKav/threestart.jpg"></center>'
	'Гиви сел на диван и достал свой член, вы с Ирой начали сексуально друг друга раздевать и целоваться.'

	act 'Сосать член':
		cls
		minut += 3
		sub += 1
		if bjgiviiraonce = 0:bjgiviiraonce = 1 & bj += 1
		gs'stat'

		tiprand = RAND(0,1)
		if tiprand = 0:
			picrand = RAND(1,6)
			'<center><img src="images/picKav/threeA<<picrand>>.jpg"></center>'
			'Вы вместе с Ирой опустились на колени и начали отсасывать член Гиви вместе, то по очереди отсасывая ствол, то вылизывая яички, иногда целуясь друг с другом.'

			dynamic $threesomedin
		elseif tiprand = 1:
			picrand = RAND(1,3)
			'<center><img src="images/picKav/threeB<<picrand>>.jpg"></center>'
			'Вы опустились на колени и начали сосать член пока Ира целовалась с Гиви.'

			dynamic $threesomedin
		end
	end
	act 'Целовать Гиви':
		cls
		minut += 3
		if bjgiviiraonce = 0:bjgiviiraonce = 1 & bj += 1
		dom += 1
		gs'stat'

		picrand = RAND(1,3)
		'<center><img src="images/picKav/threeB<<picrand>>.jpg"></center>'
		'Вы стали целоваться с Гиви пока Ира занималась его членом приводя его в боевую готовность.'

		dynamic $threesomedin2
	end
end

if $ARGS[0] = 'foursome':
	minut += 3
	gang += 1
	gs'stat'

	'<center><img src="images/picKav/four.jpg"></center>'
	'Гиви и Ашот разделись, вы с Ириной сели и целуясь стали раздевать друг друга.'

	act 'Сосать':
		cls
		minut += 3
		if bjgiviiraonce = 0:bjgiviiraonce = 1 & bj += 1
		gs'stat'

		picrand = RAND(1,10)
		'<center><img src="images/picKav/four<<picrand>>.jpg"></center>'
		'Вместе с Ириной вы начали сосать хуи у кавказцев. Киви и Ашот весело переговаривались на незнакомом языке и цокали языками.'

		act '...':
			cls
			minut += 3
			gs'stat'

			picrand = RAND(1,5)
			'<center><img src="images/picKav/fourA<<picrand>>.jpg"></center>'
			'Вы и Ира залезли на толстые члены и начали прыгать на них.'

			dynamic $sexstart2

			'Кавказцы поставили вас с Ирой на колени и стали надрачивать члены перед вашими лицами.'

			act '...':
				cls
				minut += 3
				cumface += 1
				cumlip += 1
				gs'stat'

				picrand = RAND(1,5)
				'<center><img src="images/picKav/fourfin.jpg"></center>'
				'Вы и Ира встали на колени друг на против друга и Гиви с Ашотом начали кончать вам на лица. Вы целовались с Ирой перемазанные в сперме.'

				act 'Уйти':dynamic $endirinaaftergang
			end
		end
	end
end
--- kavkazkafe ---------------------------------

