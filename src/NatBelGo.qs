# NatBelGo
gs'stat'

'<center><b><font color = maroon><<$npcName[16]>> <<$npcSurName[16]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
'Вы подошли к Наташе и она спросила у вас, пойдете ли вы к ней домой, учить уроки.'

act 'Идти с Наташей':
	cls
	minut += 15
	gs'stat'

	'<center><b><font color = maroon><<$npcName[14]>> <<$npcSurName[16]>></font></b></center>'
	'<center><img src="images/qwest/alter/npc/16.jpg"></center>'
	'Вы 15 минут шли по улице к Наташиному дому обсуждая всякую ерунду.'

	act 'Войти в квартиру':gt'NatBelHome'
end
--- NatBelGo ---------------------------------

