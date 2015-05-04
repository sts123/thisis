# Menu.Call
if $ARGS[0] = '': exit
!----------
ARGS[10] = arrsize('otg_Меню_<<$ARGS[0]>>')
if ARGS[10] = 0: exit
!----------
$otg_Menu_Current = 'otg_Меню_<<$ARGS[0]>>'
killvar 'otg_Меню_Вызываемое'
killvar 'otg_Menu_Compliance'
!----------
ARGS[11] = 0
:otg_меню_метка_2
if ARGS[11] < ARGS[10]:
	dynamic "
		$ARGS[0] = $<<$otg_Menu_Current>>_Параметры['<<ARGS[11]+1>>_У']
		if $ARGS[0] = '':
			$otg_Меню_Вызываемое[] = $<<$otg_Menu_Current>>[<<ARGS[11]>>]
			otg_Menu_Compliance[] = <<ARGS[11]+1>>
		else
			if dyneval($ARGS[0])<>0:
				$otg_Меню_Вызываемое[] = $<<$otg_Menu_Current>>[<<ARGS[11]>>]
				otg_Menu_Compliance[] = <<ARGS[11]+1>>
			end
		end
	"
	ARGS[11] += 1
	!----------
	jump 'otg_меню_метка_2'
end
!----------
otg_Menu_Time = 0
dynamic "
	<<$otg_Menu_Current>>_Выбрали = 0
	<<$otg_Menu_Current>>_ВыбранныйПункт = 0
	<<$otg_Menu_Current>>_Время = MSECSCOUNT
"
!----------
menu 'otg_Меню_Вызываемое'
!----------
dynamic "
	if <<$otg_Menu_Current>>_Выбрали = 0:
		<<$otg_Menu_Current>>_Время = MSECSCOUNT-<<$otg_Menu_Current>>_Время
		$ARGS[0] = $<<$otg_Menu_Current>>_МодулиСобытий['при отказе от выбора']
		if $ARGS[0]<>'': dynamic $ARGS[0]
	else
		$ARGS[0] = $<<$otg_Menu_Current>>_МодулиСобытий['после обработки выбора']
		if $ARGS[0]<>'': dynamic $ARGS[0],$<<$otg_Menu_Current>>_Параметры[str(<<$otg_Menu_Current>>_ВыбранныйПункт)+'_З']"+dyneval("$Result = $<<$otg_Menu_Current>>_Параметры[str(<<$otg_Menu_Current>>_ВыбранныйПункт)+'_П']")+"
	end
"
!----------
killvar 'otg_Меню_Текущее'
killvar 'otg_Меню_Вызываемое'
killvar 'otg_Menu_Compliance'
!----------
Result = dyneval("Result = otg_Меню_<<$ARGS[0]>>_Выбрали")
--- Menu.Call ---------------------------------

