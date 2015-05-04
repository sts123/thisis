# yzal
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Зал</center>'

if ymanrem[7] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[7] = 1:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[7] = 2:'<center><img src="images/pic/yzal.jpg"></center>'
if ymanrem[7] = 2:'<a href="exec:GT ''TV'',''start''">телевизор</a> <a href="exec:GT ''divan'',''start''">кожаный диван</a>'

act 'Выйти из комнаты':minut += 1 & gt'ymans'
--- yzal ---------------------------------

