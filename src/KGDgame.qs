# KGDgame
minut += 1
gs'stat'
gs'KGDexp'

'<center><b>День <<KGDday>></b></center>'
'<center><b>Ваш город</b></center>'
'<center>Строения</center>'
'Башня героя, в которой хранится <<KGDmoney>> ресурсов'
'Ферм <<KGDfarm>> штук'
''
'<center><b>Список партии героя (6ть человек максимум)</b></center>'
'Герой. Уровень <<KGDlvl>>, Жизнь <<KGDHP>>, урон <<KGDdam>>'
if KGDsput2 > 0:'<<$KGDname2>>. Уровень <<KGDlvl2>>, Жизнь <<KGDHP2>>, урон <<KGDdam2>>'
if KGDsput3 > 0:'<<$KGDname3>>. Уровень <<KGDlvl3>>, Жизнь <<KGDHP3>>, урон <<KGDdam3>>'
if KGDsput4 > 0:'<<$KGDname4>>. Уровень <<KGDlvl4>>, Жизнь <<KGDHP4>>, урон <<KGDdam4>>'
if KGDsput5 > 0:'<<$KGDname5>>. Уровень <<KGDlvl5>>, Жизнь <<KGDHP5>>, урон <<KGDdam5>>'
if KGDsput6 > 0:'<<$KGDname6>>. Уровень <<KGDlvl6>>, Жизнь <<KGDHP6>>, урон <<KGDdam6>>'
''
'<center><b>Территории</b></center>'
'Вам принадлежит <<KGDkarta>>% территории'

act 'Следующий день':
	cls
	KGDbrod = 0
	KGDday += 1
	KGDmoney += KGDkarta*5+KGDfarm*10
	gt $curloc
end

if KGDmoney >= 150 and KGDfarm > KGDkarta:
	act 'Построить ферму (150 ресурсов)':
		cls
		KGDmoney -= 150
		KGDfarm += 1
		gt $curloc
	end
end

act 'Расставить воинов':
	cls
	KGDpartyCreate = 1
	$kgdplace = '1е место пусто'
	$kgdplace2 = '2е место пусто'
	$kgdplace3 = '3е место пусто'
	$kgdplace4 = '4е место пусто'
	$kgdplace5 = '5е место пусто'
	$kgdplace6 = '6е место пусто'
	kgdplace = 0
	kgdplace2 = 0
	kgdplace3 = 0
	kgdplace4 = 0
	kgdplace5 = 0
	kgdplace6 = 0
	gt'KGDparty'
end

if KGDbrod = 0 and KGDpartyCreate > 0:
	act 'Отвоевывать территорию':
		cls
		KGDbrod = 1
		gt'KGDbefore'
	end
end

