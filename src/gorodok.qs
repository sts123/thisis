# gorodok
$metka = $ARGS[0]
$loc = $CURLOC
$metkaStreet = $ARGS[0]
$locStreet = $CURLOC

cla
*clr
litltown = 1
alkoblock = 0
boynumBlock = 0
music_on = 0

'<center><H4>Городок</H4></center>'
'<center><img src="images/pic/gorodok.jpg"></center>'
'Тихий провинциальный городишко неотличимый от тысяч ему подобных городков. Отреставрированные купола церквей возвышаются над полуразвалившимися хибарами которые строили еще пленные немцы.'

if AlbFather >= 1:
	if AlbFaterBlackTime = 0:AlbFaterBlackTime = totminut+2880
	'На домах видны наклеенные плакаты. "Борис Барловский, НАШ кандидат!"'
end
if AlbFaterBlackTime > 0 and AlbFaterBlackTime <= totminut and hour >= 16 and AlbFather = 1:
	gt'AlbFatherQW'
end

if hour >= 16 and hour <= 22 and AlbFather = 2 and AlbZaDay+30 < daystart and year > 2010:
	gt'AlbStarsEnd'
end

if StoryLine > 0 and hour < 5 and motherWorry = 0 and SchoolAtestat = 0 and age < 18:
	motherWorry = 1
end

if NosovRevenge = 2 and daynosovrevenge+1 >= daystart:
	cls
	gs'stat'

	'<center><b><font color = maroon><<$npcName[1]>> <<$npcSurName[1]>></font></b></center>'
	'<center><img src="images/qwest/alter/npc/1.jpg"></center>'
	'Возле дома вас неожиданно поджидал Дима Носов "Ну что шлюшка. Если не хочешь что бы видео стало достоянием общественности, сейчас пойдем ко мне и поговорим."'

	act 'Идти к Диме':
		cls
		NosovRevenge = 3
		minut += 30
		gs'stat'

		'Вы пошли к дому Димы. Дом где он живет принадлежит его родителям, это большой двух этажный, отдельно стоящий дом с ухоженным газоном и не большим садом. Вместе с Димой вы прошли в его комнату и он закрыл двери на ключ.'

		act 'Идти в комнату Димы':gt'dimaHome'
	end

	exit
end

gorodokwhorerand = RAND(1,5)
if GorSlut = 3 and gorodokwhorerand >= 4:'Вы ловите на себя взгляды людей, некоторые пытаются узнать в вас кого-то, а может, и узнают. Изредка вы слышите смешки людей. Похоже, кто-то узнал о ваших похождениях.'
if GorSlut = 4 and gorodokwhorerand >= 4:'Люди смотрят на вас с ухмылкой, кто-то делает пошлые жесты в вашу сторону, некоторые намекают на ваши похождения.'
if GorSlut >= 5 and gorodokwhorerand >= 4:'Все окружающие узнают в вас шлюху. Некоторые, проходя мимо, шлёпают вас по попе. Бабушки на лавочках обзывают вас блядью.'

gorodokstreetsexrand = RAND(1,20)
if GorSlut > 5 and gorodokstreetsexrand = 20:
	'К вам подошёл парень и предложил отойти в кусты перепихнуться за сотку'

	act 'Согласиться':gt'gevent','5'
end

gs'stat'
gs'time'

if car > 0 and cardrive = 20:
	cardrive = 20

	'На парковке стоит <a href="exec:GS ''carF'',''start''">ваш <<$car>></a>'
end

