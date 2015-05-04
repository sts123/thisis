# BnameGen
bnrand = RAND(0,15)
if bnrand = 0:$bname = 'Саша' & $bnamefull = 'Александр'
if bnrand = 1:$bname = 'Леша' & $bnamefull = 'Алексей'
if bnrand = 2:$bname = 'Коля' & $bnamefull = 'Николай'
if bnrand = 3:$bname = 'Петя' & $bnamefull = 'Петр'
if bnrand = 4:$bname = 'Вася' & $bnamefull = 'Василий'
if bnrand = 5:$bname = 'Гоша' & $bnamefull = 'Игорь'
if bnrand = 6:$bname = 'Миша' & $bnamefull = 'Михаил'
if bnrand = 7:$bname = 'Дэн' & $bnamefull = 'Денис'
if bnrand = 8:$bname = 'Паша' & $bnamefull = 'Павел'
if bnrand = 9:$bname = 'Гена' & $bnamefull = 'Геннадий'
if bnrand = 10:$bname = 'Дима' & $bnamefull = 'Дмитрий'
if bnrand = 11:$bname = 'Славик' & $bnamefull = 'Вячесла'
if bnrand = 12:$bname = 'Виталик' & $bnamefull = 'Виталий'
if bnrand = 13:$bname = 'Валера' & $bnamefull = 'Валерий'
if bnrand = 14:$bname = 'Ваня' & $bnamefull = 'Иван'
if bnrand = 15:$bname = 'Серега' & $bnamefull = 'Сергей'

:markodinname
bnrand = RAND(0,15)
if bnrand = 0:$bname2 = 'Саша'
if bnrand = 1:$bname2 = 'Леша'
if bnrand = 2:$bname2 = 'Коля'
if bnrand = 3:$bname2 = 'Петя'
if bnrand = 4:$bname2 = 'Вася'
if bnrand = 5:$bname2 = 'Гоша'
if bnrand = 6:$bname2 = 'Миша'
if bnrand = 7:$bname2 = 'Дэн'
if bnrand = 8:$bname2 = 'Паша'
if bnrand = 9:$bname2 = 'Гена'
if bnrand = 10:$bname2 = 'Дима'
if bnrand = 11:$bname2 = 'Славик'
if bnrand = 12:$bname2 = 'Виталик'
if bnrand = 13:$bname2 = 'Валера'
if bnrand = 14:$bname2 = 'Ваня'
if bnrand = 15:$bname2 = 'Серега'

if $bname = $bname2:jump'markodinname'

:markodinnamesec
bnrand = RAND(0,15)
if bnrand = 0:$bname3 = 'Саша'
if bnrand = 1:$bname3 = 'Леша'
if bnrand = 2:$bname3 = 'Коля'
if bnrand = 3:$bname3 = 'Петя'
if bnrand = 4:$bname3 = 'Вася'
if bnrand = 5:$bname3 = 'Гоша'
if bnrand = 6:$bname3 = 'Миша'
if bnrand = 7:$bname3 = 'Дэн'
if bnrand = 8:$bname3 = 'Паша'
if bnrand = 9:$bname3 = 'Гена'
if bnrand = 10:$bname3 = 'Дима'
if bnrand = 11:$bname3 = 'Славик'
if bnrand = 12:$bname3 = 'Виталик'
if bnrand = 13:$bname3 = 'Валера'
if bnrand = 14:$bname3 = 'Ваня'
if bnrand = 15:$bname3 = 'Серега'

if $bname = $bname3 or $bname2 = $bname3:jump'markodinnamesec'

raspredickrand = RAND(0,10)
if raspredickrand = 0:
	dick = RAND(8,13)
elseif raspredickrand = 10:
	dick = RAND(18,25)
else
	dick = RAND(13,17)
end

silavag = RAND(0,2)
--- BnameGen ---------------------------------

