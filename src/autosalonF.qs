# autosalonF
if $ARGS[0] = 'start':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	minut = minut + 5
	cartraid = 1
	gs'stat'

	'<center><b>Автосалон</b></center>'
	'<center><img src="images/pic/manager.jpg"></center>'
	'Список автомобилей в продаже'
	'<a href="exec:GS ''carF1'',''car''">ВАЗ 2107</a>. - новый, цена 200 тыс.руб'
	'<a href="exec:GS ''carF1'',''car2''">ВАЗ 2115</a>. - новый, цена 310 тыс.руб'
	'<a href="exec:GS ''carF1'',''car3''">ВАЗ 2113</a>. - новый, цена 290 тыс.руб'
	'<a href="exec:GS ''carF1'',''car4''">ВАЗ 2114</a>. - новый, цена 300 тыс.руб'
	'<a href="exec:GS ''carF1'',''car5''">ВАЗ 2110</a>. - новый, цена 350 тыс.руб'
	'<a href="exec:GS ''carF1'',''car6''">ВАЗ КАЛИНА</a>. - новый, цена 400 тыс.руб'
	'<a href="exec:GS ''carF1'',''car7''">ВАЗ ПРИОРА</a>. - новый, цена 450 тыс.руб'
	'<a href="exec:GS ''carF1'',''car8''">НИВА ШЕВРОЛЕ</a>. - новый, цена 500 тыс.руб'
	'<a href="exec:GS ''carF1'',''car9''">УАЗ ХАНТЕР</a>. - новый, цена 500 тыс.руб'
	'<a href="exec:GS ''carF1'',''car10''">УАЗ ПАТРИОТ</a>. - новый, цена 600 тыс.руб'
	'<a href="exec:GS ''carF1'',''car95''">Mitsubishi l200</a>. - новый, цена 1 млн.руб'
	'<a href="exec:GS ''carF1'',''car96''">Audi Q7</a>. - новый, цена 5 млн.руб'
	'<a href="exec:GS ''carF1'',''car97''">Cadillac Escalade</a>. - новый, цена 2 млн.руб'
	'<a href="exec:GS ''carF1'',''car98''">Porsche Cayenne</a>. - новый, цена 5 млн.руб'
	'<a href="exec:GS ''carF1'',''car99''">BMW X6</a>. - новый, цена 4,5 млн.руб'
	'<a href="exec:GS ''carF1'',''car100''">Mercedes-Benz S 600</a>. - новый, цена 8 млн.руб'

	act 'Поговорить с менеджером':gt'autosalonF','manager1'
	act 'Уйти':gt'Nord'
end

