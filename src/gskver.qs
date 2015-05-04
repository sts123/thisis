# gskver
$metka = $ARGS[0]
$loc = $CURLOC

cls
gs'stat'
gs'time'

'<center><img src="images/gevent/skver.jpg"></center>'
'Маленький сквер, в котором часто отдыхают люди, гуляют парочки, играют детишки.'
*nl

if hour > 8 and hour < 19:'Здесь находится небольшой <a href="exec:minut += 5 & GT ''gskino''">кинотеатр</a>'

if GvstreBoy = 1:'Вы видите, что в сквере прогуливается <a href="exec:numnpc = SkverBoy & GT ''Gnpc''"><<$nameBoyfrend[SkverBoy]>></a>.'
!'
if kotovLoveQW > 0 and hour >= 18 and hour < 20 and week < 6 or week >= 6 and kotovLoveQW > 0 and hour >= 9 and hour < 20:
	'Вы видите как в парке на лавочке сидит <a href="exec:minut += 3 & GT ''kotovEv''">Витек Котов</a> с друганами и пивом.'
end
'
if StoryLine = 1 and BeInSchool > 0:
	if hour >= 18 and hour < 20 and week < 6 or week >= 6 and hour >= 9 and hour < 20:
		'Вы видите как в парке на лавочке сидит <a href="exec:minut += 3 & GT ''gopskver''">Витек Котов, Дэн Рыжов и Шульга.</a>'
	end
end

act 'Погулять 15 минут':
	cla
	*clr
	minut = minut + 15
	place = 1
	Frend_num = 0
	gt'placer'
end

if hour >= 8 and hour < 22:
	act 'Подрабатывать раздачей флаеров (10 руб в час)':
		cla
		*clr
		minut = minut + 60
		money = money + 10
		manna = manna - 5
		gs'stat'

		'<center><img src="images/pic/flaer.jpg"></center>'
		'Вы целый час раздавали флаеры посетителям сквера. После этого вы получили 10 рублей.'

		act 'Отойти':gt'gskver'
	end
end

if sport > 0 and hour > 5 and hour < 22 and daybegskver ! daystart:
	act 'Бегать по скверу в течении часа':
		cls
		minut += 60
		if salo > 3:salo -= RAND(1,3)
		fat -= RAND(5,15)
		beg += RAND(3,6)
		sweat += 2
		daybegskver = daystart
		gs'stat'

		'<center><img src="images/pic/parkbeg.jpg"></center>'
		'Вы в течении часа бегали по скверу'

		act 'Далее':place = 1 & Frend_num = 0 & gt'placer'
	end
end

act 'Выйти из сквера':minut += 5 & gt'gorodok'
--- gskver ---------------------------------

