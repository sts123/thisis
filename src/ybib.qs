# ybib
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Библиотека</center>'

if ymanrem[10] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[10] = 1:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[10] = 2:'<center><img src="images/pic/bib.jpg"></center>'
if ymanrem[10] = 2:''

act 'Выйти из комнаты':minut += 1 & gt'ymans'
--- ybib ---------------------------------

