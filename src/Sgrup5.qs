# Sgrup5
gs'stat'

'Изгои'

$textgrup = ''
i = 0
:markgruploop
i += 1

if grupTipe[i] = -1:$textgrup += '
'+$npcGo[i]

if i < 26:jump'markgruploop'

'<<$textgrup>>'

dynamic $din_sekondparturok
--- Sgrup5 ---------------------------------

