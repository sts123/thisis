# JuliaMilGo
gs'stat'

'<center><b><font color = maroon><<$npcName[12]>> <<$npcSurName[12]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/12.jpg"></center>'
'Вы подошли к Юле и она спросила у вас, пойдете ли вы к ней домой, учить уроки.'

act 'Идти с Юлей':
	cls
	minut += 15
	gs'stat'

	'<center><b><font color = maroon><<$npcName[12]>> <<$npcSurName[12]>></font></b></center>'
	'<center><img src="images/qwest/alter/npc/12.jpg"></center>'
	'Вы 15 минут шли по улице к Юлиному дому обсуждая всякую ерунду.'

	act 'Войти в квартиру':gt'JuliaMilHome'
end
--- JuliaMilGo ---------------------------------

