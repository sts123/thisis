# NewCloShop
$shmotmag = {
	cla

	act 'Убрать вещь':gt $loc, $metka

	if newclo[i] = 0 and money >= 3000:
		act 'Купить':
			money -= 3000
			newclo[i] = 1
			newcloH[i] = 60
			newcloB[i] = bedra
			gt $loc, $metka
		end
	else
		gt $loc, $metka
	end

	act 'Уйти':mag = 0 & minut += 15 & gt'down'
}

$metka = $ARGS[0]
$loc = $CURLOC
$metkaM = $ARGS[0]
$locM = $CURLOC

clr
mag = 1
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

'<center><b><font color = maroon>Магазин "Модница"</font></b></center>'

act 'Уйти':mag = 0 & minut += 15 & gt'down'

if hour >= 9 and hour <= 21:
	'<center><b>Вся одежда по 3000 рублей</font></b></center>'
	'<table><tr><a href="exec:i = 1 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/1.jpg" height="120"></div></a>	<a href="exec:i = 2 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/2.jpg" height="120"></div></a>	<a href="exec:i = 3 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/3.jpg" height="120"></div></a>	<a href="exec:i = 4 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/4.jpg" height="120"></div></a>	<a href="exec:i = 5 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/5.jpg" height="120"></div></a>	<a href="exec:i = 6 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/6.jpg" height="120"></div></a>	<a href="exec:i = 7 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/7.jpg" height="120"></div></a>	<a href="exec:i = 8 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/8.jpg" height="120"></div></a>	<a href="exec:i = 9 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/9.jpg" height="120"></div></a>	<a href="exec:i = 10 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/10.jpg" height="120"></div></a>	<a href="exec:i = 11 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/11.jpg" height="120"></div></a>	<a href="exec:i = 12 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/12.jpg" height="120"></div></a>	<a href="exec:i = 13 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/13.jpg" height="120"></div></a>	<a href="exec:i = 14 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/14.jpg" height="120"></div></a>	<a href="exec:i = 15 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/15.jpg" height="120"></div></a>	<a href="exec:i = 16 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/16.jpg" height="120"></div></a>	<a href="exec:i = 17 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/17.jpg" height="120"></div></a>	<a href="exec:i = 18 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/18.jpg" height="120"></div></a>	<a href="exec:i = 19 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/19.jpg" height="120"></div></a>	<a href="exec:i = 20 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/20.jpg" height="120"></div></a>	<a href="exec:i = 21 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/21.jpg" height="120"></div></a>	<a href="exec:i = 22 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/22.jpg" height="120"></div></a>	<a href="exec:i = 23 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/23.jpg" height="120"></div></a>	<a href="exec:i = 24 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/24.jpg" height="120"></div></a>	<a href="exec:i = 25 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/25.jpg" height="120"></div></a>	<a href="exec:i = 26 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/26.jpg" height="120"></div></a>	<a href="exec:i = 27 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/27.jpg" height="120"></div></a>	<a href="exec:i = 28 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/28.jpg" height="120"></div></a>	<a href="exec:i = 29 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/29.jpg" height="120"></div></a>	<a href="exec:i = 30 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/30.jpg" height="120"></div></a>	<a href="exec:i = 31 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/31.jpg" height="120"></div></a>	<a href="exec:i = 32 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/32.jpg" height="120"></div></a>	<a href="exec:i = 33 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/33.jpg" height="120"></div></a>	<a href="exec:i = 34 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/34.jpg" height="120"></div></a>	<a href="exec:i = 35 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/35.jpg" height="120"></div></a>	<a href="exec:i = 36 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/36.jpg" height="120"></div></a>	<a href="exec:i = 37 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/37.jpg" height="120"></div></a>	<a href="exec:i = 38 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/38.jpg" height="120"></div></a>	<a href="exec:i = 39 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/39.jpg" height="120"></div></a>	<a href="exec:i = 40 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/40.jpg" height="120"></div></a>	<a href="exec:i = 41 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/41.jpg" height="120"></div></a>	<a href="exec:i = 42 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/42.jpg" height="120"></div></a>	<a href="exec:i = 43 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/43.jpg" height="120"></div></a>	<a href="exec:i = 44 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/44.jpg" height="120"></div></a>	<a href="exec:i = 45 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/45.jpg" height="120"></div></a>	<a href="exec:i = 46 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/46.jpg" height="120"></div></a>	<a href="exec:i = 47 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/47.jpg" height="120"></div></a>	<a href="exec:i = 48 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/48.jpg" height="120"></div></a>	<a href="exec:i = 49 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/49.jpg" height="120"></div></a>	<a href="exec:i = 50 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/50.jpg" height="120"></div></a>	<a href="exec:i = 51 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/51.jpg" height="120"></div></a>	<a href="exec:i = 52 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/52.jpg" height="120"></div></a>	<a href="exec:i = 53 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/53.jpg" height="120"></div></a>	<a href="exec:i = 54 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/54.jpg" height="120"></div></a>	<a href="exec:i = 55 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/55.jpg" height="120"></div></a>	<a href="exec:i = 56 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/56.jpg" height="120"></div></a>	<a href="exec:i = 57 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/57.jpg" height="120"></div></a>	<a href="exec:i = 58 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/58.jpg" height="120"></div></a>	<a href="exec:i = 59 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/59.jpg" height="120"></div></a>	<a href="exec:i = 60 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/60.jpg" height="120"></div></a>	<a href="exec:i = 61 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/61.jpg" height="120"></div></a>	<a href="exec:i = 62 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/62.jpg" height="120"></div></a>	<a href="exec:i = 63 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/63.jpg" height="120"></div></a>	<a href="exec:i = 64 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/64.jpg" height="120"></div></a>	<a href="exec:i = 65 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/65.jpg" height="120"></div></a>	<a href="exec:i = 66 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/66.jpg" height="120"></div></a>	<a href="exec:i = 67 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/67.jpg" height="120"></div></a>	<a href="exec:i = 68 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/68.jpg" height="120"></div></a>	<a href="exec:i = 69 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/69.jpg" height="120"></div></a>	<a href="exec:i = 70 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/70.jpg" height="120"></div></a>	<a href="exec:i = 71 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/71.jpg" height="120"></div></a>	<a href="exec:i = 72 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/72.jpg" height="120"></div></a>	<a href="exec:i = 73 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/73.jpg" height="120"></div></a>	<a href="exec:i = 74 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/74.jpg" height="120"></div></a>	<a href="exec:i = 75 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/75.jpg" height="120"></div></a>	<a href="exec:i = 76 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/76.jpg" height="120"></div></a>	<a href="exec:i = 77 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/77.jpg" height="120"></div></a>	<a href="exec:i = 78 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/78.jpg" height="120"></div></a>	<a href="exec:i = 79 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/79.jpg" height="120"></div></a>	<a href="exec:i = 80 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/80.jpg" height="120"></div></a>	<a href="exec:i = 81 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/81.jpg" height="120"></div></a>	<a href="exec:i = 82 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/82.jpg" height="120"></div></a>	<a href="exec:i = 83 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/83.jpg" height="120"></div></a>	<a href="exec:i = 84 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/84.jpg" height="120"></div></a>	<a href="exec:i = 85 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/85.jpg" height="120"></div></a>	<a href="exec:i = 86 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/86.jpg" height="120"></div></a>	<a href="exec:i = 87 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/87.jpg" height="120"></div></a>	<a href="exec:i = 88 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/88.jpg" height="120"></div></a>	<a href="exec:i = 89 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/89.jpg" height="120"></div></a>	<a href="exec:i = 90 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/90.jpg" height="120"></div></a>	<a href="exec:i = 91 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/91.jpg" height="120"></div></a>	<a href="exec:i = 92 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/92.jpg" height="120"></div></a>	<a href="exec:i = 93 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/93.jpg" height="120"></div></a>	<a href="exec:i = 94 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/94.jpg" height="120"></div></a>	<a href="exec:i = 95 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/95.jpg" height="120"></div></a>	<a href="exec:i = 96 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/96.jpg" height="120"></div></a>	<a href="exec:i = 97 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/97.jpg" height="120"></div></a>	<a href="exec:i = 98 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/98.jpg" height="120"></div></a>	<a href="exec:i = 99 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/99.jpg" height="120"></div></a>	<a href="exec:i = 100 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/100.jpg" height="120"></div></a>	<a href="exec:i = 101 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/101.jpg" height="120"></div></a>	<a href="exec:i = 102 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/102.jpg" height="120"></div></a>	<a href="exec:i = 103 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/103.jpg" height="120"></div></a>	<a href="exec:i = 104 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/104.jpg" height="120"></div></a>	<a href="exec:i = 105 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/105.jpg" height="120"></div></a>	<a href="exec:i = 106 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/106.jpg" height="120"></div></a>	<a href="exec:i = 107 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/107.jpg" height="120"></div></a>	<a href="exec:i = 108 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/108.jpg" height="120"></div></a>	<a href="exec:i = 109 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/109.jpg" height="120"></div></a>	<a href="exec:i = 110 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/110.jpg" height="120"></div></a>	<a href="exec:i = 111 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/111.jpg" height="120"></div></a>	<a href="exec:i = 112 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/112.jpg" height="120"></div></a>	<a href="exec:i = 113 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/113.jpg" height="120"></div></a>	<a href="exec:i = 114 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/114.jpg" height="120"></div></a>	<a href="exec:i = 115 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/115.jpg" height="120"></div></a>	<a href="exec:i = 116 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/116.jpg" height="120"></div></a>	<a href="exec:i = 117 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/117.jpg" height="120"></div></a>	<a href="exec:i = 118 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/118.jpg" height="120"></div></a>	<a href="exec:i = 119 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/119.jpg" height="120"></div></a>	<a href="exec:i = 120 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/120.jpg" height="120"></div></a>	<a href="exec:i = 121 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/121.jpg" height="120"></div></a>	<a href="exec:i = 122 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/122.jpg" height="120"></div></a>	<a href="exec:i = 123 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/123.jpg" height="120"></div></a>	<a href="exec:i = 124 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/124.jpg" height="120"></div></a>	<a href="exec:i = 125 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/125.jpg" height="120"></div></a>	<a href="exec:i = 126 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/126.jpg" height="120"></div></a>	<a href="exec:i = 127 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/127.jpg" height="120"></div></a>	<a href="exec:i = 128 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/128.jpg" height="120"></div></a>	<a href="exec:i = 129 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/129.jpg" height="120"></div></a>	<a href="exec:i = 130 & dynamic $shmotmag"><div style="width:100%; max-width:100px; max-height:120px;"><img src="images/ode/newclo/130.jpg" height="120"></div></a></tr></table>'

