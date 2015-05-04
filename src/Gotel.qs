# Gotel
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><H4>Отель</H4></center>'
'<center><img src="images/pic/Gotel.jpg"></center>'
'Возле <a href="exec:minut += 3 & GT ''vokzalGin''">входной двери</a> расположена стойка <a href="exec:minut += 1 & GT ''Gresep''">ресепшена</a>.'

if hour >= 12 and hour <= 13 and GermanQW > 0:
	'В комнате с надписью <a href="exec:minut += 1 & GT ''Goteladmin''">"Администрация"</a> замок открыт.'
end
--- Gotel ---------------------------------

