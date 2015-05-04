# start
KILLALL
CLOSE ALL
!ADDQST 'car.qsp'

USEHTML = 1
DEBUG = 1
SHOWSTAT 0
SHOWOBJS 0
SHOWINPUT 0
DISABLESCROLL = 1
!NOSAVE 0

$ONGLOAD = 'loadg'
$ONGSAVE = 'saveg'
$ONNEWLOC = 'LOCA'
$onobjsel = 'onobjsel'
$counter = 'counter'
$USERCOM = 'ОбработкаВвода'

$FNAME = 'Tahoma'
FSIZE = 12

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

!$backimage = 'content/pic/achtung.jpg'
'<center>http://albedo.fludilka.su/ и DeGross</center>'
*nl
'<hr align="left" color="red" size="3" width="1200">'
'<center><h2>ЭТО</h2></center>'
'<hr align="left" color="red" size="3" width="1200">'
*nl
'<center>Версия 1.1.4</center>'
!'<center>Разработка игры закрыта</center>'
*nl
!'<center><img src="images/studia/car.gif"></center>'
!*nl
!'<center><img src="images/pic/start.jpg"></center>'
!*nl

StoryLine = 0
MagikDostup = 0

'Симулятор жизни с элементами рпг, стратегии, порнухи. <b>Детям до 18 лет строго воспрещается играть в ЭТО.</b>'

$name = 'Михаил'
$surname = 'Кузнецов'
age = 35
vidage = 35
year = 2010
month = 5
week = 1
hour = 7
day = 25
!тело
rost = 186
fat = 130
dick = 0
energy = 15
water = 15
son = 16
!Статы
stren = 160
speed = 50
agil = 50
vital = 160
intel = 50
will = 100
react = 50
health = vital*10
willpower = intel*5 + will*5
manna = (intel*magik) + vital*5
BDSMfilm = 0
pornstudio = 0
pfilmSTOP = 0

money = 1500
opPRE = 1
tanga = 1
clrbelo = 1

act '<center><b>Начать</b></center>':
	cla
	gt'begin'
end

if music_on = 0:
	inited = 1
	music_on = 1
	volume = 100
	$music_theme = 'sukizaebali'
	gs'init_music'
end
--- start ---------------------------------

