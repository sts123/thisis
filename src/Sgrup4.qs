# Sgrup4
gs'stat'

'Гопники'

$textgrup = ''
i = 0
:markgruploop
i += 1

if grupTipe[i] = 4:$textgrup += '
'+$npcGo[i]

if i < 26:jump'markgruploop'

'<<$textgrup>>'

dynamic $din_sekondparturok
--- Sgrup4 ---------------------------------

