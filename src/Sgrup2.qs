# Sgrup2
gs'stat'

'Спортики'

$textgrup = ''
i = 0
:markgruploop
i += 1

if grupTipe[i] = 2:$textgrup += '
'+$npcGo[i]

if i < 26:jump'markgruploop'

'<<$textgrup>>'

dynamic $din_sekondparturok
--- Sgrup2 ---------------------------------

