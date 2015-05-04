# Snpc
!'
$npcName[numnpc] = ''
$npcSurName[numnpc] = ''
$npcText[numnpc] = ''
grupNPC[numnpc] =
npcPol[numnpc]
grupTipe[numnpc]
'

gs'dinnpc'
gs'stat'

'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
'<<$npcText[numnpc]>>'

if grupTipe[numnpc] = -1:'<<$npcName[numnpc]>> относится к группе отверженных.'
if grupTipe[numnpc] = 0:''
if grupTipe[numnpc] = 1:'<<$npcName[numnpc]>> относится к группе ботаников.'
if grupTipe[numnpc] = 2:'<<$npcName[numnpc]>> относится к группе спортиков.'
if grupTipe[numnpc] = 3:'<<$npcName[numnpc]>> относится к группе крутых.'
if grupTipe[numnpc] = 4:'<<$npcName[numnpc]>> относится к группе гопников.'

if grupNPC[numnpc] < 20:'У вас плохие отношения.'
if grupNPC[numnpc] >= 20 and grupNPC[numnpc] < 40:'У вас напряженные отношения.'
if grupNPC[numnpc] >= 40 and grupNPC[numnpc] < 60:'У вас нормальные отношения.'
if grupNPC[numnpc] >= 60 and grupNPC[numnpc] < 80:'У вас хорошие отношения.'
if grupNPC[numnpc] >= 80:'У вас отличные отношения.'

if numnpc = 14 and KatjaOTN > 0:
	if KatjaHorny < 20:'катя выглядит спокойной и безучастной.'
	if KatjaHorny >= 20 and KatjaHorny < 40:'У Кати в глазах прыгают веселые искорки.'
	if KatjaHorny >= 40 and KatjaHorny < 60:'У Кати легкий румянец на щеках и она озорно смотрит на вас.'
	if KatjaHorny >= 60 and KatjaHorny < 80:'Катя покраснела и томно смотрит на вас.'
	if KatjaHorny >= 80:'Катя вся красная как вареный рак и ее грудь вздымается от глубокого дыхания.'
	'KatjaLust - <<KatjaLust>>'
	'KatjaSlut - <<KatjaSlut>>'
	'KatjaDom - <<KatjaDom>>'
	'KatjaMastr - <<KatjaMastr>>'
end

''
''

!act 'Отойти':gt $locM, $metkaM

gs'cumreaction'
gs'izdevat'
gs'krutishi'

if numnpc = 23 and albinaQWdance > 0 and AlbinaBlokDance = 0 and ZvezdEnd = 0:
	'Альбина легко улыбается вам "Света, ты хорошо справляешься на тренировке, не забывай на нее приходить."'
	if GorSlut > 0:'Кстати, о тебе ходят отвратительные слухи.'
end

if AlbFrend = 1 and numnpc = 23:
	AlbFrend = 2
	grupNPC[numnpc] = 100

	'Альбина улыбается вам "Спасибо Света, правильно говорят, друзья познаются в беде. Ты меня очень выручила предупредив о Звездушках, к сожалению придется закрыть наш коллектив, что бы не нарваться на неприятности."'
elseif AlbFather = 2 and numnpc = 23 and AlbEnemy = 0:
	grupNPC[numnpc] = 0
	AlbEnemy = 1

	'Альбина злобно сверкнула глазами "Ах ты сука! Заяву на меня вздумала написать. Ну ты еще пожалеешь об этом."'
end

if numnpc = 9:gs'kotovtalker'

!!!!!!!!!!!!
!!!ГОПОТА!!!
!!!!!!!!!!!!
if grupTipe[numnpc] = 4:
	if $loc = 'gdkin':
		if GorSlut < 2:
			if numnpc ! 9:
				if npcPol[numnpc] = 0:
					'<<$npcName[numnpc]>> - Эй Светик, давай подбухнем, а то вообще как то стремно.'
				else
					'<<$npcName[numnpc]>> - Эй Светик, давай подбухнем, а то вообще как то стремно.'
				end

				act 'Пить пиво':
					cls
					minut += 5
					grupNPC[numnpc] += 5
					alko += 1
					salo += 1
					fat += 2
					energy += 10
					gs'stat'

					'Вы попили пивка в компании знакомых.'

					act 'Отойти':gt $loc, $metka
				end

				act 'Отказаться':grupNPC[numnpc] -= 5 & gt $loc, $metka
			end
		elseif GorSlut >= 2:
			if npcPol[numnpc] = 0:
				'<<$npcName[numnpc]>> - Чо приперлась, вафлерша. Хуйца хочешь соснуть что ли?'
			else
				'<<$npcName[numnpc]>> - Слыш хуесоска, съеби отсюда. С тобой рядом стоять то стремно.'
			end

			act 'Уйти':grupNPC[numnpc] -= 5 & gt $loc, $metka
		end

		exit
	end
end

act 'Болтать':
	cls
	if $loc = 'gdkin':minut += 5
	gs'stat'

	'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
	'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'

	if numnpc = 1 and grupNPC[numnpc] = 0:
		'Дима презрительно фыркает. "Отвали от меня прыщавая свинья."'

		if $loc ! 'gdkin':dynamic $din_sekondparturok
		if $loc = 'gdkin':act 'Отойти':gt $loc, $metka

		exit
	end

	gs'nogorslut'
	gs'yesgorslut'

	if $loc ! 'gdkin':dynamic $din_sekondparturok
	if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
end

