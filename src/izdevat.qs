# izdevat
if grupTipe[numnpc] = -1 and GorSlut < 2:
	act 'Издеваться':
		cls
		grupNPC[numnpc] -= 5
		dom += 1
		gs'stat'

		'Вы издевались над школьным изгоем чувствуя за собой силу и поддержку одноклассников.'

		if $loc ! 'gdkin':dynamic $din_sekondparturok
		if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
	end
elseif grupTipe[numnpc] = -1 and GorSlut >= 2:
	act 'Издеваться':
		cls
		sub += 1
		gs'stat'

		'Вы начали издеваться, но <<$npcName[numnpc]>> ответил вам. "Рот закрой хуесоска, кончей воняет." Все присутствующие начали смеяться над вами. Вы смутились и не зная что ответить, что то начали бормотать.'

		if $loc ! 'gdkin':dynamic $din_sekondparturok
		if $loc = 'gdkin':act 'Отойти':gt $loc, $metka
	end
end
--- izdevat ---------------------------------

