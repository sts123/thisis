# univer
if $ARGS[0] = 'start':
	$sexloc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5
	gs'stat'

	FColor = RGB(0,0,0)
	BColor = RGB(255,255,255)
	LColor = RGB(106,90,205)

	'<center><b><font color = maroon>Университет</font></b></center>'
	'<center><img src="images/pic/univer.jpg"></center>'

	if student = 0 and abiturient = 0:'Подготовительные курсы стоимость 15 тысяч'
	'Экзамены на зачисление в университет проходят в августе.'
	'Все лекции начинаются с 8 часов, опоздавших на лекции не пускают.'
	if student > 0:'Вы учитесь в <<semestr>> семестре <<kurs>> курса'
	if abiturient = 1:'Вы абитуриент.'

	act 'Выйти':
		cla
		minut = minut + 5
		gt'down'
	end

	if student = 0 and abiturient = 0 and money >= 15000 and month < 9 and diplom = 0 and age >= 17:
		act 'Оплатить подготовительные курсы (15 тыс.руб)':
			cla
			minut = minut + 5
			money = money - 15000
			abiturient = 1

			'Вы оплатили 15 тысяч за подготовительные курсы. Начало занятий в 21час, по будним дням'

			act 'Отойти':gt'univer','start'
		end
	elseif abiturient >= 1 and month < 9 and hour < 21 and week < 6:
		act 'Заниматься на подготовительных курсах':
			cla
			*clr
			minut = minut + 60
			abiturient = abiturient + 1
			intel = intel + 1

			'<center><img src="images/pic/Classroom.jpg"></center>'
			'Вы занимались на подготовительных курсах в течении часа.'

			act 'Выйти из класса':gt'univer','start'
		end
	end

	if month = 8 and student = 0 and diplom = 0 and age >= 17:
		'Вы можете попытаться сдать вступительный экзамен.'

		act 'Сдавать вступительный экзамен':
			cla
			*clr
			minut = minut + 60

			'<center><img src="images/pic/Classroom.jpg"></center>'
			'Вы сдавали вступительный экзамен в университет.'

			if intel + abiturient >= 100:
				student = 1
				kurs = 1
				semestr = 1
				abiturient = 0

				'Вы успешно сдали вступительные экзамены и можете приступить к обучению с сентября.'
			else
				'Вы завалили вступительные экзамены.'
			end

			act 'Выйти из класса':gt'univer','start'
		end
	end

	if week < 6 and student > 0 and month > 8 and month < 12:
		! 1й семестр
		act 'Идти к деканату':
			cla
			if semestr = 2 and examen = 0:examen = 2
			gt'univer','dekanat'
		end
	elseif week < 6 and student > 0 and month > 1 and month < 5:
		! 2й семестр
		act 'Идти к деканату':
			cla
			if semestr = 1 and examen = 0:examen = 2
			gt'univer','dekanat'
		end
	elseif week < 6 and student > 0 and month = 12 and examen = 0 and semestr = 1:
		! 1й семестр экзамены
		act 'Идти на экзамены':gt'univer','examen'
	elseif week < 6 and student > 0 and month = 5 and examen = 0 and semestr = 2:
		! 2й семестр экзамены
		act 'Идти на экзамены':gt'univer','examen'
	end
end

