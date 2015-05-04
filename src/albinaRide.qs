# albinaRide
albrideday = daystart
gs'stat'

'<center><b><font color = maroon><<$npcName[23]>> <<$npcSurName[23]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/23.jpg"></center>'
'Альбина искренне улыбается вам "Поехали ко мне Света, посидим, поболтаем."'

act 'Ехать с Альбиной':
	cls
	minut += 5
	gs'stat'

	'Вы сели в джип на заднее сиденье, рядом с вами села Альбина, за руль сел здоровенный парень в черном пиджаке и повез вас по городку. Вскоре вы заехали в ворота роскошного особняка и вышли из джипа.'

	act 'Идти в комнату Альбины':gt'albinahome'
end
--- albinaRide ---------------------------------

