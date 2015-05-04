# KGDparty
'В партии 2 линии, передняя, защищает собой заднюю. В каждой максимум 3 бойца.'
''

if KGDrazm = 0:
	'Герой. Уровень <<KGDlvl>>, Жизнь <<KGDHP>>, урон <<KGDdam>>. <a href="exec:KGDrazm = 1 & KGDsubsp = 1 & dynamic $kgddin ">Разместить</a>'
else
	'Герой. Уровень <<KGDlvl>>, Жизнь <<KGDHP>>, урон <<KGDdam>>'
end

if KGDsput2 > 0:
	if KGDrazm2 = 0:
		'<<$KGDname2>>. Уровень <<KGDlvl2>>, Жизнь <<KGDHP2>>, урон <<KGDdam2>>. <a href="exec:KGDrazm2 = 1 & KGDsubsp = 2 & dynamic $kgddin ">Разместить</a>'
	else
		'<<$KGDname2>>. Уровень <<KGDlvl2>>, Жизнь <<KGDHP2>>, урон <<KGDdam2>>'
	end
end
if KGDsput3 > 0:
	if KGDrazm3 = 0:
		'<<$KGDname3>>. Уровень <<KGDlvl3>>, Жизнь <<KGDHP3>>, урон <<KGDdam3>>. <a href="exec:KGDrazm3 = 1 & KGDsubsp = 3 & dynamic $kgddin ">Разместить</a>'
	else
		'<<$KGDname3>>. Уровень <<KGDlvl3>>, Жизнь <<KGDHP3>>, урон <<KGDdam3>>'
	end
end
if KGDsput4 > 0:
	if KGDrazm4 = 0:
		'<<$KGDname4>>. Уровень <<KGDlvl4>>, Жизнь <<KGDHP4>>, урон <<KGDdam4>>. <a href="exec:KGDrazm4 = 1 & KGDsubsp = 4 & dynamic $kgddin ">Разместить</a>'
	else
		'<<$KGDname4>>. Уровень <<KGDlvl4>>, Жизнь <<KGDHP4>>, урон <<KGDdam4>>'
	end
end
if KGDsput5 > 0:
	if KGDrazm5 = 0:
		'<<$KGDname5>>. Уровень <<KGDlvl5>>, Жизнь <<KGDHP5>>, урон <<KGDdam5>>. <a href="exec:KGDrazm5 = 1 & KGDsubsp = 5 & dynamic $kgddin ">Разместить</a>'
	else
		'<<$KGDname5>>. Уровень <<KGDlvl5>>, Жизнь <<KGDHP5>>, урон <<KGDdam5>>'
	end
end
if KGDsput6 > 0:
	if KGDrazm6 = 0:
		'<<$KGDname6>>. Уровень <<KGDlvl6>>, Жизнь <<KGDHP6>>, урон <<KGDdam6>>. <a href="exec:KGDrazm6 = 1 & KGDsubsp = 6 & dynamic $kgddin ">Разместить</a>'
	else
		'<<$KGDname6>>. Уровень <<KGDlvl6>>, Жизнь <<KGDHP6>>, урон <<KGDdam6>>'
	end
end

'Первая линия. <<$kgdplace>> <<$kgdplace2>> <<$kgdplace3>>'
'Вторая линия. <<$kgdplace4>> <<$kgdplace5>> <<$kgdplace6>>'

