# buklinik
if $ARGS[0] = 'start':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Клиника милосердия</b></center>'
	'<center><img src="images/etogame/bukli.jpg"></center>'
	'Часы работы с 9 до 17, выходные суббота, воскресенье.'

	temp = RAND(1,10)
	if temp = 9:'Вы видите толпу бездомных, пытающихся попасть в приют.'
	if temp = 2:'Вы видите бездомного, пытающегося попасть в приют.'
	if temp = 3:'Вы видите старика пришедшего в приют.'

	if hour >= 9 and hour <= 17 and week < 6:
		act 'Зайти в клинику':gt'buklinik','holl'
	end

	act 'Уйти':gt'nord'
end

if $ARGS[0] = 'holl':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Клиника милосердия. Холл</b></center>'
	'<center><img src="images/etogame/bukli_holl.jpg"></center>'
	'Коридор клиники.'

	if bumtolik > 4:'Вещи хранятся на <a href="exec:GT ''buklinik'',''sklad''">складе</a>.'
	if bumtolik > 5:'У входа расположена <a href="exec:GT ''buklinik'',''registr3''">Регистратура</a>.'
	if bumtolik > 5:'Напротив регистратуры находится <a href="exec:GT ''buklinik'',''olga2''">кабинет Ольги</a>.'
	if bumtolik > 5:'В конце коридора <a href="exec:GT ''buklinik'',''shower''">душевая</a>.'
	if bumtolik = 6: '<a href="exec:GT ''buklinik'',''spal''">Спальные места</a>.'
	if bumtolik > 6:'Спальные места. (Я туда больше ни нагой)'
	if bumtolik > 5:'<a href="exec:GT ''buklinik'',''stol''">Столовая</a> для постояльцев.'
	if bumtolik > 5:'Офисом заведует <a href="exec:GT ''buklinik'',''sec''">Жанна</a>.'
	if bumtolik > 5:'Кабинет координатора <a href="exec:GT ''buklinik'',''dir''">Веры</a>.'


	if bumtolik = 4:
		act 'Обратиться в регистратуру':gt'buklinik','registr'
	end

	act 'Уйти':gt'nord'
end

if $ARGS[0] = 'registr':
	cla
	clr
	*clr
	minut = minut + 15
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Клиника милосердия. Регистратура</b></center>'
	'<center><img src="images/etogame/bukli_reg.jpg"></center>'
	'В регистратуре сидят две девушки в белых халатах.'

	if bumtolik = 4: 'Вы: - Здравствуйте, меня зовут Светлана, я по поводу работы. Девушка по имени Ольга дала мне эту визитку, сказала, что вам требуются сотрудники.'
	'Регистратор: - Здравствуйте! Мы очень рады вас видеть. Но боюсь, вы откажетесь, дело в том, что нам нужны волонтеры, т.е. ваш труд не будет оплачиваться. А работа предстоит очень сложная. Придется и за стариками ухаживать и бездомных кормить и одевать.'

	act 'Я поняла вас, мне надо подумать':gt'nord'
	act 'Согласиться':gt'buklinik','registr2'
end

if $ARGS[0] = 'registr2':
	cla
	clr
	*clr
	minut = minut + 15
	bumtolik = 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Клиника милосердия. Регистратура</b></center>'
	'<center><img src="images/etogame/bukli_reg.jpg"></center>'
	'Вы: - Хорошо, я думаю, я справлюсь. С чего мне начать?'
	'Регистратор: - Мне радостно это слышать. Заполните анкету. И занесите мне копии паспорта и если есть документы об образовании, диплом, курсы, все что есть, возможно, в бушующем, сможем найти для вас оплачиваемою работу.'
	'(Вы заполняете анкету)'
	'Регистратор: - Хорошо, вот вам членский билет. По коридору первая дверь направо, попадете на склад, там встретите Ольгу она вам всё покажет.'

	act 'В коридор':gt'buklinik','holl'
end

if $ARGS[0] = 'registr3':
	cla
	clr
	*clr
	minut = minut + 15
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Клиника милосердия. Регистратура</b></center>'
	'<center><img src="images/etogame/bukli_reg.jpg"></center>'
	'В регистратуре обычно сидят либо Карина либо Регина.'

	act 'В коридор':gt'buklinik','holl'
end

if $ARGS[0] = 'sklad':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)
	'<center><b>Клиника милосердия. Склад</b></center>'
	'<center><img src="images/etogame/bukli_sklad.jpg"></center>'
	'Склад весь завален упаковками с вещами.'

	if bumtolik = 5:act 'Найти Ольгу':gt'buklinik','olga'
	act 'В коридор':gt'buklinik','holl'
end

if $ARGS[0] = 'olga':
	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Ваша коллега Ольга</b></center>'
	'<center><img src="images/etogame/bukli_olga.jpg"></center>'
	'(Ольга - ухоженная и милая брюнетка с доброй улыбкой.)'

	if bumtolik = 5:
		'- Ольга, здравствуйте. Я Света, вы меня помните? Я решила откликнуться на ваш призыв. И готова приступить к обязанностям. В регистратуре сказали, что вы мне всё здесь покажете.'
		'- Света, добрый день! Вы молодец, добро пожаловать! Давайте, я вам вкратце расскажу как мы работаем. Мы волонтеры и соответственно наша деятельность не оплачивается. Вы можете приходить в любое время, в рабочие часы. Работа бывает самая разная, т.к. вас прикрепили ко мне, первое время задания будете получать у меня.'
		'Ольга: - Вы не против перейти на ты?'
		'Вы: - Я за.'
		'Ольга: - Хорошо, давай я проведу для тебя экскурсию. Здесь у нас склад товаров, которые мы закупили для нуждающихся. Мы расфасовываем его по коробкам и отвозим по назначению.'
	end

	act 'К офис-менеджеру':gt'buklinik','sec'
