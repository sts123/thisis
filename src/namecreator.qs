# namecreator
$so[1] = 'А'
$so[2] = 'Е'
$so[3] = 'И'
$so[4] = 'О'
$so[5] = 'У'
$so[6] = 'Э'
$so[7] = 'Ю'
$so[8] = 'Я'

$sol[1] = 'а'
$sol[2] = 'е'
$sol[3] = 'и'
$sol[4] = 'о'
$sol[5] = 'у'
$sol[6] = 'э'
$sol[7] = 'ю'
$sol[8] = 'я'

$wo[1] = 'Б'
$wo[2] = 'В'
$wo[3] = 'Г'
$wo[4] = 'Д'
$wo[5] = 'Ж'
$wo[6] = 'З'
$wo[7] = 'К'
$wo[8] = 'Л'
$wo[9] = 'М'
$wo[10] = 'Н'
$wo[11] = 'П'
$wo[12] = 'Р'
$wo[13] = 'С'
$wo[14] = 'Т'
$wo[15] = 'Ф'
$wo[16] = 'Х'

$wol[1] = 'б'
$wol[2] = 'в'
$wol[3] = 'г'
$wol[4] = 'д'
$wol[5] = 'ж'
$wol[6] = 'з'
$wol[7] = 'к'
$wol[8] = 'л'
$wol[9] = 'м'
$wol[10] = 'н'
$wol[11] = 'п'
$wol[12] = 'р'
$wol[13] = 'с'
$wol[14] = 'т'
$wol[15] = 'ф'
$wol[16] = 'х'

FirstWord = 0
$nikname[i] = ''
tiprand = (0,1)

if tiprand = 0:
	if FirstWord = 0:
		wordrand = RAND(1,16)
		$nikname[i] += $wo[wordrand]
	end
elseif tiprand = 1:
	if FirstWord = 0:
		wordrand = RAND(1,8)
		$nikname[i] += $so[wordrand]
	end
end
--- namecreator ---------------------------------

