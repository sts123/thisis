# gKristinaZv
gs'stat'

'После физкультуры вы пошли в раздевалку вместе с остальными девчонками. Кристина тут же подошла к вам перед остальными девчонками из класса.'

if zverhumiliation = 0:randhumiliation = 0
if zverhumiliation = 1:randhumiliation = RAND(0,1)
if zverhumiliation = 2:randhumiliation = RAND(0,2)
if zverhumiliation = 3:randhumiliation = RAND(0,3)
if zverhumiliation >= 4:randhumiliation = RAND(0,4)

if randhumiliation = 0:
	'- Ну что овца, ты тут пиздела про меня, что я вафлерша, так вот я тебе принесла подарочек. Кристина достала из своей сумки, дилдо. Кристина со чпоком прилепила дилдо к стене на уровне паха. "Ну что Светик, начинай сосать прощение или может ты хочешь что бы я еще раз тебе разбила ебальник овца драная?"'

	act 'Сосать дилдо':
		cls
		zverhumiliation += 1
		dilbj += 1
		sub += 1
		gs'stat'

		'<center><img src="images/qwest/alter/zver/dildobj.jpg"></center>'
		'Вы сели на корточки перед дилдо прилепленным присоской к стене и стали его сосать перед девчонками из своего класса. Наконец Кристина рассмеявшись разрешила вам прекратить и переодеться.'

		act 'Выйти':gt'gschool'
	end
elseif randhumiliation = 1:
	'- Ну что овца, ты у нас типа спортивная девчонка, я думаю тебя надо еще немного прокачать. Кристина достала из своей сумки, дилдо и со чпоком прилепила дилдо к полу. "Ну что Светик, упор лежа принять и начинай сосать отжимаясь"'

	act 'Сосать дилдо':
		cls
		zverhumiliation += 1
		dilbj += 1
		sub += 1
		gs'stat'

		'<center><img src="images/qwest/alter/zver/dildobj2.jpg"></center>'
		'Вы приняли упор лежа и обхватили дилдо губами, после этого вы начали отжиматься позволяя дилдо глубже проникать в ваш рот. Наконец Кристина рассмеявшись разрешила вам прекратить и переодеться.'

		act 'Выйти':gt'gschool'
	end
elseif randhumiliation = 2:
	'- Ну что овца, пришла пора для очередного отсоса. Кристина достала из своей сумки, дилдо и со чпоком прилепила дилдо к полу. "Ну что Светик, начинай практиковаться"'

	act 'Сосать дилдо':
		cls
		zverhumiliation += 1
		dilbj += 1
		sub += 1
		gs'stat'

		'<center><img src="images/qwest/alter/zver/dildobj3.jpg"></center>'
		'Вы сели на корточки перед дилдо и низко наклонившись начали сосать дилдо на глазах у одноклассниц. Наконец Кристина рассмеявшись разрешила вам прекратить и переодеться.'

		act 'Выйти':gt'gschool'
	end
elseif randhumiliation = 3:
	'- Ну что овца, я решила немного заняться твоим развитием. Кристина достала из своей сумки, три дилдо и прилепила их к зеркалу на уровне паха. "Ну что Светик, начинай практиковаться"'

	act 'Сосать дилдо':
		cls
		zverhumiliation += 1
		dilbj += 1
		sub += 1
		gs'stat'

		'<center><img src="images/qwest/alter/zver/dildobj4.jpg"></center>'
		'Вы сели на корточки перед дилдо и начали его сосасть при этом надрачивая два других руками. Наконец Кристина рассмеявшись разрешила вам прекратить и переодеться.'

		act 'Выйти':gt'gschool'
	end
elseif randhumiliation = 4:
	'- Ладно овца, я сегодня занята, поэтому придется тебе обойтись без традиционного отсоса. Кристина ухмыльнулась и начала одеваться'

	act 'Выйти':gt'gschool'
end
--- gKristinaZv ---------------------------------