end

if $ARGS[0] = 'sec':
	cla
	clr
	*clr
	minut = minut + 15
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Ваша коллега Жанна</b></center>'
	'<center><img src="images/etogame/bukli_sec.jpg"></center>'
	'(Жанна молодая и жизнерадостная блондинка)'

	if bumtolik = 5:
		'Ольга: - Знакомься, это наш офис менеджер Жанна. Жанночка у нас отвечает буквально за всё. Если будут организационные вопросы обращайся к ней.'
		'Ольга: - Жанночка это Света, наш новый волонтер.'
		'Жанна: - Ух ты! А ты молодец Света, смелая. Очень рада знакомству!'
		'Вы: - Спасибо, взаимно.'

		act 'К руководителю':gt'buklinik','dir'
	elseif bumtolik > 5:
		'- Привет, Света!'

		act 'В коридор':gt'buklinik','holl'
	end
end

if $ARGS[0] = 'dir':
	cla
	clr
	*clr
	minut = minut + 15
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Ваша коллега Вера</b></center>'
	'<center><img src="images/etogame/bukli_dir.jpg"></center>'
	'(Вера властная и ухоженная дама)'

	if bumtolik = 5:
		'Ольга: - А это наш координатор Вера Павловна...'
		'Вера: - Просто Вера.'
		'Ольга: - Вера не только наш координатор, но и вдохновитель, это она придумала и создала нашу организацию.'
		'Вы: - Очень приятно, Света!'
		'Вера: - Добро пожаловать к нам. (Вера вам улыбается)'

		act 'Закончить знакомство':gt'buklinik','olga2'
	elseif bumtolik > 5:
		'- Привет, Света!'

		act 'В коридор':gt'buklinik','holl'
	end
end

if $ARGS[0] = 'shower':
	cla
	clr
	*clr
	minut = minut + 15
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Клиника милосердия. Душевая</b></center>'
	'<center><img src="images/etogame/bukli_show.jpg"></center>'
	'Общая душевая для постояльцев'
	'Здесь постояльцы принимают душ. Лучше без особой нужды сюда не соваться.'

	act 'В коридор':gt'buklinik','holl'
end

if $ARGS[0] = 'stol':
	cla
	clr
	*clr
	minut = minut + 15
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Клиника милосердия. Столовая</b></center>'
	'<center><img src="images/etogame/bukli_stol.jpg"></center>'
	'Столовая для постояльцев'
	'Здесь постояльцы принимают пищу. Рацион очень скудный, но для них годится.'

	act 'В коридор':gt'buklinik','holl'
end

if $ARGS[0] = 'spal':
	cla
	clr
	*clr
	minut = minut + 15
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Клиника милосердия. Спальни</b></center>'
	'<center><img src="images/etogame/bukli_spal.jpg"></center>'
	'Спальные места для постояльцев.'
	'Кого здесь только нет. Алкоголики и бомжи, бродяги и наркоманы. Есть и просто люди которым негде спать.'

	if bumtolik = 6:
		act 'Поздороваться':gt'buklinik_event','pos1'
	end

	act 'В коридор':gt'buklinik','holl'
end

if $ARGS[0] = 'olga2':
	cla
	clr
	*clr
	minut = minut + 15
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b>Ваша коллега Ольга</b></center>'
	'<center><img src="images/etogame/bukli_olga.jpg"></center>'
	'(Ольга - ухоженная и милая брюнетка с доброй улыбкой.)'

	if bumtolik > 5: '- Привет, Света!'
	if buklinikDay = day:'- На сегодня больше работы нет, можем отдохнуть.'
	if bumtolik >= 7 and buklinikDay ! day: '- Света, нам нужно помощь <a href="exec:GT ''buklinik_event'',''pos6''">накормить нуждающихся</a>.'
	if bumtolik >= 8 and buklinikDay ! day: '- Света, вот адрес одного <a href="exec:GT ''buklinik_event'',''pos8''">пожилого человека</a>, сходи к нему помоги по хозяйству.'
	if bumtolik = 9 and buklinikDay ! day: '- Света, нужно помочь уговорить одного алкаша не скитаться по улицам, а придти жить к <a href="exec:GT ''buklinik_event'',''pos9''">нам</a>.'
	if bumtolik = 5:
		bumtolik=6
		'Ольга: - Дальше по коридору спальные места, душевые и столовая, где постояльцы могут бесплатно поесть. Смотреть там особо нечего. Ну вот собственно и всё. В регистратуре у нас сидят две девочки - Регина и Карина, их ты уже видела.'
		'К нам еще приходят другие волонтеры, но ты сама с ними познакомишься при встрече.'
		'Можешь здесь осмотреться, если что обращайся ко мне.'
	end

	act 'В коридор':gt'buklinik','holl'
end
--- buklinik ---------------------------------

