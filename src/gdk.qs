# gdk
$metka = $ARGS[0]
$loc = $CURLOC

music_on = 0
gs'stat'
gs'time'

'<center><b><font color = maroon>Дом культуры</font></b></center>'

if hour >= 9 and hour < 20:
	'<center><img src="images/etogame/dk.jpg"></center>'
	'По вечерам с 20.00 до 23.00 танцы. Вход 25 рублей.'
elseif hour >= 20 and hour <= 23:
	'<center><img src="images/etogame/dk_night.jpg"></center>'
	'У входа в ДК полно молодежи, парни просто стоят и курят, шутят и кого-то высматривают. Девочки группками по 2-3 человека, что-то обсуждают, кто-то просто бухает в кустах.'

	if money >= 25:act 'Войти в клуб':money -= 25 & minut += 15 & gt'gdkin'
end

act 'Выйти':gt'gorodok'

if hour >= 16 and hour <= 20:
	'Сейчас в доме культуры работают спортивные секции.'
	act 'Идти в секцию':gt'gdksport'
end

if hour >= 8 and hour <= 18:
	'Сейчас в доме культуры работает библиотека.'
	act 'Идти в библиотеку':gt'gdkbibl'
end

if hour < 9:'<center><img src="images/etogame/dk_night.jpg"></center>'

if week < 6:
	if hour >= 16 and hour < 18:
		'Ваша сестра <a href="exec:SiSgdk = 1 & GT ''sister''">Аня</a> сидит в компании девчонок и парней и пьет пиво.'
	end
elseif week >= 6:
	if hour >= 11 and hour < 18:
		'Ваша сестра <a href="exec:SiSgdk = 1 & GT ''sister''">Аня</a> сидит в компании девчонок и парней и пьет пиво.'
	end
end
--- gdk ---------------------------------