if $ARGS[0] = 'dekanat':
	$sexloc = $CURLOC

	cla
	clr
	*clr
	minut = minut + 5

	if examen = 1:
		examen = 0

		if semestr = 2:
			semestr = 1
			kurs = kurs + 1
		elseif semestr = 1:
			semestr = 2
		end
	elseif examen = 2:
		student = 0
		kurs = 0
		semestr = 0
		abiturient = 0
		stipuha = 0
		lektor = 0

		'ВАС ОТЧИСЛИЛИ ИЗ УНИВЕРСИТЕТА.'
	end

	if kurs = 2:
		diplom = 1
		student = 0
		kurs = 0
		semestr = 0
		abiturient = 0
		stipuha = 0

		'ВАМ ВРУЧИЛИ ДИПЛОМ.'
	end

	gs'stat'

	'<center><b><font color = maroon>Деканат</font></b></center>'
	'<center><img src="images/pic/dekanat.jpg"></center>'
	'Вы учитесь в <<semestr>> семестре <<kurs>> курса'
	'До начала сессии необходимо сдать <<kurs>> курсовую работу. Большее количество приветствуется и поощряется во время сессии.'
	if kursovikD > 0:'Вы сдали <<kursovikD>> курсовых работ.'

	act 'Уйти от деканата':gt'univer','start'

	if hour < 8 and student > 0:
		act 'На лекции':
			cla
			*clr
			minut = minut + 360
			hour = 14
			minut = 0
			lektor = lektor + 1
			intel = intel + 1

			'<center><img src="images/pic/Classroom1.jpg"></center>'
			'Вы сидели на лекциях и записывали за преподавателем конспект.'

			zanrand = RAND(0,9)
			if zanrand = 0:
				minut += 60

				'Во время занятий преподаватель начинает вас спрашивать, но вы ничего толком сказать не можете, и он говорит что-бы вы остались после занятий.'
				'Занятия закончились, но вам придется остаться.'

				act 'Остаться в аудитории':
					cla
					*clr

					zanpicrand = RAND(1,3)
					'<center><img src="images/img/oldtown/zan<<zanpicrand>>.jpg"></center>'
					'После занятий преподаватель битый час объясняет вам предмет.'

					act 'Уйти':gt'univer','dekanat'
					act 'Соблазнить':
						cla
						*clr

						if zanpicrand = 1:picrand = 44
						if zanpicrand = 2:picrand = 45
						if zanpicrand = 3:picrand = 46
						'<center><img src="images/img/oldtown/zan1<<zanpicrand>>.jpg"></center>'
						'Вы хватаете его за член, он рефлекторно отстраняется, но затем расслабляется и позволяет вам продолжить.'

						act 'Минет':gt'sex','minet'
					end
				end
			elseif zanrand = 1:
				minut += 60

				'Во время занятий преподаватель начинает вас спрашивать, но вы ничего толком сказать не можете, и он говорит что-бы вы остались после занятий.'
				'Занятия закончились, но вам придется остаться.'

				act 'Остаться в аудитории':
					cla
					*clr

					zanpicrand = RAND(4,6)
					'<center><img src="images/img/oldtown/zan<<zanpicrand>>.jpg"></center>'
					'После занятий преподаватель битый час объясняет вам еще одной девушке важность своего предмета.'

					act 'Уйти':gt'univer','dekanat'
					act 'Соблазнить':
						cla
						*clr

						if zanpicrand = 4:picrand = 20
						if zanpicrand = 5:picrand = 21
						if zanpicrand = 6:picrand = 22
						'<center><img src="images/img/oldtown/zan1<<zanpicrand>>.jpg"></center>'
						'Вы опускаетесь на колени и хватаете его за член, вторая девушка смотрит на вас круглыми глазами, но затем тоже начинает приставать к преподавателю, тот сначала немного сопротивляется, но затем полностью отдается в ваши руку.'

						act 'Минет':gt'podrsex','var'
					end
				end
			end

			act 'Выйти из аудитории':gt'univer','dekanat'
		end
	end

	if kursovik >= 100:
		act 'Сдать курсовую работу':
			cla
			*clr
			intel = intel + 1
			kursovik = 0
			kursovikD = kursovikD + 1

			'<center><img src="images/pic/Classroom1.jpg"></center>'
			'Вы сдали курсовую работу.'

			act 'Выйти из аудитории':gt'univer','dekanat'
		end
	end
end

if $ARGS[0] = 'examen':
	cla
	clr
	*clr
	minut = minut + 60
	gs'stat'

	'<center><b><font color = maroon>Экзамен</font></b></center>'
	'<center><img src="images/pic/examen.jpg"></center>'

	if lektor > 55 and kursovikD >= kurs:
		examen = 1
		kursovikD = 0
		stipuha = 1
		lektor = 0
		!1200

		'Вы хорошо посещали занятия и у вас нет задолженностей по курсовым работам, поэтому экзамен вам поставили автоматом.'

		jump 'exitexamem'
	end

	if ((intel >= 80) or (lektor > 40 and lektor <= 55)) and kursovikD >= kurs:
		examen = 1
		kursovikD = 0
		stipuha = 0
		lektor = 0

		'Вы ответили на все вопросы в билете и у вас нет задолженностей по курсовым работам, поэтому экзамен вам зачли.'

		act 'Выйти из аудитории':gt'univer','dekanat'

		exit
	end

	if (intel >= 100) and kursovikD >= kurs + 10:
		examen = 1
		kursovikD = 0
		stipuha = 1
		lektor = 0

		'Вы проявили огромное рвение и самостоятельность в учебе, поэтому экзамен вам поставили автоматом.'

		jump 'exitexamem'

		!exit
	end

	if (intel < 70 and lektor <= 40) or kursovikD < kurs:
		examen = 2
		stipuha = 0

		'Вы не сдали экзамен.'
	end

	if examen = 0:
		examen = 2
		stipuha = 0

		'Вы не сдали экзамен.'
	end

	:exitexamem

	act 'Выйти из аудитории':gt'univer','dekanat'
end
--- univer ---------------------------------

