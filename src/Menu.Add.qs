# Menu.Add
if $ARGS[0] = '' or $ARGS[1] = '':exit
!----------
if $ARGS[1] = '---' or lcase($ARGS[1]) = 'разделитель':
	dynamic "$otg_Меню_<<$ARGS[0]>>[]='-:-'"
	exit
end
!----------
ARGS[10] = arrsize('ARGS')
if ARGS[10] < 3: $ARGS[2] = ''
if ARGS[10] < 4: $ARGS[3] = ''
!----------
$ARGS[0] = 'otg_Меню_<<$ARGS[0]>>'
$ARGS[1] = replace($ARGS[1],'''','''''')
if $ARGS[2] <> '':$ARGS[2] = ':'+replace($ARGS[2],'''','''''')
if $ARGS[3] <> '':$ARGS[3] = replace($ARGS[3],'''','''''')
!----------
dynamic "
	$<<$ARGS[0]>>[]='<<$ARGS[1]>>:Меню.{Обработка}<<$ARGS[2]>>'
	$<<$ARGS[0]>>_Параметры[str(arrsize('<<$ARGS[0]>>'))+'_З']='<<$ARGS[1]>>'
	$<<$ARGS[0]>>_Параметры[str(arrsize('<<$ARGS[0]>>'))+'_Ф']='<<$ARGS[3]>>'
"
!----------
$ARGS[3] = ''
if ARGS[10] > 4:
	ARGS[11] = 4
	:otg_меню_метка_1
	if ARGS[11] < ARGS[10]:
		if $ARGS[ARGS[11]] <> '':
			$ARGS[3] += ','''+replace($ARGS[ARGS[11]],'''','''''')+''''
		else
			if ARGS[ARGS[11]] <> 0:
				$ARGS[3] += ','+str(ARGS[ARGS[11]])
			else
				$ARGS[3] += ','''''
			end
		end
		ARGS[11] += 1
		jump 'otg_меню_метка_1'
	end
end
!----------
dynamic "
$<<$ARGS[0]>>_Параметры[str(arrsize('<<$ARGS[0]>>'))+'_П'] = '<<replace($ARGS[3],'''','''''')>>'
"
--- Menu.Add ---------------------------------

