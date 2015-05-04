# Menu.Create
if $ARGS[0] = '':exit
!----------
$ARGS[0] = 'otg_Меню_'+$ARGS[0]
!----------
killvar '<<$ARGS[0]>>'
killvar '<<$ARGS[0]>>_Параметры'
killvar '<<$ARGS[0]>>_Выбрали'
killvar '<<$ARGS[0]>>_ВыбранныйПункт'
killvar '<<$ARGS[0]>>_Время'
killvar '<<$ARGS[0]>>_МодулиСобытий'
--- Menu.Create ---------------------------------

