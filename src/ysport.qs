# ysport
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
gs'stat'

'<center><b><font color = maroon>Особняк</font></b></center>'
'<center>Спортивный зал</center>'

if ymanrem[11] = 0:'<center><img src="images/pic/ynill.jpg"></center>'
if ymanrem[11] = 1:'<center><img src="images/pic/yrem.jpg"></center>'
if ymanrem[11] = 2:'<center><img src="images/pic/ysport.jpg"></center>'
if ymanrem[11] = 2:''

if obruchday ! day:
	'<a href="exec: dynamic $sitrobrd ">крутить обруч</a>'
end

if bookYogday ! day:
	'<a href="exec: dynamic $sitryogd ">медитации</a>'
end

if skakday ! day:
	'<a href="exec: dynamic $sitrskakd ">прыжки на скакалке</a>'
end

if pressday ! day:
	'<a href="exec: dynamic $sitrpressd ">упражнения на пресс</a>'
end

if pushday ! day:
	'<a href="exec: dynamic $sitrpushd ">таких как отжимания</a>'
end

act 'Выйти из комнаты':minut += 1 & gt'ymans'
--- ysport ---------------------------------

