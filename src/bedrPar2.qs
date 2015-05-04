# bedrPar2
act 'Выйти из комнаты':
	gt'korrPar'
end

$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
minut = minut + 1
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Спальная родителей</font></b></center>'
'<center><img src="images/qwest/alter/<<$loc>>.jpg"></center>'
'Комната в которой живут родители. В центре стоит двухспальная кровать и большой шкаф у стены.'

gs'family'

if hour = 21 and parsexrand = 5 and parentsexday ! daystart:gt'seeparentsex'
--- bedrPar2 ---------------------------------