if $ARGS[0] = 'manager1':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	*clr
	gs'stat'
	minut = minut + 5

	'<center><b>Автосалон</b></center>'
	'<center><img src="images/pic/manager.jpg"></center>'
	'На счету в банке <<karta>> рублей'
	'Менеджер приветливо улыбается и говорит. Для покупки необходимо иметь права и достаточно наличности на счету в банке, мы не работаем по наличному расчету. Так же нельзя иметь две машины, извините, но это новый, антипробковый закон городской мэрии.'

	act 'Уйти':gt'Nord'

	if prava = 1 and car = 0:
		if karta >= 200000:
			act 'Купить ВАЗ 2107 (200 тыс.руб)':
				cla
				*clr
				karta = karta - 200000
				$car = 'ВАЗ 2107'
				car = 1
				benz = 3
				cardrive = 8
				teh = 200
				tehcar = 200
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 310000:
			act 'Купить ВАЗ 2115 (310 тыс.руб)':
				cla
				*clr
				karta = karta - 310000
				$car = 'ВАЗ 2115'
				car = 2
				benz = 3
				cardrive = 8
				teh = 300
				tehcar = 300
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 290000:
			act 'Купить ВАЗ 2113 (290 тыс.руб)':
				cla
				*clr
				karta = karta - 290000
				$car = 'ВАЗ 2113'
				car = 3
				benz = 3
				cardrive = 8
				teh = 290
				tehcar = 290
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 300000:
			act 'Купить ВАЗ 2114 (300 тыс.руб)':
				cla
				*clr
				karta = karta - 300000
				$car = 'ВАЗ 2114'
				car = 4
				benz = 3
				cardrive = 8
				teh = 300
				tehcar = 300
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 350000:
			act 'Купить ВАЗ 2110 (350 тыс.руб)':
				cla
				*clr
				karta = karta - 350000
				$car = 'ВАЗ 2110'
				car = 5
				benz = 3
				cardrive = 8
				teh = 350
				tehcar = 350
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 400000:
			act 'Купить ВАЗ Калина (400 тыс.руб)':
				cla
				*clr
				karta = karta - 400000
				$car = 'ВАЗ КАЛИНА'
				car = 6
				benz = 3
				cardrive = 8
				teh = 400
				tehcar = 400
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 450000:
			act 'Купить ВАЗ Приора (450 тыс.руб)':
				cla
				*clr
				karta = karta - 450000
				$car = 'ВАЗ ПРИОРА'
				car = 7
				benz = 3
				cardrive = 8
				teh = 450
				tehcar = 450
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 500000:
			act 'Купить Нива Шевроле (500 тыс.руб)':
				cla
				*clr
				karta = karta - 500000
				$car = 'НИВА ШЕВРОЛЕ'
				car = 8
				benz = 3
				cardrive = 8
				teh = 500
				tehcar = 500
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 500000:
			act 'Купить УАЗ Хантер (500 тыс.руб)':
				cla
				*clr
				karta = karta - 500000
				$car = 'УАЗ ХАНТЕР'
				car = 9
				benz = 3
				cardrive = 8
				teh = 300
				tehcar = 300
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 600000:
			act 'Купить УАЗ Патриот (600 тыс.руб)':
				cla
				*clr
				karta = karta - 600000
				$car = 'УАЗ ПАТРИОТ'
				car = 10
				benz = 3
				cardrive = 8
				teh = 400
				tehcar = 400
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 1000000:
			act 'Купить Mitsubishi l200 (1 млн.руб)':
				cla
				*clr
				karta = karta - 1000000
				$car = 'Mitsubishi l200'
				car = 95
				benz = 3
				cardrive = 8
				teh = 2000
				tehcar = 2000
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 5000000:
			act 'Купить Audi Q7 (5 млн.руб)':
				cla
				*clr
				karta = karta - 5000000
				$car = 'Audi Q7'
				car = 96
				benz = 3
				cardrive = 8
				teh = 5000
				tehcar = 5000
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 2000000:
			act 'Купить Cadillac Escalade (2 млн.руб)':
				cla
				*clr
				karta = karta - 2000000
				$car = 'Cadillac Escalade'
				car = 97
				benz = 3
				cardrive = 8
				teh = 4000
				tehcar = 4000
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'autosalonF','manager'
			end
		end

		if karta >= 5000000:
			act 'Купить Porsche Cayenne (5 млн.руб)':
				cla
				*clr
				karta = karta - 5000000
				$car = 'Porsche Cayenne'
				car = 98
				benz = 3
				cardrive = 8
				teh = 3000
				tehcar = 3000
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 4500000:
			act 'Купить BMW X6 (4,5 млн.руб)':
				cla
				*clr
				karta = karta - 4500000
				$car = 'BMW X6'
				car = 99
				benz = 3
				cardrive = 8
				teh = 4000
				tehcar = 4000
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end

		if karta >= 8000000:
			act 'Купить Mercedes-Benz S 600 (8 млн.руб)':
				cla
				*clr
				karta = karta - 8000000
				$car = 'Mercedes-Benz S 600'
				car = 100
				benz = 3
				cardrive = 8
				teh = 8000
				tehcar = 8000
				wrek = 0

				'Вы перечислили деньги и менеджер вам выдала ключи. Она уточнила, что ваша машина уже стоит на улице. Бензина мало и она рекомендует вам заправится.'

				act 'Уйти':gt'Nord'
			end
		end
	end
end
--- autosalonF ---------------------------------