$kgddin = {
	cls
	'Первая линия. <<$kgdplace>> <<$kgdplace2>> <<$kgdplace3>>'
	'Вторая линия. <<$kgdplace4>> <<$kgdplace5>> <<$kgdplace6>>'

	if kgdplace = 0:
		act '1е место':
			kgdplace = 1
			if KGDsubsp = 1:$kgdplace = 'Герой' & KGDsput = 1
			if KGDsubsp = 2:$kgdplace = $KGDname2 & KGDsput2 = 1
			if KGDsubsp = 3:$kgdplace = $KGDname3 & KGDsput3 = 1
			if KGDsubsp = 4:$kgdplace = $KGDname4 & KGDsput4 = 1
			if KGDsubsp = 5:$kgdplace = $KGDname5 & KGDsput5 = 1
			if KGDsubsp = 6:$kgdplace = $KGDname6 & KGDsput6 = 1
			gt $curloc
		end
	end
	if kgdplace2 = 0:
		act '2е место':
			kgdplace2 = 1
			if KGDsubsp = 1:$kgdplace2 = 'Герой' & KGDsput = 2
			if KGDsubsp = 2:$kgdplace2 = $KGDname2 & KGDsput2 = 2
			if KGDsubsp = 3:$kgdplace2 = $KGDname3 & KGDsput3 = 2
			if KGDsubsp = 4:$kgdplace2 = $KGDname4 & KGDsput4 = 2
			if KGDsubsp = 5:$kgdplace2 = $KGDname5 & KGDsput5 = 2
			if KGDsubsp = 6:$kgdplace2 = $KGDname6 & KGDsput6 = 2
			gt $curloc
		end
	end
	if kgdplace3 = 0:
		act '3е место':
			kgdplace3 = 1
			if KGDsubsp = 1:$kgdplace3 = 'Герой' & KGDsput = 3
			if KGDsubsp = 2:$kgdplace3 = $KGDname2 & KGDsput2 = 3
			if KGDsubsp = 3:$kgdplace3 = $KGDname3 & KGDsput3 = 3
			if KGDsubsp = 4:$kgdplace3 = $KGDname4 & KGDsput4 = 3
			if KGDsubsp = 5:$kgdplace3 = $KGDname5 & KGDsput5 = 3
			if KGDsubsp = 6:$kgdplace3 = $KGDname6 & KGDsput6 = 3
			gt $curloc
		end
	end
	if kgdplace4 = 0:
		act '4е место':
			kgdplace4 = 1
			if KGDsubsp = 1:$kgdplace4 = 'Герой' & KGDsput = 4
			if KGDsubsp = 2:$kgdplace4 = $KGDname2 & KGDsput2 = 4
			if KGDsubsp = 3:$kgdplace4 = $KGDname3 & KGDsput3 = 4
			if KGDsubsp = 4:$kgdplace4 = $KGDname4 & KGDsput4 = 4
			if KGDsubsp = 5:$kgdplace4 = $KGDname5 & KGDsput5 = 4
			if KGDsubsp = 6:$kgdplace4 = $KGDname6 & KGDsput6 = 4
			gt $curloc
		end
	end
	if kgdplace5 = 0:
		act '5е место':
			kgdplace5 = 1
			if KGDsubsp = 1:$kgdplace5 = 'Герой' & KGDsput = 5
			if KGDsubsp = 2:$kgdplace5 = $KGDname2 & KGDsput2 = 5
			if KGDsubsp = 3:$kgdplace5 = $KGDname3 & KGDsput3 = 5
			if KGDsubsp = 4:$kgdplace5 = $KGDname4 & KGDsput4 = 5
			if KGDsubsp = 5:$kgdplace5 = $KGDname5 & KGDsput5 = 5
			if KGDsubsp = 6:$kgdplace5 = $KGDname6 & KGDsput6 = 5
			gt $curloc
		end
	end
	if kgdplace6 = 0:
		act '6е место':
			kgdplace6 = 1
			if KGDsubsp = 1:$kgdplace6 = 'Герой' & KGDsput = 6
			if KGDsubsp = 2:$kgdplace6 = $KGDname2 & KGDsput2 = 6
			if KGDsubsp = 3:$kgdplace6 = $KGDname3 & KGDsput3 = 6
			if KGDsubsp = 4:$kgdplace6 = $KGDname4 & KGDsput4 = 6
			if KGDsubsp = 5:$kgdplace6 = $KGDname5 & KGDsput5 = 6
			if KGDsubsp = 6:$kgdplace6 = $KGDname6 & KGDsput6 = 6
			gt $curloc
		end
	end
}

act 'Уйти':gt'KGDgame'
--- KGDparty ---------------------------------

