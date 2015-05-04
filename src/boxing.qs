# boxing
!Выбор физической атаки
if weapon = 0:
	act 'Ударить кулаком':
		cla
		!gs'atak'
		xgt'atak','player'
	end
end

if weapon > 0:
	if weaponTipe = 1:$weap = 'мечем'
	if weaponTipe = 2:$weap = 'булавой'
	if weaponTipe = 3:$weap = 'секирой'

	act 'Ударить <<$weap>>':
		cla
		!gs'atak'
		xgt'atak','player'
	end
end

if kunai > 0:
	'У вас <<kunai>> метательных ножей.'

	act 'Метнуть нож':
		cla
		knife = input ("Сколько метнуть ножей?")
		if knife > kunai:
			knife = kunai
			kunai = 0
		elseif knife <= kunai:
			kunai = kunai - knife
		end

		'<font color = green>Вы метнули <<knife>> ножей.</font>'

		xgt'atak','player'
	end
end

if magik > 0:
	act 'Магическая атака':gt'magik'
end
--- boxing ---------------------------------

