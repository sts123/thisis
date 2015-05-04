# FSstart
minut += 1
nosave = 1
gs'stat'

'<center><b>Альбида</b></center>'
'.'
'<b>Ваш действующий персонаж</b>'
'<<$FSpers>>'

if FSpers = 1:act 'Загрузить сохраненную игру':gt'KGZgame'

act 'Играть в новую игру':
	cls
	FSfemin = 0
	FSfigur = 0
	FScolor = 0
	FSface = 0
	FSskin = 0
	FShvost = 0
	dicktipe = 0
	FSdick = 18
	FSvagina = 0
	FStits = 0
	FStitsLine = 0
	FSpers = 1
	FSday = 0
	FShour = 8
	FSsup = 1
	FSplace = 0
	FSgem = 0
	FSmedkit = 0

	FSlvl = 1
	FSexp = 0
	FSstren = 10
	FSspeed = 10
	FSagil = 10
	FSreakt = 10
	FSvital = 10
	FSHP = FSvital*10

	FSbrona = 0
	FSweaponDam = 0

	$FSname = input("введите игровой ник")
	if $FSname <= 0:$FSname = 'Игрок'
	'Имя персонажа <<$FSname>>'

	act 'Играть':gt'FSgame'
end

act 'Выйти':nosave = 0 & gt'Komp','start'
--- FSstart ---------------------------------

