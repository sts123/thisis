# saunaroom
$metka = $ARGS[0]
$loc = $CURLOC

$metkaBroom = $ARGS[0]
$locBroom = $CURLOC

$metkaM = $ARGS[0]
$locM = $CURLOC

saunaYouRoom = 1

'<center><b><font color = maroon>Комната</font></b></center>'
'<center><img src="images/pic/saunaroom.jpg"></center>'
'В комнате едва убирается <a href="exec:sec += 30 & GT ''saunabed''">кровать</a> и <a href="exec:GT ''loker'',''start''">шкаф</a>.'
'На стене висит <a href="exec:GT ''mirror'',''start''">зеркало</a>'

if money > 0 and workDolg > 0:workDolg -= money & money = 0
if workDolg > 0:'Ваш долг составляет <<workDolg>> рублей'

act 'Выйти в сауну':gt'saunawork'

if workDolg > 0:
	act 'Есть в долг(5 мин)':
		cla
		*clr
		minut += 5
		workDolg += 50
		health = health + 30
		manna = manna + 100
		energy = 20
		water = 20
		fat += 50
		salo += 1
		frost = 0
		gs'stat'

		'<center><img src="images/pics/food.jpg"></center>'
		'Вы попили чаю с печеньем, очень сладко и вредно для фигуры, но так приятно.'

		act 'Встать из за стола':gt $curloc
	end
	act 'Взять в долг косметику':
		workDolg += 1000
		kosmetica = kosmetica + 25
		gt $curloc
	end
end

if water < 20:
	act 'Пить':
		cla
		minut = minut + 5

		if water >= 20:
			'Вода в вас больше не лезет.'
		elseif water < 20:
			water = water +20

			'Вы с удовольствием выпили стакан воды.'
		end

		act 'Встать из за стола':gt $curloc
	end
end
--- saunaroom ---------------------------------