if KGDsput6 = 0 and KGDmoney >= 250:
	act 'Нанять спутника (250 ресурсов)':
		cls
		KGDmoney -= 250
		KGDpartyCreate = 0

		act 'Воин':
			if KGDsput2 = 0:
				$KGDname2 = 'Воин'
				KGDlvl2 = 1
				KGDHP2 = 100
				KGDdam2 = 10
				KGDsput2 = 1
				KGDexp2 = 0
				gt $curloc
				exit
			end
			if KGDsput3 = 0:
				$KGDname3 = 'Воин'
				KGDlvl3 = 1
				KGDHP3 = 100
				KGDdam3 = 10
				KGDsput3 = 1
				KGDexp3 = 0
				gt $curloc
				exit
			end
			if KGDsput4 = 0:
				$KGDname4 = 'Воин'
				KGDlvl4 = 1
				KGDHP4 = 100
				KGDdam4 = 10
				KGDsput4 = 1
				KGDexp4 = 0
				gt $curloc
				exit
			end
			if KGDsput5 = 0:
				$KGDname5 = 'Воин'
				KGDlvl5 = 1
				KGDHP5 = 100
				KGDdam5 = 10
				KGDsput5 = 1
				KGDexp5 = 0
				gt $curloc
				exit
			end
			if KGDsput6 = 0:
				$KGDname6 = 'Воин'
				KGDlvl6 = 1
				KGDHP6 = 100
				KGDdam6 = 10
				KGDsput6 = 1
				KGDexp6 = 0
				gt $curloc
				exit
			end
		end
		act 'Маг':
			if KGDsput2 = 0:
				$KGDname2 = 'Маг'
				KGDlvl2 = 1
				KGDHP2 = 60
				KGDdam2 = 20
				KGDsput2 = 1
				KGDexp2 = 0
				gt $curloc
				exit
			end
			if KGDsput3 = 0:
				$KGDname3 = 'Маг'
				KGDlvl3 = 1
				KGDHP3 = 60
				KGDdam3 = 20
				KGDsput3 = 1
				KGDexp3 = 0
				gt $curloc
				exit
			end
			if KGDsput4 = 0:
				$KGDname4 = 'Маг'
				KGDlvl4 = 1
				KGDHP4 = 60
				KGDdam4 = 20
				KGDsput4 = 1
				KGDexp4 = 0
				gt $curloc
				exit
			end
			if KGDsput5 = 0:
				$KGDname5 = 'Маг'
				KGDlvl5 = 1
				KGDHP5 = 60
				KGDdam5 = 20
				KGDsput5 = 1
				KGDexp5 = 0
				gt $curloc
				exit
			end
			if KGDsput6 = 0:
				$KGDname6 = 'Маг'
				KGDlvl6 = 1
				KGDHP6 = 60
				KGDdam6 = 20
				KGDsput6 = 1
				KGDexp6 = 0
				gt $curloc
				exit
			end
		end
		act 'Лучник':
			if KGDsput2 = 0:
				$KGDname2 = 'Лучник'
				KGDlvl2 = 1
				KGDHP2 = 80
				KGDdam2 = 15
				KGDsput2 = 1
				KGDexp2 = 0
				gt $curloc
				exit
			end
			if KGDsput3 = 0:
				$KGDname3 = 'Лучник'
				KGDlvl3 = 1
				KGDHP3 = 80
				KGDdam3 = 15
				KGDsput3 = 1
				KGDexp3 = 0
				gt $curloc
				exit
			end
			if KGDsput4 = 0:
				$KGDname4 = 'Лучник'
				KGDlvl4 = 1
				KGDHP4 = 80
				KGDdam4 = 15
				KGDsput4 = 1
				KGDexp4 = 0
				gt $curloc
				exit
			end
			if KGDsput5 = 0:
				$KGDname5 = 'Лучник'
				KGDlvl5 = 1
				KGDHP5 = 80
				KGDdam5 = 15
				KGDsput5 = 1
				KGDexp5 = 0
				gt $curloc
				exit
			end
			if KGDsput6 = 0:
				$KGDname6 = 'Лучник'
				KGDlvl6 = 1
				KGDHP6 = 80
				KGDdam6 = 15
				KGDsput6 = 1
				KGDexp6 = 0
				gt $curloc
				exit
			end
		end
		act 'Жрец':
			if KGDsput2 = 0:
				$KGDname2 = 'Жрец'
				KGDlvl2 = 1
				KGDHP2 = 40
				KGDdam2 = 20
				KGDsput2 = 1
				KGDexp2 = 0
				gt $curloc
				exit
			end
			if KGDsput3 = 0:
				$KGDname3 = 'Жрец'
				KGDlvl3 = 1
				KGDHP3 = 40
				KGDdam3 = 20
				KGDsput3 = 1
				KGDexp3 = 0
				gt $curloc
				exit
			end
			if KGDsput4 = 0:
				$KGDname4 = 'Жрец'
				KGDlvl4 = 1
				KGDHP4 = 40
				KGDdam4 = 20
				KGDsput4 = 1
				KGDexp4 = 0
				gt $curloc
				exit
			end
			if KGDsput5 = 0:
				$KGDname5 = 'Жрец'
				KGDlvl5 = 1
				KGDHP5 = 40
				KGDdam5 = 20
				KGDsput5 = 1
				KGDexp5 = 0
				gt $curloc
				exit
			end
			if KGDsput6 = 0:
				$KGDname6 = 'Жрец'
				KGDlvl6 = 1
				KGDHP6 = 40
				KGDdam6 = 20
				KGDsput6 = 1
				KGDexp6 = 0
				gt $curloc
				exit
			end
		end
	end
end

act 'Выйти из игры':gt'Komp','start'
--- KGDgame ---------------------------------

