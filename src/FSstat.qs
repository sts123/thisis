# FSstat
FSneedExpNextLvl = (FSlvl*10)*FSlvl
FSneedExp = FSneedExpNextLvl-FSexp
if FSneedExp <= 0 and FSlvl > FSlvlr:FSlvlr = FSlvl & FSpoint += 5 & FSlvl += 1 & FSexp = 0

if FSfemin < 45:$FSfemin = 'Мужское'
if FSfemin >= 45 and FSfemin >= 55:$FSfemin = 'Андрогинное'
if FSfemin > 55:$FSfemin = 'Женское'

if FSfigur < 45:$FSfigur = 'Мужская фигура'
if FSfigur >= 45 and FSfigur >= 55:$FSfigur = 'Андрогинная фигура'
if FSfigur > 55:$FSfigur = 'Женская фигура'

if FScolor < 0:FScolor = 0
if FScolor > 5:FScolor = 5
if FScolor = 0:$FScolor = 'Черные волосы' & $FSsherst = 'Черная'
if FScolor = 1:$FScolor = 'Русые волосы' & $FSsherst = 'Бурая'
if FScolor = 2:$FScolor = 'Рыжие волосы' & $FSsherst = 'Рыжая'
if FScolor = 3:$FScolor = 'Светлые волосы' & $FSsherst = 'Светлая'
if FScolor = 4:$FScolor = 'Розовые волосы' & $FSsherst = 'Розовая'
if FScolor = 5:$FScolor = 'Белые волосы' & $FSsherst = 'Белая'

if FSface <= 0:$FSface = '<<$FSfemin>> лицо. <<$FScolor>>'
if FSface = 1:$FSface = '<<$FSfemin>> лицо с кошачьими ушками и носиком. <<$FScolor>>'
if FSface = 2:$FSface = '<<$FSfemin>> лицо с собачьими ушками и носиком. <<$FScolor>>'
if FSface = 3:$FSface = '<<$FSfemin>> лицо с лисьими ушками и носиком. <<$FScolor>>'
if FSface = 4:$FSface = '<<$FSfemin>> лицо с лошадиными ушками и носиком. <<$FScolor>>'
if FSface = 5:$FSface = '<<$FSfemin>> лицо с коровьими ушками и носиком. <<$FScolor>>'
if FSface >= 6:$FSface = '<<$FSfemin>> лицо с ушками и носиком как у ящерицы. <<$FScolor>>'

if FSskin <= 0:$FSskin = 'Нормальная кожа'
if FSskin = 1:$FSskin = '<<$FSsherst>> шерсть на теле'
if FSskin >= 2:$FSskin = 'Чешуя на теле'

if FShvost <= 0:$FShvost = ''
if FShvost = 1:$FShvost = 'Кошачий хвост'
if FShvost = 2:$FShvost = 'Собачий хвост'
if FShvost = 3:$FShvost = 'Лисий хвост'
if FShvost = 4:$FShvost = 'Лошадиный хвост'
if FShvost = 5:$FShvost = 'Коровий хвост'
if FShvost >= 6:$FShvost = 'Хвост рептилии'

if dicktipe <= 0:$dicktipe = 'Нормальный, мужской'
if dicktipe = 1:$dicktipe = 'Конический, покрытый мягкими шипами кошачий'
if dicktipe = 2:$dicktipe = 'Красный, с большим узлом у основания собачий'
if dicktipe = 3:$dicktipe = 'Покрытый грубой, черной кожей бычий'
if dicktipe >= 4:$dicktipe = 'Мощный лошадиный'

if FSdick > 0:$FSdick = '<<$dicktipe>> член длинной <<FSdick>> см.'
if FSdick <= 0:$FSdick = ''

if FSvagina > 0:$FSvagina = 'Между ног у вас находится вагина.'
if FSvagina <= 0:$FSvagina = ''

if FStits = 1:$FStitrazm = 'размера АА'
if FStits = 2:$FStitrazm = 'размера А'
if FStits = 3:$FStitrazm = 'размера В'
if FStits = 4:$FStitrazm = 'размера С'
if FStits = 5:$FStitrazm = 'размера D'
if FStits = 6:$FStitrazm = 'размера E'
if FStits = 7:$FStitrazm = 'размера F'
if FStits > 8:$FStitrazm = 'размера F+'

if FStits > 0 and FStitsLine = 0:$FStits = 'Женские груди <<$FStitrazm>>'
if FStits > 0 and FStitsLine = 1:$FStits = 'Две пары женских грудей <<$FStitrazm>>'
if FStits > 0 and FStitsLine >= 2:$FStits = 'Три пары женских грудей <<$FStitrazm>>'

if FSpers = 0:$FSpers = 'У вас нет персонажа'
if FSpers > 0:$FSpers = '<<$FSname>>. <<$FSface>> <<$FSfigur>> <<$FStits>> <<$FSskin>> <<$FShvost>> <<$FSdick>> <<$FSvagina>>

Уровень <<FSlvl>>, опыт <<FSexp>>, необходимо до следующего уровня <<FSneedExp>> опыта
Жизнь <<FSHP>>
Сила <<FSstren>>
Скорость <<FSspeed>>
Уклонение <<FSagil>>
Инициатива <<FSreakt>>
Выносливость <<FSvital>>'

if FShour >= 24:
	FShour -= 24
	FSday += 1

	if FSsup = 0:
		FSHP -= 10
	else
		FSsup -= 1
	end
end

if FSHP > 100:FSHP = 100

'<a href="exec:GT ''FSstart''">Выйти из игры</a>'
'День <<FSday>>, час <<FShour>>'
'<<FSgem>> монет. Еды хватит на <<FSsup>> дней'
''

$FSatk = {
	KGOLzas = RAND(FSagilV/4,FSagilV)
	KGOLataka = RAND(FSspeed/2,FSspeed*2)

	if KGOLataka >= KGOLzas:
		if KGOLataka >= KGOLzas*2:
			KGHPnpow = RAND(FSstren/2,FSstren)+ RAND(FSweaponDam/2,FSweaponDam)
			FSHPV -= KGHPnpow

			'<font color = green>КРИТ <<KGHPnpow>></font>'
		else
			KGHPnpow = RAND(FSstren/4,FSstren/2)+ RAND(FSweaponDam/4,FSweaponDam/2)
			KGHPntpow = KGHPnpow-FSbronaV
			if KGHPntpow <= 0:KGHPntpow = 1
			FSHPV -= KGHPnpow

			'<font color = blue>Попадание <<KGHPnpow>></font>'
		end
	else
		'<font color = red><<$FSnameV>> увернулся от вашей атаки</font>'
	end
}

$FSatkV = {
	KGOLzas = RAND(FSagil/4,FSagil)
	KGOLataka = RAND(FSspeedV/2,FSspeedV*2)

	if KGOLataka >= KGOLzas:
		if KGOLataka >= KGOLzas*2:
			KGHPnpow = RAND(FSstrenV/2,FSstrenV)+ RAND(FSweaponDamV/2,FSweaponDamV)
			FSHP -= KGHPnpow

			'<font color = red>КРИТ <<KGHPnpow>></font>'
		else
			KGHPnpow = RAND(FSstrenV/4,FSstrenV/2)+ RAND(FSweaponDamV/4,FSweaponDamV/2)
			KGHPntpow = KGHPnpow-FSbrona
			if KGHPntpow <= 0:KGHPntpow = 1
			FSHP -= KGHPnpow

			'<font color = brown>Попадание <<KGHPnpow>></font>'
		end
	else
		'<font color = green>Вы увернулись от атаки</font>'
	end
}
--- FSstat ---------------------------------

