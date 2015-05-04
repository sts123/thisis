# резул
cla
clr
minut = minut + 5
gs'stat'

!x_rul = 100
x_rul = RAND(0,36)

if x_rul = 0:
	$color = ' '
else
	if x_rul = 1 or x_rul = 3 or x_rul = 5 or x_rul = 7 or x_rul = 9 or x_rul = 12 or x_rul = 14 or x_rul = 16 or x_rul = 18 or x_rul = 19 or x_rul = 21 or x_rul = 23 or x_rul = 25 or x_rul = 27 or x_rul = 30 or x_rul = 32 or x_rul = 34 or x_rul = 36:
		$color = 'красное'
	else
		$color = 'черное'
	end
end

'<right><img src="images/casino/resul.jpg"></right>'
''
'Шарик остановился на отметке <<x_rul>> <<$color>>'

if кч ! 0:
	if кч = 1:
		if x_rul = 1 or x_rul = 3 or x_rul = 5 or x_rul = 7 or x_rul = 9 or x_rul = 12 or x_rul = 14 or x_rul = 16 or x_rul = 18 or x_rul = 19 or x_rul = 21 or x_rul = 23 or x_rul = 25 or x_rul = 27 or x_rul = 30 or x_rul = 32 or x_rul = 34 or x_rul = 36:
			act 'Вы выиграли <<2*st_1>>':
				money = money+2*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	elseif кч = 2:
		if x_rul = 2 or x_rul = 4 or x_rul = 6 or x_rul = 8 or x_rul = 10 or x_rul = 11 or x_rul = 13 or x_rul = 15 or x_rul = 17 or x_rul = 20 or x_rul = 22 or x_rul = 24 or x_rul = 26 or x_rul = 28 or x_rul = 29 or x_rul = 31 or x_rul = 33 or x_rul = 35:
			act 'Вы выиграли <<2*st_1>>':
				money = money+2*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	end
elseif чнч ! 0:
	if чнч = 1:
		чнч = 0

		if x_rul mod 2 = 0:
			act 'Вы выиграли <<2*st_1>>':
				money = money+2*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	elseif чнч = 2:
		чнч = 0

		if x_rul mod 2 = 1:
			act 'Вы выиграли <<2*st_1>>':
				money = money+2*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	end
elseif мб ! 0:
	if мб = 1:
		мб = 0

		if x_rul > 0 and x_rul < 19:
			act 'Вы выиграли <<2*st_1>>':
				money = money+2*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	elseif мб = 2:
		мб = 0

		if x_rul > 18 and x_rul < 37:
			act 'Вы выиграли <<2*st_1>>':
				money = money+2*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	end
elseif дю ! 0:
	if дю = 1:
		дю = 0

		if x_rul > 0 and x_rul < 13:
			act 'Вы выиграли <<3*st_1>>':
				money = money+3*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	elseif дю = 2:
		дю = 0

		if x_rul > 12 and x_rul < 25:
			act 'Вы выиграли <<3*st_1>>':
				money = money+3*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	elseif дю = 3:
		дю = 0

		if x_rul > 24 and x_rul < 37:
			act 'Вы выиграли <<3*st_1>>':
				money = money+3*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	end
elseif ряд ! 0:
	if ряд = 1:
		ряд = 0

		if x_rul = 1 or x_rul = 4 or x_rul = 7 or x_rul = 10 or x_rul = 13 or x_rul = 16 or x_rul = 19 or x_rul = 22 or x_rul = 25 or x_rul = 28 or x_rul = 31 or x_rul = 34:
			act 'Вы выиграли <<3*st_1>>':
				money = money+3*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	elseif ряд = 2:
		ряд = 0

		if x_rul = 2 or x_rul = 3 or x_rul = 8 or x_rul = 11 or x_rul = 14 or x_rul = 17 or x_rul = 20 or x_rul = 23 or x_rul = 26 or x_rul = 29 or x_rul = 32 or x_rul = 35:
			act 'Вы выиграли <<3*st_1>>':
				money = money+3*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	elseif ряд = 3:
		ряд = 0

		if x_rul = 3 or x_rul = 4 or x_rul = 9 or x_rul = 12 or x_rul = 15 or x_rul = 18 or x_rul = 21 or x_rul = 24 or x_rul = 27 or x_rul = 30 or x_rul = 33 or x_rul = 36:
			act 'Вы выиграли <<3*st_1>>':
				money = money+3*st_1
				gt'амрул'
			end
		else
			act 'Вы проиграли':
				gt'амрул'
			end
		end
	end
elseif чи ! 100:
	if чи = x_rul:
		act 'Вы выиграли <<37*st_1>>':
			money = money+37*st_1
			gt'амрул'
		end
	else
		act 'Вы проиграли':
			gt'амрул'
		end
	end
end
--- резул ---------------------------------

