# Menu.AddModule
if $ARGS[0] = '' or $ARGS[1] = '': exit
!----------
ARGS[10] = dyneval("Result = arrsize('otg_Меню_<<$ARGS[0]>>')")
if dyneval("$Result = $otg_Меню_<<$ARGS[0]>>[<<ARGS[10]>>-1]") = '-:-': exit
!----------
dynamic "
	$otg_Меню_<<$ARGS[0]>>_Параметры['<<ARGS[10]>>_М'] = '<<replace($ARGS[1],'''','''''')>>'
"
--- Menu.AddModule ---------------------------------

