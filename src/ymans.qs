# ymans
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Холл</center>'

if ymanrem[3] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[3] = 1:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[3] = 2:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[3] = 3:'<center><img src="images/pic/ymans.jpg"></center>'
if ymanrem[3] = 3:'<a href="exec:GT ''mirror'',''start''">зеркало</a>'

if ymanrem[3] >= 1:act 'Спальная':minut += 1 & gt'ybedr'
if ymanrem[3] >= 1:act 'Ванная':minut += 1 & gt'yvan'
if ymanrem[3] >= 1:act 'Кухня':minut += 1 & gt'ykuh'
if ymanrem[3] >= 1:act 'Зал':minut += 1 & gt'yzal'
if ymanrem[3] >= 1:act 'Каминная комната':minut += 1 & gt'ykamin'
if ymanrem[3] >= 1:act 'Детская комната':minut += 1 & gt'ydet'
if ymanrem[3] >= 1:act 'Библиотека':minut += 1 & gt'ybib'
if ymanrem[3] >= 1:act 'Спортзал':minut += 1 & gt'ysport'
if ymanrem[3] >= 1:act 'Кабинет':minut += 1 & gt'ykabinet'

if nude = 0:act 'Выйти на участок':minut += 5 & gt'youplace'
--- ymans ---------------------------------

