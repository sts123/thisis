# ykamin
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Каминная комната</center>'

if ymanrem[8] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[8] = 1:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[8] = 2:'<center><img src="images/pic/ykamin.jpg"></center>'
if ymanrem[8] = 2:'<a href="exec:GT ''stol'',''start''">стол</a>'

act 'Выйти из комнаты':minut += 1 & gt'ymans'
--- ykamin ---------------------------------

