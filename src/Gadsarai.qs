# Gadsarai
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

'<center><H4>Изба</H4></center>'
'<center><img src="images/qwest/gadukino/sarai.jpg"></center>'
'Ветхий сарай в котором хранятся инструменты. Возле сарая сидит <a href="exec:GT ''pirat''">пес по кличке Пират</a>'

clr
gs'stat'
gs'time'

act 'Выйти во двор':minut += 5 & gt'Gaddvor'

act 'Ковыряться в сарае':
	cls
	minut += 15
	gs'stat'

	poiskrand = RAND(0,5)
	if card > 0 and poiskrand = 0 or poiskrand > 0:
		'В шкафчике старые журналы Здоровье, Техника молодежи и пыльные пожелтевшие книги.'
	elseif card = 0 and poiskrand = 0:
		card = 1

		'"Хмм, а это что такое?" подумали вы когда нашли колоду карт.'
	end

	act 'Положить на место':gt $curloc
end

if card > 0:
	act 'Взять колоду карт':
		gt'card'
	end
end

if horny >= 50:
	act 'Мастурбировать':
		gt'selfplay'
	end
end

if piratHorny >= 20 and piratfrend >= 10:gt'pirat'
--- Gadsarai ---------------------------------