if StoryLine = 1 and ParHomeBlock = 0:'В одном из домов находится <a href="exec:minut += 15 & GT ''korrPar''">квартира</a> ваших родителей'
'<a href="exec:minut += 15 & GT ''vokzalG''">Вокзал</a>'
'<a href="exec:minut += 15 & GT ''gpoli''">Поликлиника</a>'
if hour >= 8 and hour <= 20:'<a href="exec:minut += 15 & GT ''gaptek'',''start''">Аптека</a>'
if hour >= 8 and hour <= 22:'В киоске продают <a href="exec:dynamic $kiosksig">сигареты</a>'
'Автомобильная <a href="exec:GT ''zaprF'',''start''">заправка</a>'
'Районный <a href="exec:GT ''gdk''">дом культуры</a>'
if SchoolBlock = 0:'Местная <a href="exec:GT ''gschool''">школа</a>'
if hour >= 7 and hour <= 18:'<a href="exec:GT ''etoexhib'',''pos20''">Профессиональный лицей.</a>'
if hour >= 8 and hour <= 20:'Единственный крупный магазин в городишке <a href="exec:GT ''shop'',''start''">супермаркет</a>'
'Небольшой городской <a href="exec:GT ''gskver'',''park''">сквер</a>, в котором отдыхают люди'
'В стороне от жилых зданий находится <a href="exec:minut += 5 & GT ''garmassiv''">гаражный массив</a>'

if ArtomBeInHome > 0 and artemblok = 0:'Квартира <a href="exec:minut += 15 & GT ''artemhome''">Артема Чеботарева</a>'
if DimaBeHomeOnce = 1 and DimaRudeBlock = 0:'Частный дом в котором живет <a href="exec:minut += 15 & GT ''dimaGoHome2''">Дима Носов</a>'
if katjaFirstKiss >= 1:'Частный дом в котором живет <a href="exec:minut += 15 & GT ''KatjaHome''">Катя Мейнольд</a>'

if BeInNatBelHome = 1:
	if hour >= 18 and hour <= 20 and week < 6 or hour >= 8 and hour <= 20 and week >= 6:
		'Дом в котором находится квартира <a href="exec:minut += 15 & GT ''NatBelHome''">Наташи Беловой</a>'
	end
end

if BeInJulMilHome = 1:
	if hour >= 18 and hour <= 20 and week < 6 or hour >= 8 and hour <= 20 and week >= 6:
		'Дом в котором находится квартира <a href="exec:minut += 15 & GT ''JuliaMilHome''">Юлии Миловой</a>'
	end
end

if beinalbinahome > 0:'Роскошный особняк в котором живет <a href="exec:minut += 15 & GT ''albinaporog''">Альбина Барловская</a>'

'Градообразующее предприятие <a href="exec:minut += 15 & GT ''Gshveyfab''">Швейная фабрика имени Парижской коммуны</a>'

if workPTU > 2:act '<b>Идти в общагу</b>':gt'etoexhib','pos40'

act 'Ждать':
	cla
	waiting = input ("Сколько минут ждать? (Не больше 120 минут)")
	if waiting <= 0 or waiting > 120:
		minut = minut + 15
	elseif waiting > 0 and waiting <= 120:
		minut = minut + waiting
	end

	act 'Посмотреть на часы':gt curloc
end

if StoryLine = 1 and hour >= 8 and hour < 23:
	if cumface > 0:
		sosedrand = RAND(0,3)
		if sosedrand = 0 and sosedday ! day:
			cls
			if sosedknow = 0:
				sosedknow = 1
				sosedday = day
				gs'stat'

				'Внезапно вас кто то окликает "Света." Вы оборачиваетесь и видите соседа дядю Мишу, он смотрит на ваше лицо с удивлением "Это что у тебя на лице?" Вы краснеете и смущаетесь, стараясь рукой стереть сперму с лица. Он ухмыляется "Ну ну, все понятно." и идет дальше по своим делам.'

				act 'Далее':gt curloc

				exit
			elseif sosedknow > 0:
				sosedday = day

				'Вы опять столкнулись нос к носу с дядей Мишей, вашим соседом, он хмыкнул посмотрев на вас "Ну Светка ты и шлюха."'

				act 'Далее':gt curloc
			end
		end
	end
end

!act 'Рейтинг':gt'ratinglist'
--- gorodok ---------------------------------

