# ybedr
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Спальная</center>'

if ymanrem[4] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[4] = 1:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[4] = 2:'<center><img src="images/pic/ybedr.jpg"></center>'
if ymanrem[4] = 2:'<a href="exec:GT ''bed'',''start''">двухспальная кровать</a> <a href="exec:GT ''loker'',''start''">шкаф</a> <a href="exec:GT ''mirror'',''start''">зеркало</a>'

act 'Выйти из комнаты':minut += 1 & gt'ymans'
--- ybedr ---------------------------------