!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!АРТЕМ ЧЕБОТАРЕВ БОТАН!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!
if numnpc = 2:
	if dom > 0 and artomLernQW = 0:
		act 'Ты не мог бы немного подтянуть меня по учебе?':
			cls
			if $loc = 'gdkin':minut += 5
			grupNPC[numnpc] += 5
			sub += 1
			if GorSlut < 3:artomLernQW = 1
			gs'stat'

			'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
			'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
			if GorSlut < 3:'Вы подошли к Артему и попросили его помочь вам по учебе. Артем немного удивился и ответил вам "Ну ладно. Пойдем после уроков ко мне домой, позанимаемся."'
			if GorSlut >= 3:'Вы подошли к Артему и попросили его помочь вам по учебе. Артем возмутился "Вот еще, стану я тратить свою время на такую как ты, нет конечно и можешь больше ко мне не подходить."'

			if $loc ! 'gdkin':dynamic $din_sekondparturok
			if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
		end
	end
end

!!!!!!!!!!!!!!!!!!!!!!
!!!ЮЛЯ МИЛОВА БОТАН!!!
!!!!!!!!!!!!!!!!!!!!!!
if numnpc = 12:
	if dom > 0 and JuliaMilLernQW = 0 and grupNPC[numnpc] >= 80:
		act 'Ты не могла бы немного подтянуть меня по учебе?':
			cls
			if $loc = 'gdkin':minut += 5
			grupNPC[numnpc] += 5
			sub += 1
			JuliaMilLernQW = 1
			gs'stat'

			'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
			'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
			if GorSlut < 1:'Вы подошли к Юле и попросили немного подтянуть вас по учебе, она немного подумав согласилась.'
			if GorSlut >= 1:'Вы подошли к Юле и попросили немного подтянуть вас по учебе, она возмущенно фыркнула, ну уж нет, а то подумают еще, что мы подруги.'

			if $loc ! 'gdkin':dynamic $din_sekondparturok
			if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
		end
	end
end

!!!!!!!!!!!!!!!!!!!
!!!КАТЯ МЕЙНОЛЬД!!!
!!!!!!!!!!!!!!!!!!!
if numnpc = 14 and meynoldQW = 1:
	act 'Поблагодарить за то, что увела вас с дискотеки':
		cls
		if $loc = 'gdkin':minut += 5
		grupNPC[numnpc] += 5
		meynoldQW = 2
		gs'stat'

		'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
		'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
		'Вы подошли к Кате и поблагодарили ее за то, что она увела вас с дискотеки домой, когда вы перебрали. Катя улыбнулась вам. "Не за что, только ты так не напивайся. Пьянство может плохо кончиться."'

		if $loc ! 'gdkin':dynamic $din_sekondparturok
		if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
	end
end

if numnpc = 14 and meynoldQW > 1 and mop <= 1:
	'Катя смотрит на вас с улыбкой "Света, давай я тебе хоть глаза подкрашу."'

	act 'Косметика':
		cls
		hapri = 1
		if $loc = 'gdkin':minut += 5
		gs'stat'

		'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
		'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
		'Катя быстренько поправила ваши волосы и спросила. "Тебе как? Немного подкрасить, обычно или лопатой накидать?"'

		act 'Легкий макияж':
			cla
			mop = 2

			'Катя легонечко подвела вам глаза и немного подкрасила губы.'
			if KatjaOTN > 0:KatjaHorny += 10 & 'Катя слегка краснеет и отводит от вас глаза.'

			if $loc ! 'gdkin':dynamic $din_sekondparturok
			if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
		end
		act 'Нормальный макияж':
			cla
			mop = 3

			'Катя накрасила вам губы, подвела глаза и наложила тени.'
			if KatjaOTN > 0:KatjaHorny += 10 & 'Катя слегка краснеет и отводит от вас глаза.'

			if $loc ! 'gdkin':dynamic $din_sekondparturok
			if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
		end
		act 'Яркий макияж':
			cla
			mop = 4

			'Катя накрасила вам губы яркой помадой, густо накрасила глаза и ресницы, подвела брови и наложила густые тени.'
			if KatjaOTN > 0:KatjaHorny += 10 & 'Катя слегка краснеет и отводит от вас глаза.'

			if $loc ! 'gdkin':dynamic $din_sekondparturok
			if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
		end
	end
end

if numnpc = 14 and meynoldQW > 1 and mop > 1:
	if $loc ! 'gdkin':
		!в школе
		if KatjaHorny >= 50:
		end
		if KatjaHorny < 50:
		end
	end
	if $loc = 'gdkin':
		!на дискотеке
		if KatjaHorny >= 50:
		end
		if KatjaHorny < 50:
		end
	end
end

!!!!!!!!!!!!!!!!!!!!!!!!!
!!!НАТАША БЕЛОВА БОТАН!!!
!!!!!!!!!!!!!!!!!!!!!!!!!
if numnpc = 16:
	if dom > 0 and NatBelLernQW = 0 and grupNPC[numnpc] >= 80:
		act 'Ты не могла бы немного подтянуть меня по учебе?':
			cls
			if $loc = 'gdkin':minut += 5
			grupNPC[numnpc] += 5
			sub += 1
			NatBelLernQW = 1
			gs'stat'

			'<center><b><font color = maroon><<$npcName[numnpc]>> <<$npcSurName[numnpc]>></font></b></center>'
			'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
			if GorSlut < 1:'Вы подошли к Наташе и попросили немного подтянуть вас по учебе, она немного подумав согласилась.'
			if GorSlut >= 1:'Вы подошли к Наташе и попросили немного подтянуть вас по учебе, она возмущенно фыркнула, ну уж нет, а то подумают еще, что мы подруги.'

			if $loc ! 'gdkin':dynamic $din_sekondparturok
			if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
		end
	end
end

if $loc ! 'gdkin':dynamic $din_sekondparturok
if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
--- Snpc ---------------------------------

