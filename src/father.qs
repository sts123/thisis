# father
fatherAge = age+30
gs'stat'

'<center><b><font color = maroon>Отчим Владимир Михайлович Скрябин</font></b></center>'
'<center><img src="images/qwest/alter/father.jpg"></center>'
'Ваш отчим седой и немного обрюзгший мужик работающий водителем. Ему <<fatherAge>> лет. Ваша мать развелась с вашим отцом и вышла замуж за Владимира Михайловича когда вам был один год. Вашего настоящего отца вы не помните и никогда не видели.'

if father < 20:'У вас с отчимом скандал.'
if father >= 20 and father < 40:'У вас с отчимом напряженные отношения.'
if father >= 40 and father < 60:'У вас с отчимом нормальные отношения.'
if father >= 60 and father < 80:'У вас с отчимом хорошие отношения.'
if father >= 80:'У вас с отчимом отличные отношения.'

act 'Отойти':gt $locM, $metkaM
act 'Просить денег':
	cls
	minut += 5
	gs'stat'

	'<center><b><font color = maroon>Отчим Владимир Михайлович Скрябин</font></b></center>'
	'<center><img src="images/qwest/alter/father.jpg"></center>'
	'Вы попросили у отчима денег, он покачал головой. "Я всю зарплату матери приношу, вот иди и у нее спрашивай."'

	act 'Отойти':gt $loc, $metka
end
act 'Спросить про его и маму':
	cls
	minut += 5
	gs'stat'

	'<center><b><font color = maroon>Отчим Владимир Михайлович Скрябин</font></b></center>'
	'<center><img src="images/qwest/alter/father.jpg"></center>'
	'Вы спросили у отчима как он познакомился с мамой. Отчим почесал начинающую лысеть голову и ответил. "Я тогда таксистом работал. Подвозил как то Наташу, твою маму. Она еще тогда совсем соплюшкой была, но уже успела выйти за муж за одноклассника и родить вас с Аней. Вашего отца я не знал, видел только пару раз. Знаю что его зовут Михаил Кузнецов. Он уехал куда то, в другой город."'

	act 'Отойти':gt $loc, $metka
end
act 'Спросить про его работу':
	cls
	minut += 5
	gs'stat'

	'<center><b><font color = maroon>Отчим Владимир Михайлович Скрябин</font></b></center>'
	'<center><img src="images/qwest/alter/father.jpg"></center>'
	'Вы спросили у отчима про его работу. Отчим потянулся хрустя суставами. "Раньше таксерил. Сейчас надоело. И опасно и старею. Купил Газель и сейчас я на грузовичке продукты развожу торгашам. Сама знаешь, у меня два гаража, в одном наша Волга стоит, в другом я Газель держу."'

	act 'Отойти':gt $loc, $metka
end
if motherKnowSpravka = 1:
	cla
	father = 0
	motherKnowSpravka = 2

	'Отчим гневно подошел к вам "Ах ты блядь! Не успела с горшка слезть, а уже пизду кому то подвернула! Принесешь в подоле, кто воспитывать будет?"'

	act 'Отойти':gt $loc, $metka
end

if alko > 0 and alkoday ! day:
	alkoday = day
	father -= 1

	'Отчим принюхался "Света, от тебя спиртным пахнет! что за безобразие? Ты еще слишком молода, что бы пить!"'
end

if TorgVokzalTimes > 0 and YouCanGar = 0:
	act 'Просить разрешения хранить в гараже товар':
		cls
		minut += 5
		gs'stat'

		'<center><b><font color = maroon>Отчим Владимир Михайлович Скрябин</font></b></center>'
		'<center><img src="images/qwest/alter/father.jpg"></center>'
		'Вы попросили отчима разрешения хранить в гараже товар.'

		if father+dom >= 80:
			YouCanGar = 1

			'Отчим поколебавшись все же разрешил вам использовать его гараж для хранения товара на продажу.'
		else
			'Отчим отрицательно покачал головой "Нет Света. У меня и так там мало места."'
		end

		act 'Отойти':gt $loc, $metka
	end
end
--- father ---------------------------------

