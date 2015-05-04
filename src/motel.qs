# motel
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'
gs'time'

'<center><H4>Мотель</H4></center>'
'<center><img src="images/pic/motel.jpg"></center>'
'Придорожный мотель в котором останавливаются дальнобойщики что бы поесть и переночевать.'

act 'Выйти на шоссе':minut += 15 & nroad = 14 & gt'road'
--- motel ---------------------------------

