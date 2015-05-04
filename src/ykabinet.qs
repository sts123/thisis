# ykabinet
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Кабинет</center>'

if ymanrem[12] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[12] = 1:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[12] = 2:'<center><img src="images/pic/ykabinet.jpg"></center>'
if ymanrem[12] = 2:'<a href="exec:GT ''Komp'',''start''">компьютер</a>'

act 'Выйти из комнаты':minut += 1 & gt'ymans'
--- ykabinet ---------------------------------

