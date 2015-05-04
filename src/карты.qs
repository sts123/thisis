# карты
clr
minut = minut + 10
gs'stat'

'<right><img src="images/casino/zalcart.jpg"></right>'
'В зале много свободных столов для игр в Блекджек и Casino Wars.'

act 'К столу игры в Блек Джек':
	gt'блдж'
end
act 'К столу игры в Casino War':
	gt'казвар'
end
act 'Вернуться в холл':
	gt'холл'
end

!СИМВОЛЫ
! ♥
! ♠
! ♦
! ♣

!КОЛОДА КАРТ
$suit[1] = 'пик'
$symbol[1] = '♠'
$suit[2] = 'треф'
$symbol[2] = '♣'
$suit[3] = 'червей'
$symbol[3] = '♥'
$suit[4] = 'бубен'
$symbol[4] = '♦'

$number[1] = 'Туз '
points[1] = 11
$number[2] = 'Двойка '
points[2] = 2
$number[3] = 'Тройка '
points[3] = 3
$number[4] = 'Четверка '
points[4] = 4
$number[5] = 'Пятерка '
points[5] = 5
$number[6] = 'Шестерка '
points[6] = 6
$number[7] = 'Семерка '
points[7] = 7
$number[8] = 'Восьмерка '
points[8] = 8
$number[9] = 'Девятка '
points[9] = 9
$number[10] = 'Десятка '
points[10] = 10
$number[11] = 'Валет '
points[11] = 10
$number[12] = 'Дама '
points[12] = 10
$number[13] = 'Король '
points[13] = 10
$number[14] = 'Туз '
points[14] = 11
--- карты ---------------------------------

