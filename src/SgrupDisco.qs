# SgrupDisco
gs'stat'

$textgrup = ''
$textgrup2 = ''
i = 0
:markgruploop
i += 1

if grupTipe[i] = 3:$textgrup += '
'+$npcGo[i]
if grupTipe[i] = 4:$textgrup2 += '
'+$npcGo[i]

if i < 26:jump'markgruploop'

'На танцполе танцуют <<$textgrup>>'
''
'В углу стоят <<$textgrup2>>'

act 'Отойти':gt $loc, $metka
--- SgrupDisco ---------------------------------

