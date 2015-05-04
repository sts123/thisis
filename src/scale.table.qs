# scale.table
!'
"Отрисовка шкалы с помощью таблицы:"
$func ('scale.table',275,420)+' 275/420'
$func ('scale.table',400,420)+' 400/420'
$func ('scale.table',420,420)+' 420/420'
$func ('scale.table',157,420)+' 157/420'
$func ('scale.table',42,420)+' 42/420'
$func ('scale.table',0,420)+' 0/420'
'

! -----scale.table------

ARGS[0] = ARGS[0] & ! текущее значение параметра
ARGS[1] = ARGS[1] & ! максимальное значение параметра

if ARGS[2] = 0: ARGS[2] = 200 & ! ширина шкалы (таблицы) в пикселях. По умолчанию 350 px
if $ARGS[3]="": $ARGS[3]="FF0000" & ! цвет заполненной части шкалы в формате RRGGBB. По умолчанию - красный

$ARGS['table'] = '<TABLE width = <<ARGS[2]>> border = 0 cellspacing = 0 cellpadding = 0><TR>'
ARGS['x'] = (ARGS[0] * 100) / ARGS[1]
ARGS['empty'] = 100 - ARGS['x']

if ARGS['x'] > 0:
	$ARGS['table'] += "<TD width = <<ARGS['x']>>% bgcolor = #"+$ARGS[3]+"> & nbsp;</TD>"
elseif ARGS['empty'] > 0:
	$ARGS['table'] += "<TD width = <<ARGS['empty']>>% bgcolor = #888888> & nbsp;</TD>"
end

$ARGS['table'] += '</TR></TABLE>'
$result = $ARGS['table']
--- scale.table ---------------------------------

