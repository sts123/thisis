# sell_young_clothes
$metka = $ARGS[0]
$loc = $CURLOC
$metkaM = $ARGS[0]
$locM = $CURLOC

mag = 1

'<b><center><font size = 4>Женская одежда</font></center></b>'

act 'Уйти':
	minut += 1
	gt'young_shop'
end

if odekis[1] = 0:
	act 'Просмотреть первый вариант одежды':numdres = 1 & payclo = 10000 & gt'loker','odekis'
end
if odekis[2] = 0:
	act 'Просмотреть второй вариант одежды':numdres = 2 & payclo = 10000 & gt'loker','odekis'
end
if odekis[3] = 0:
	act 'Просмотреть третий вариант одежды':numdres = 3 & payclo = 10000 & gt'loker','odekis'
end
if odekis[4] = 0:
	act 'Просмотреть четвертый вариант одежды':numdres = 4 & payclo = 10000 & gt'loker','odekis'
end
if odekis[5] = 0:
	act 'Просмотреть пятый вариант одежды':numdres = 5 & payclo = 10000 & gt'loker','odekis'
end
if odekis[6] = 0:
	act 'Просмотреть шестой вариант одежды':numdres = 6 & payclo = 10000 & gt'loker','odekis'
end
if odekis[7] = 0:
	act 'Просмотреть седьмой вариант одежды':numdres = 7 & payclo = 10000 & gt'loker','odekis'
end
if odekis[8] = 0:
	act 'Просмотреть восьмой вариант одежды':numdres = 8 & payclo = 10000 & gt'loker','odekis'
end
if odekis[9] = 0:
	act 'Просмотреть девятый вариант одежды':numdres = 9 & payclo = 10000 & gt'loker','odekis'
end
if odekis[10] = 0:
	act 'Просмотреть десятый вариант одежды':numdres = 10 & payclo = 10000 & gt'loker','odekis'
end
--- sell_young_clothes ---------------------------------

