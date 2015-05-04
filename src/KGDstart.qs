# KGDstart
'<center><b>Дисопль</b></center>'
''

if KGDsave > 0:act 'Загрузить сохраненную игру':gt'KGDgame'

act 'Играть в новую игру':
	KGDsave = 1
	KGDmoney = 1000
	KGDHP = 100
	KGDlvl = 1
	KGDexp = 0
	KGDdam = 10
	KGDkarta = 5
	KGDsput2 = 0
	KGDsput3 = 0
	KGDsput4 = 0
	KGDsput5 = 0
	KGDsput6 = 0
	KGDday = 1
	KGDfarm = 0
	KGDlvlr = 0
	KGDlvlr2 = 0
	KGDlvlr3 = 0
	KGDlvlr4 = 0
	KGDlvlr5 = 0
	KGDlvlr6 = 0
	KGDpartyCreate = 0
	gt'KGDgame'
end

act 'Выйти':gt'Komp','start'
--- KGDstart ---------------------------------

