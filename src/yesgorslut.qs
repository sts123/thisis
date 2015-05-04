# yesgorslut
if GorSlut > 0:
	if grupTipe[numnpc] = -1:
		!изгои
		bonusotnG = vnesh/2
		if bonusotnG <= 0:bonusotnG = 1
		grupNPC[numnpc] += bonusotnG

		if npcPol[numnpc] = 0:
			!парень
			'Вы болтаете о всякой ерунде и <<$npcName[numnpc]>> охотно поддакивает вам.'
		elseif npcPol[numnpc] > 0:
			!девушка
			'Вы болтаете о всякой ерунде и <<$npcName[numnpc]>> охотно поддакивает вам.'
		end
	elseif grupTipe[numnpc] = 0:
		!норма
		if npcPol[numnpc] = 0:
			!парень
			'Вы пытаетесь поговорить с парнем, но <<$npcName[numnpc]>> с отсутствующим выражением лица смотрит на вас.'
		elseif npcPol[numnpc] > 0:
			!девушка
			'Вы пытаетесь поговорить с девушкой, но <<$npcName[numnpc]>> отворачивается и не хочет с вами общаться. "Уйди! А то еще подумают, что мы подруги."'
		end
	elseif grupTipe[numnpc] = 1:
		!ботаны
		if npcPol[numnpc] = 0:
			!парень
			'Вы пытаетесь поговорить с парнем, но <<$npcName[numnpc]>> пялится вам на сиськи. И посмеивается.'
		elseif npcPol[numnpc] > 0:
			!девушка
			'Вы пытаетесь поговорить с девушкой, но <<$npcName[numnpc]>> отворачивается и не хочет с вами общаться.'
		end
	elseif grupTipe[numnpc] = 2:
		!спортики
		if numnpc = 18:
			!кристина зверева
			if kristinaSex = 0 and swinbeggor = 0:
				'Вы пытаетесь заговорить с девушкой, но <<$npcName[numnpc]>> делает брезгливую гримасу "Уйди отсюда <<$gnikname>>!"'
			elseif kristinaSex = 0 and swinbeggor > 0:
				'Кристина с ненавистью смотрит на вас. "Ты поганая шлюха уже задолбала крутиться у меня под ногами!"'
			elseif kristinaSex > 0:
				'Кристина улыбается вам и тихо говорит "Не плохо мы в прошлый раз развлеклись, ты такая сексуальная, что просто закачаешся."'
			end
		elseif npcPol[numnpc] = 0:
			!парень
			'Вы пытаетесь заговорить с парнем, но <<$npcName[numnpc]>> отмахивается от вас. "Я сейчас занят."'
		elseif npcPol[numnpc] > 0 and numnpc ! 18:
			!девушка
			'Вы пытаетесь заговорить с девушкой, но <<$npcName[numnpc]>> делает брезгливую гримасу "Уйди отсюда <<$gnikname>>!"'
		end
	elseif grupTipe[numnpc] = 3:
		!крутые
		if numnpc ! 14:
			if npcPol[numnpc] = 0:
				!парень
				'Вы пытаетесь заговорить с парнем, но <<$npcName[numnpc]>> отмахивается от вас. "Слушай, я сейчас занят. Давай попозже или вообще никогда."'
			elseif npcPol[numnpc] > 0:
				!девушка
				if AlbFrend >= 1 and numnpc = 23:
					'<<$npcName[numnpc]>> с улыбкой общается с вами.'
				else
					'Вы пытаетесь заговорить с девушкой, но <<$npcName[numnpc]>> делает брезгливую гримасу "Уйди отсюда!"'
				end
			end
		elseif numnpc = 14:
			!Катя Мейнольд
			'Вы болтаете с Катей и она весь ваш разговор сводит к слухам о вас и вашей репутации. Поговаривают, что вы <<$gnikname>>.'
		end
	elseif grupTipe[numnpc] = 4:
		!гопники
		if npcPol[numnpc] = 0:
			!парень
			if numnpc = 9:
				!Котов
				'Вы пытаетесь поговорить с Витьком, но он отвечает вам "Слыш! Отвали."'
			elseif numnpc ! 9:
				'<<$npcName[numnpc]>> смеется над вами "Ха ха <<$gnikname>> пришла. Еще хуйца хочется?"'
			end
		elseif npcPol[numnpc] > 0:
			!девушка
			'<<$npcName[numnpc]>> корчит брезгливое лицо "Фу, <<$gnikname>>. Отвали тварь!"'
		end
	end
end
--- yesgorslut ---------------------------------