!'
	<a href="exec:i = 1 & dynamic $shmotmag"><img src="images/ode/newclo/1.jpg" width="100"</a>	<a href="exec:i = 2 & view ''images/ode/newclo/2.jpg'' & dynamic $shmotmag">Вариант2</a>	<a href="exec:i = 3 & view ''images/ode/newclo/3.jpg'' & dynamic $shmotmag">Вариант3</a>	<a href="exec:i = 4 & view ''images/ode/newclo/4.jpg'' & dynamic $shmotmag">Вариант4</a>	<a href="exec:i = 5 & view ''images/ode/newclo/5.jpg'' & dynamic $shmotmag">Вариант5</a>	<a href="exec:i = 6 & view ''images/ode/newclo/6.jpg'' & dynamic $shmotmag">Вариант6</a>	<a href="exec:i = 7 & view ''images/ode/newclo/7.jpg'' & dynamic $shmotmag">Вариант7</a>	<a href="exec:i = 8 & view ''images/ode/newclo/8.jpg'' & dynamic $shmotmag">Вариант8</a>
	<a href="exec:i = 9 & view ''images/ode/newclo/9.jpg'' & dynamic $shmotmag">Вариант9</a>	<a href="exec:i = 10 & view ''images/ode/newclo/10.jpg'' & dynamic $shmotmag">Вариант10</a>	<a href="exec:i = 11 & view ''images/ode/newclo/11.jpg'' & dynamic $shmotmag">Вариант11</a>	<a href="exec:i = 12 & view ''images/ode/newclo/12.jpg'' & dynamic $shmotmag">Вариант12</a>	<a href="exec:i = 13 & view ''images/ode/newclo/13.jpg'' & dynamic $shmotmag">Вариант13</a>	<a href="exec:i = 14 & view ''images/ode/newclo/14.jpg'' & dynamic $shmotmag">Вариант14</a>	<a href="exec:i = 15 & view ''images/ode/newclo/15.jpg'' & dynamic $shmotmag">Вариант15</a>	<a href="exec:i = 16 & view ''images/ode/newclo/16.jpg'' & dynamic $shmotmag">Вариант16</a>
	<a href="exec:i = 17 & view ''images/ode/newclo/17.jpg'' & dynamic $shmotmag">Вариант17</a>	<a href="exec:i = 18 & view ''images/ode/newclo/18.jpg'' & dynamic $shmotmag">Вариант18</a>	<a href="exec:i = 19 & view ''images/ode/newclo/19.jpg'' & dynamic $shmotmag">Вариант19</a>	<a href="exec:i = 20 & view ''images/ode/newclo/20.jpg'' & dynamic $shmotmag">Вариант20</a>	<a href="exec:i = 21 & view ''images/ode/newclo/21.jpg'' & dynamic $shmotmag">Вариант21</a>	<a href="exec:i = 22 & view ''images/ode/newclo/22.jpg'' & dynamic $shmotmag">Вариант22</a>	<a href="exec:i = 23 & view ''images/ode/newclo/23.jpg'' & dynamic $shmotmag">Вариант23</a>	<a href="exec:i = 24 & view ''images/ode/newclo/24.jpg'' & dynamic $shmotmag">Вариант24</a>
	<a href="exec:i = 25 & view ''images/ode/newclo/25.jpg'' & dynamic $shmotmag">Вариант25</a>	<a href="exec:i = 26 & view ''images/ode/newclo/26.jpg'' & dynamic $shmotmag">Вариант26</a>	<a href="exec:i = 27 & view ''images/ode/newclo/27.jpg'' & dynamic $shmotmag">Вариант27</a>	<a href="exec:i = 28 & view ''images/ode/newclo/28.jpg'' & dynamic $shmotmag">Вариант28</a>	<a href="exec:i = 29 & view ''images/ode/newclo/29.jpg'' & dynamic $shmotmag">Вариант29</a>	<a href="exec:i = 30 & view ''images/ode/newclo/30.jpg'' & dynamic $shmotmag">Вариант30</a>	<a href="exec:i = 31 & view ''images/ode/newclo/31.jpg'' & dynamic $shmotmag">Вариант31</a>	<a href="exec:i = 32 & view ''images/ode/newclo/32.jpg'' & dynamic $shmotmag">Вариант32</a>
	<a href="exec:i = 33 & view ''images/ode/newclo/33.jpg'' & dynamic $shmotmag">Вариант33</a>	<a href="exec:i = 34 & view ''images/ode/newclo/34.jpg'' & dynamic $shmotmag">Вариант34</a>	<a href="exec:i = 35 & view ''images/ode/newclo/35.jpg'' & dynamic $shmotmag">Вариант35</a>	<a href="exec:i = 36 & view ''images/ode/newclo/36.jpg'' & dynamic $shmotmag">Вариант36</a>	<a href="exec:i = 37 & view ''images/ode/newclo/37.jpg'' & dynamic $shmotmag">Вариант37</a>	<a href="exec:i = 38 & view ''images/ode/newclo/38.jpg'' & dynamic $shmotmag">Вариант38</a>	<a href="exec:i = 39 & view ''images/ode/newclo/39.jpg'' & dynamic $shmotmag">Вариант39</a>	<a href="exec:i = 40 & view ''images/ode/newclo/40.jpg'' & dynamic $shmotmag">Вариант40</a>
	<a href="exec:i = 41 & view ''images/ode/newclo/41.jpg'' & dynamic $shmotmag">Вариант41</a>	<a href="exec:i = 42 & view ''images/ode/newclo/42.jpg'' & dynamic $shmotmag">Вариант42</a>	<a href="exec:i = 43 & view ''images/ode/newclo/43.jpg'' & dynamic $shmotmag">Вариант43</a>	<a href="exec:i = 44 & view ''images/ode/newclo/44.jpg'' & dynamic $shmotmag">Вариант44</a>	<a href="exec:i = 45 & view ''images/ode/newclo/45.jpg'' & dynamic $shmotmag">Вариант45</a>	<a href="exec:i = 46 & view ''images/ode/newclo/46.jpg'' & dynamic $shmotmag">Вариант46</a>	<a href="exec:i = 47 & view ''images/ode/newclo/47.jpg'' & dynamic $shmotmag">Вариант47</a>	<a href="exec:i = 48 & view ''images/ode/newclo/48.jpg'' & dynamic $shmotmag">Вариант48</a>
	<a href="exec:i = 49 & view ''images/ode/newclo/49.jpg'' & dynamic $shmotmag">Вариант49</a>	<a href="exec:i = 50 & view ''images/ode/newclo/50.jpg'' & dynamic $shmotmag">Вариант50</a>	<a href="exec:i = 51 & view ''images/ode/newclo/51.jpg'' & dynamic $shmotmag">Вариант51</a>	<a href="exec:i = 52 & view ''images/ode/newclo/52.jpg'' & dynamic $shmotmag">Вариант52</a>	<a href="exec:i = 53 & view ''images/ode/newclo/53.jpg'' & dynamic $shmotmag">Вариант53</a>	<a href="exec:i = 54 & view ''images/ode/newclo/54.jpg'' & dynamic $shmotmag">Вариант54</a>	<a href="exec:i = 55 & view ''images/ode/newclo/55.jpg'' & dynamic $shmotmag">Вариант55</a>	<a href="exec:i = 56 & view ''images/ode/newclo/56.jpg'' & dynamic $shmotmag">Вариант56</a>
	<a href="exec:i = 57 & view ''images/ode/newclo/57.jpg'' & dynamic $shmotmag">Вариант57</a>	<a href="exec:i = 58 & view ''images/ode/newclo/58.jpg'' & dynamic $shmotmag">Вариант58</a>	<a href="exec:i = 59 & view ''images/ode/newclo/59.jpg'' & dynamic $shmotmag">Вариант59</a>	<a href="exec:i = 60 & view ''images/ode/newclo/60.jpg'' & dynamic $shmotmag">Вариант60</a>	<a href="exec:i = 61 & view ''images/ode/newclo/61.jpg'' & dynamic $shmotmag">Вариант61</a>	<a href="exec:i = 62 & view ''images/ode/newclo/62.jpg'' & dynamic $shmotmag">Вариант62</a>	<a href="exec:i = 63 & view ''images/ode/newclo/63.jpg'' & dynamic $shmotmag">Вариант63</a>	<a href="exec:i = 64 & view ''images/ode/newclo/64.jpg'' & dynamic $shmotmag">Вариант64</a>
	<a href="exec:i = 65 & view ''images/ode/newclo/65.jpg'' & dynamic $shmotmag">Вариант65</a>	<a href="exec:i = 66 & view ''images/ode/newclo/66.jpg'' & dynamic $shmotmag">Вариант66</a>	<a href="exec:i = 67 & view ''images/ode/newclo/67.jpg'' & dynamic $shmotmag">Вариант67</a>	<a href="exec:i = 68 & view ''images/ode/newclo/68.jpg'' & dynamic $shmotmag">Вариант68</a>	<a href="exec:i = 69 & view ''images/ode/newclo/69.jpg'' & dynamic $shmotmag">Вариант69</a>	<a href="exec:i = 70 & view ''images/ode/newclo/70.jpg'' & dynamic $shmotmag">Вариант70</a>	<a href="exec:i = 71 & view ''images/ode/newclo/71.jpg'' & dynamic $shmotmag">Вариант71</a>	<a href="exec:i = 72 & view ''images/ode/newclo/72.jpg'' & dynamic $shmotmag">Вариант72</a>
	<a href="exec:i = 73 & view ''images/ode/newclo/73.jpg'' & dynamic $shmotmag">Вариант73</a>	<a href="exec:i = 74 & view ''images/ode/newclo/74.jpg'' & dynamic $shmotmag">Вариант74</a>	<a href="exec:i = 75 & view ''images/ode/newclo/75.jpg'' & dynamic $shmotmag">Вариант75</a>	<a href="exec:i = 76 & view ''images/ode/newclo/76.jpg'' & dynamic $shmotmag">Вариант76</a>	<a href="exec:i = 77 & view ''images/ode/newclo/77.jpg'' & dynamic $shmotmag">Вариант77</a>	<a href="exec:i = 78 & view ''images/ode/newclo/78.jpg'' & dynamic $shmotmag">Вариант78</a>	<a href="exec:i = 79 & view ''images/ode/newclo/79.jpg'' & dynamic $shmotmag">Вариант79</a>	<a href="exec:i = 80 & view ''images/ode/newclo/80.jpg'' & dynamic $shmotmag">Вариант80</a>
	<a href="exec:i = 81 & view ''images/ode/newclo/81.jpg'' & dynamic $shmotmag">Вариант81</a>	<a href="exec:i = 82 & view ''images/ode/newclo/82.jpg'' & dynamic $shmotmag">Вариант82</a>	<a href="exec:i = 83 & view ''images/ode/newclo/83.jpg'' & dynamic $shmotmag">Вариант83</a>	<a href="exec:i = 84 & view ''images/ode/newclo/84.jpg'' & dynamic $shmotmag">Вариант84</a>	<a href="exec:i = 85 & view ''images/ode/newclo/85.jpg'' & dynamic $shmotmag">Вариант85</a>	<a href="exec:i = 86 & view ''images/ode/newclo/86.jpg'' & dynamic $shmotmag">Вариант86</a>	<a href="exec:i = 87 & view ''images/ode/newclo/87.jpg'' & dynamic $shmotmag">Вариант87</a>	<a href="exec:i = 88 & view ''images/ode/newclo/88.jpg'' & dynamic $shmotmag">Вариант88</a>
	<a href="exec:i = 89 & view ''images/ode/newclo/89.jpg'' & dynamic $shmotmag">Вариант89</a>	<a href="exec:i = 90 & view ''images/ode/newclo/90.jpg'' & dynamic $shmotmag">Вариант90</a>	<a href="exec:i = 91 & view ''images/ode/newclo/91.jpg'' & dynamic $shmotmag">Вариант91</a>	<a href="exec:i = 92 & view ''images/ode/newclo/92.jpg'' & dynamic $shmotmag">Вариант92</a>	<a href="exec:i = 93 & view ''images/ode/newclo/93.jpg'' & dynamic $shmotmag">Вариант93</a>	<a href="exec:i = 94 & view ''images/ode/newclo/94.jpg'' & dynamic $shmotmag">Вариант94</a>	<a href="exec:i = 95 & view ''images/ode/newclo/95.jpg'' & dynamic $shmotmag">Вариант95</a>	<a href="exec:i = 96 & view ''images/ode/newclo/96.jpg'' & dynamic $shmotmag">Вариант96</a>
	<a href="exec:i = 97 & view ''images/ode/newclo/97.jpg'' & dynamic $shmotmag">Вариант97</a>	<a href="exec:i = 98 & view ''images/ode/newclo/98.jpg'' & dynamic $shmotmag">Вариант98</a>	<a href="exec:i = 99 & view ''images/ode/newclo/99.jpg'' & dynamic $shmotmag">Вариант99</a>	<a href="exec:i = 100 & view ''images/ode/newclo/100.jpg'' & dynamic $shmotmag">Вариант100</a>	<a href="exec:i = 101 & view ''images/ode/newclo/101.jpg'' & dynamic $shmotmag">Вариант101</a>	<a href="exec:i = 102 & view ''images/ode/newclo/102.jpg'' & dynamic $shmotmag">Вариант102</a>	<a href="exec:i = 103 & view ''images/ode/newclo/103.jpg'' & dynamic $shmotmag">Вариант103</a>	<a href="exec:i = 104 & view ''images/ode/newclo/104.jpg'' & dynamic $shmotmag">Вариант104</a>
	<a href="exec:i = 105 & view ''images/ode/newclo/105.jpg'' & dynamic $shmotmag">Вариант105</a>	<a href="exec:i = 106 & view ''images/ode/newclo/106.jpg'' & dynamic $shmotmag">Вариант106</a>	<a href="exec:i = 107 & view ''images/ode/newclo/107.jpg'' & dynamic $shmotmag">Вариант107</a>	<a href="exec:i = 108 & view ''images/ode/newclo/108.jpg'' & dynamic $shmotmag">Вариант108</a>	<a href="exec:i = 109 & view ''images/ode/newclo/109.jpg'' & dynamic $shmotmag">Вариант109</a>	<a href="exec:i = 110 & view ''images/ode/newclo/110.jpg'' & dynamic $shmotmag">Вариант110</a>	<a href="exec:i = 111 & view ''images/ode/newclo/111.jpg'' & dynamic $shmotmag">Вариант111</a>	<a href="exec:i = 112 & view ''images/ode/newclo/112.jpg'' & dynamic $shmotmag">Вариант112</a>
	<a href="exec:i = 113 & view ''images/ode/newclo/113.jpg'' & dynamic $shmotmag">Вариант113</a>	<a href="exec:i = 114 & view ''images/ode/newclo/114.jpg'' & dynamic $shmotmag">Вариант114</a>	<a href="exec:i = 115 & view ''images/ode/newclo/115.jpg'' & dynamic $shmotmag">Вариант115</a>	<a href="exec:i = 116 & view ''images/ode/newclo/116.jpg'' & dynamic $shmotmag">Вариант116</a>	<a href="exec:i = 117 & view ''images/ode/newclo/117.jpg'' & dynamic $shmotmag">Вариант117</a>	<a href="exec:i = 118 & view ''images/ode/newclo/118.jpg'' & dynamic $shmotmag">Вариант118</a>	<a href="exec:i = 119 & view ''images/ode/newclo/119.jpg'' & dynamic $shmotmag">Вариант119</a>	<a href="exec:i = 120 & view ''images/ode/newclo/120.jpg'' & dynamic $shmotmag">Вариант120</a>
	<a href="exec:i = 121 & view ''images/ode/newclo/121.jpg'' & dynamic $shmotmag">Вариант121</a>	<a href="exec:i = 122 & view ''images/ode/newclo/122.jpg'' & dynamic $shmotmag">Вариант122</a>	<a href="exec:i = 123 & view ''images/ode/newclo/123.jpg'' & dynamic $shmotmag">Вариант123</a>	<a href="exec:i = 124 & view ''images/ode/newclo/124.jpg'' & dynamic $shmotmag">Вариант124</a>	<a href="exec:i = 125 & view ''images/ode/newclo/125.jpg'' & dynamic $shmotmag">Вариант125</a>	<a href="exec:i = 126 & view ''images/ode/newclo/126.jpg'' & dynamic $shmotmag">Вариант126</a>	<a href="exec:i = 127 & view ''images/ode/newclo/127.jpg'' & dynamic $shmotmag">Вариант127</a>	<a href="exec:i = 128 & view ''images/ode/newclo/128.jpg'' & dynamic $shmotmag">Вариант128</a>
	<a href="exec:i = 129 & view ''images/ode/newclo/129.jpg'' & dynamic $shmotmag">Вариант129</a>	<a href="exec:i = 130 & view ''images/ode/newclo/130.jpg'' & dynamic $shmotmag">Вариант130</a>
'
end
--- NewCloShop ---------------------------------
