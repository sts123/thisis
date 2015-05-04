# LCporn
if $ARGS[0] = 'firsttime':
	cla
	*clr
	JenyaLCfirst = 1
	gs'stat'

	'<center><img src="images/LakeCafe/LakeFirstTime.jpg"></center>'
	'Вы входите на кухню, после чего сворачиваете в кладовку. Женя смотрит на вас неловким взглядом и говорит:'
	'-Это может немного напугать тебя, но ты должна была когда- нибудь это узнать...'
	'Она приспускает юбочку и вы видите... член! Женя начинает ласкать его пальчиками, глядя на вас. Она прикасается к вашей груди.'

	act 'Продолжить':
		cla
		*clr
		randlcpic = RAND(1,7)
		!sex = sex + 1
		sexfuta = sexfuta + 1
		!cumass = cumass + 1
		!cumpussy = cumpussy + 1
		JenyaLC = JenyaLC + 5
		minut = minut + 40
		$nameV = 'Женя'
		$boy = 'Женя'
		dick = 17
		silavag = 1
		pose = 1
		gs'stat'

		if randlcpic = 1:'<center><img src="images/LakeCafe/RandSex1/1.jpg"></center>'
		if randlcpic = 2:'<center><img src="images/LakeCafe/RandSex1/2.jpg"></center>'
		if randlcpic = 3:'<center><img src="images/LakeCafe/RandSex1/3.jpg"></center>'
		if randlcpic = 4:'<center><img src="images/LakeCafe/RandSex1/4.jpg"></center>'
		if randlcpic = 5:'<center><img src="images/LakeCafe/RandSex1/5.jpg"></center>'
		if randlcpic = 6:'<center><img src="images/LakeCafe/RandSex1/6.jpg"></center>'
		if randlcpic = 7:'<center><img src="images/LakeCafe/RandSex1/7.jpg"></center>'

		'Вы позволяете ей продолжить. Она снимает с вас одежду и вы вместе ложитесь на матрас.'

		dynamic $sexudo
		dynamic $sexcum

		act 'Выйти':gt'Lakecafe','main'
	end
	act 'Убежать':
		cla
		*clr
		JenyaLC = JenyaLC - 10
		minut = minut + 7
		gs'stat'

		'Испугавшись, вы убегаете из шашлычной.'

		act '...':gt'nord'
	end
end

if $ARGS[0] = 'sex':
	cla
	*clr
	'<center><img src="images/LakeCafe/LakeFirstTime.jpg"></center>'
	'Женя приводит вас в кладовку и в ожидании на вас смотрит.'

	act 'Вагинальный':
		cla
		*clr
		sexfuta = sexfuta + 1
		JenyaLC = JenyaLC + 5
		minut = minut + 40
		horand = RAND(1,100)
		$nameV = 'Женя'
		$boy = 'Женя'
		dick = 17
		silavag = 1
		pose = 1

		randlcpic = RAND(1,7)
		if randlcpic = 1:'<center><img src="images/LakeCafe/RandSex1/1.jpg"></center>'
		if randlcpic = 2:'<center><img src="images/LakeCafe/RandSex1/2.jpg"></center>'
		if randlcpic = 3:'<center><img src="images/LakeCafe/RandSex1/3.jpg"></center>'
		if randlcpic = 4:'<center><img src="images/LakeCafe/RandSex1/4.jpg"></center>'
		if randlcpic = 5:'<center><img src="images/LakeCafe/RandSex1/5.jpg"></center>'
		if randlcpic = 6:'<center><img src="images/LakeCafe/RandSex1/6.jpg"></center>'
		if randlcpic = 7:'<center><img src="images/LakeCafe/RandSex1/7.jpg"></center>'

		'Вы с Женей раздеваетесь, после чего ложитесь на матрас.'

		dynamic $sexudo
		dynamic $sexcum

		gs'stat'

		act 'Выйти':gt'Lakecafe','main'
	end
	act 'Оральный':
		cla
		*clr
		bj = bj + 1
		sexfuta = sexfuta + 1
		JenyaLC = JenyaLC + 5
		minut = minut + 20
		cumface = cumface + 1
		facial = facial + 1
		minut = minut + 40
		$nameV = 'Женя'
		$boy = 'Женя'
		horand = RAND(1,100)

		randlcpic = RAND(1,7)
		if randlcpic = 1:'<center><img src="images/LakeCafe/RandSex2/1.jpg"></center>'
		if randlcpic = 2:'<center><img src="images/LakeCafe/RandSex2/2.jpg"></center>'
		if randlcpic = 3:'<center><img src="images/LakeCafe/RandSex2/3.jpg"></center>'
		if randlcpic = 4:'<center><img src="images/LakeCafe/RandSex2/4.jpg"></center>'
		if randlcpic = 5:'<center><img src="images/LakeCafe/RandSex2/5.jpg"></center>'
		if randlcpic = 6:'<center><img src="images/LakeCafe/RandSex2/6.jpg"></center>'
		if randlcpic = 7:'<center><img src="images/LakeCafe/RandSex2/7.jpg"></center>'

		'Вы с Женей раздеваетесь, после чего вы обхватываете губками её член. Женя берёт ваз за волосы и трахает вас в рот. Застонав, Женя вытащила свой член и кончила вам на личико, после чего оделась и вышла из кладовки.'

		gs'oral','0'
		gs'stat'

		act 'Выйти':gt'Lakecafe','main'
	end
end

if $ARGS[0] = 'toiletsex':
	cla
	*clr
	dick = 14
	hj = hj + 1
	$nameV = 'Мужик'
	$boy = 'Мужик'

	'<center><img src="images/LakeCafe/ToiletSexEnd.jpg"></center>'
	'Вы подошли сзади и обняли мужчину. Спустившись к его члену, вы начали надрачивать его. Мужчина остановил вас, взял за руку и вывел через заднюю дверь на улицу. Отведя вас за мусорные баки, он нагнул вас и начал трахать.'

	dynamic $sexudo
	dynamic $sexcum

	act 'Уйти':
		gt'laketoilet','main'
	end
end
--- LCporn ---------------------------------

