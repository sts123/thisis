# boy
!'<<$boy>> <<$boybody>> <<$boybod>> <<$boyface>>.<<$boy>> <<$boyClo>>'

!Рандомные мужские имена (русские)
boynamerand = RAND(1,38)
if boynamerand = 1:$boy = 'Александр'
if boynamerand = 2:$boy = 'Алексей'
if boynamerand = 3:$boy = 'Альберт'
if boynamerand = 4:$boy = 'Анатолий'
if boynamerand = 5:$boy = 'Антон'
if boynamerand = 6:$boy = 'Аркадий'
if boynamerand = 7:$boy = 'Андрей'
if boynamerand = 8:$boy = 'Борис'
if boynamerand = 9:$boy = 'Вадим'
if boynamerand = 10:$boy = 'Валентин'
if boynamerand = 11:$boy = 'Валерий'
if boynamerand = 12:$boy = 'Василий'
if boynamerand = 13:$boy = 'Виктор'
if boynamerand = 14:$boy = 'Виталий'
if boynamerand = 15:$boy = 'Владимир'
if boynamerand = 16:$boy = 'Вячеслав'
if boynamerand = 17:$boy = 'Геннадий'
if boynamerand = 18:$boy = 'Георгий'
if boynamerand = 19:$boy = 'Григорий'
if boynamerand = 20:$boy = 'Денис'
if boynamerand = 21:$boy = 'Евгений'
if boynamerand = 22:$boy = 'Егор'
if boynamerand = 23:$boy = 'Иван'
if boynamerand = 24:$boy = 'Игорь'
if boynamerand = 25:$boy = 'Кирилл'
if boynamerand = 26:$boy = 'Леонид'
if boynamerand = 27:$boy = 'Максим'
if boynamerand = 28:$boy = 'Михаил'
if boynamerand = 29:$boy = 'Олег'
if boynamerand = 30:$boy = 'Павел'
if boynamerand = 31:$boy = 'Петр'
if boynamerand = 32:$boy = 'Семен'
if boynamerand = 33:$boy = 'Сергей'
if boynamerand = 34:$boy = 'Степан'
if boynamerand = 35:$boy = 'Федор'
if boynamerand = 36:$boy = 'Эдуард'
if boynamerand = 37:$boy = 'Юрий'
if boynamerand = 38:$boy = 'Яков'
$namev = $boy

!Внешность
boybodyrand = RAND(1,3)
if boybodyrand = 1:$boybody = 'высокий'
if boybodyrand = 2:$boybody = 'среднего роста'
if boybodyrand = 3:$boybody = 'небольшой'

boybodrand = RAND(1,4)
if boybodrand = 1:$boybod = 'худощавый'
if boybodrand = 2:$boybod = 'атлетичный'
if boybodrand = 3:$boybod = 'коренастый'
if boybodrand = 4:$boybod = 'полный'

boyfacerand = RAND(1,3)
if boyfacerand = 1:$boyface = 'брюнет'
if boyfacerand = 2:$boyface = 'шатен'
if boyfacerand = 3:$boyface = 'блондин'

!размер елды
grdikrand = RAND(0,100)
if grdikrand < 80:
	dick = RAND(12,18)
elseif grdikrand >= 80 and grdikrand < 90:
	dick = RAND(8,12)
elseif grdikrand >= 90:
	dick = RAND(18,25)
end

! половая сила
silaVag = RAND(0,2)
!переменная отвечающая за guy
boyonce = 0

!Переменные отвечающие за то какие черты нравятся
!Обеспеченность, отвечает за деньги и требования
harakBoy = RAND(0,2)

finance = RAND(0,2)
if finance = 0:
	!нищий гопник или работяга
	!проверка по внешности Первичная
	if harakBoy = 0:vneshBoy = RAND(0,2)
	if harakBoy = 1:vneshBoy = RAND(0,4)
	if harakBoy = 2:vneshBoy = RAND(0,8)

	$boyClo = 'одет в мешковатый спортивный костюм.'
elseif finance = 1:
	!середняк
	!проверка по внешности
	if harakBoy = 0:vneshBoy = RAND(0,4)
	if harakBoy = 1:vneshBoy = RAND(0,6)
	if harakBoy = 2:vneshBoy = RAND(0,8)

	$boyClo = 'одет в джинсы и свитер.'
elseif finance = 2:
	!середняк
	!проверка по внешности
	if harakBoy = 0:vneshBoy = RAND(4,8)
	if harakBoy = 1:vneshBoy = RAND(6,8)
	if harakBoy = 2:vneshBoy = RAND(8,10)

	$boyClo = 'одет в дорогой костюм.'
end

!требования по фигуре, размеру груди, цвет волос.
!0 - зад меньше 80, 1 зад от 80 до 100, 2 зад свыше 100
figurBoy = RAND(0,2)
!0 - грудь меньше 3, 1 грудь 3-4, 2 грудь больше 4
titBoy = RAND(0,2)
!0 - брюнетка, 1 - шатенка, 2 - рыжая, 3 - блондинка
haerBoy = RAND(0,3)
!характер 0 - мягкий, 1 -норма 2 - агрессор

randizvrat = RAND(0,100)
if randizvrat < 80:izvrat = 0
if randizvrat >= 80:izvrat = 1
--- boy ---------------------------------

