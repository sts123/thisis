# Gadhouse
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

'<center><H4>Изба</H4></center>'
'<center><img src="images/qwest/gadukino/izba.jpg"></center>'
'Простая деревенская изба. В маленькой комнате стоит <a href="exec:GT ''loker'',''start''">шкаф</a> и <a href="exec:GT ''bedPar''">кровать</a> на которой вы можете спать. В большой комнате стоит <a href="exec:GT ''tvPar''">телевизор</a>. Рядом с телевизором стоит древний <a href="exec:GT ''mirror'',''start''">трельяж</a>'

clr
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

act 'Выйти во двор':minut += 5 & gt'Gaddvor'

act 'Есть':
	cla
	*clr
	frost = 0
	minut = minut + 30
	health = health + 10
	manna = manna + 20
	wipo += 5
	salo += 1
	gs'stat'

	'<center><img src="images/pics/food.jpg"></center>'

	if energy >= 30:
		fat = fat + 5

		'Вы больше не можете есть.'
	elseif energy >= 20 and energy < 30:
		fat = fat + 3
		energy = energy + 10

		'Вы через силу затолкали в себя еду.'
	elseif energy < 20:
		energy = energy +20
		!fat = fat + 1

		'Вы с удовольствием съели приготовленную еду.'
	end

	if water >= 20:
		'Чай в вас больше не лезет.'
	elseif water < 20:
		water = water +20

		'Вы с удовольствием выпили кружку чая.'
	end

	gs'stat'

	act 'Встать из за стола':gt $locM, $metkaM
end

dynamic $d_read_book

if indorf = 1:
	'В комнате отдыхают родители.'

	if week = 7:
		if hour >= 20:
			gt'farmhomeride'
		end
	end
end

if monthbabkapay ! month:
	monthbabkapay = month
	money += 2000
	gs'stat'

	'Бабушка дает вам две тысячи.'
end
--- Gadhouse ---------------------------------

