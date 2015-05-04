# dimaGoHome
Mud = totminut+120
dimarudeday = day
gs'stat'

'<center><b><font color = maroon><<$npcName[1]>> <<$npcSurName[1]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/1.jpg"></center>'
'К вам подошел Дима и осмотрел вас с ног до головы. "Ну что, пойдем ко мне?"'

act 'Идти к Диме':
	cls
	minut += 30
	gs'stat'

	'Вы пошли к дому Димы. Дом где он живет принадлежит его родителям, это большой двух этажный, отдельно стоящий дом с ухоженным газоном и не большим садом. Вместе с Димой вы прошли в его комнату и он закрыл двери на ключ.'

	act 'Идти в комнату Димы':gt'dimaHome'
end
--- dimaGoHome ---------------------------------

