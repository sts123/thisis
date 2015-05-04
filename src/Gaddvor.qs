# Gaddvor
$metka = $ARGS[0]
$loc = $CURLOC

'<center><H4>Двор</H4></center>'
'<center><img src="images/qwest/gadukino/dvor.jpg"></center>'
'Двор с садом, избой и хозпостройками огорожен изгородью.'

clr
gs'stat'
gs'time'

act 'Идти в избу':minut += 5 & gt'Gadhouse'
act 'Идти в сарай':minut += 5 & gt'Gadsarai'
act 'Идти в баню':minut += 5 & gt'Gadbana'
act '<b>Идти в деревню</b>':minut += 5 & gt'gadukino'

if hour >= 17 and hour < 20:
	if mitkaday ! daystart:'Не далеко от избы шарахается <a href="exec:GT ''mitka''">Митька Шкворень</a>'
elseif hour >= 20:
	'Не далеко от избы сидит компашка деревенской <a href="exec:GT ''mitkabuh''">молодежи</a>'
end
--- Gaddvor ---------------------------------

