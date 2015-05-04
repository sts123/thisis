# Menu.AddEvent
if $ARGS[0] = '' or $ARGS[1] = '': exit
!----------
$ARGS[1] = lcase(trim($ARGS[1]))
!----------
if $ARGS[1] = 'при выборе пункта':
	dynamic "$otg_Меню_<<$ARGS[0]>>_МодулиСобытий['<<$ARGS[1]>>'] = '<<replace($ARGS[2],'''','''''')>>'"
elseif $ARGS[1] = 'после обработки выбора':
	dynamic "$otg_Меню_<<$ARGS[0]>>_МодулиСобытий['<<$ARGS[1]>>'] = '<<replace($ARGS[2],'''','''''')>>'"
elseif $ARGS[1] = 'при отказе от выбора':
	dynamic "$otg_Меню_<<$ARGS[0]>>_МодулиСобытий['<<$ARGS[1]>>'] = '<<replace($ARGS[2],'''','''''')>>'"
end
--- Menu.AddEvent ---------------------------------

