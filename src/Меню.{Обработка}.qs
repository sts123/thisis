# Меню.{Обработка}
ARGS[0] = otg_Menu_Compliance[ARGS[0]-1]
!----------
if ARGS[0] = 0: exit
!----------
$ARGS[0] = dyneval("$Result = $<<$otg_Menu_Current>>_Параметры['<<ARGS[0]>>_Ф']")
$ARGS[1] = dyneval("$Result = $<<$otg_Menu_Current>>_Параметры['<<ARGS[0]>>_М']")
!----------
dynamic "
	if $ARGS[1] <> '' or ($ARGS[0] <> '' and LOC $ARGS[0]):
		<<$otg_Menu_Current>>_Время = MSECSCOUNT-<<$otg_Menu_Current>>_Время
		otg_Menu_Time = <<$otg_Menu_Current>>_Время
		<<$otg_Menu_Current>>_Выбрали = -1
		<<$otg_Menu_Current>>_ВыбранныйПункт = <<ARGS[0]>>
		!----------
		$ARGS[3] = $<<$otg_Menu_Current>>_МодулиСобытий['при выборе пункта']
		if $ARGS[3] <> '': dynamic $ARGS[3],$<<$otg_Menu_Current>>_Параметры['<<ARGS[0]>>_З']"+dyneval("$Result = $<<$otg_Menu_Current>>_Параметры['<<ARGS[0]>>_П']")+"
		!----------
		if $ARGS[1] <> '':
			dynamic $ARGS[1]"+dyneval("$Result = $<<$otg_Menu_Current>>_Параметры['<<ARGS[0]>>_П']")+"
		else
			GS $ARGS[0]"+dyneval("$Result = $<<$otg_Menu_Current>>_Параметры['<<ARGS[0]>>_П']")+"
		end
	else
		MSG 'Локация ''<<$ARGS[0]>>'' не найдена!'
end
",$ARGS[0],$ARGS[1]
--- Меню.{Обработка} ---------------------------------

