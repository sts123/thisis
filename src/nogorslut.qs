# nogorslut
if GorSlut <= 0:
	bonusotnG = vnesh/2
	if bonusotnG <= 0:bonusotnG = 1
	grupNPC[numnpc] += bonusotnG
	talkmarkeronce = 0

	if grupNPC[numnpc] < 20 and talkmarkeronce = 0:
		talkmarkeronce = 1

		'Вы болтаете о всякой ерунде и <<$npcName[numnpc]>> слушает вас в пол уха.'
	elseif grupNPC[numnpc] < 80 and grupNPC[numnpc] >= 20 and talkmarkeronce = 0:
		talkmarkeronce = 2

		'Вы болтаете о всякой ерунде и <<$npcName[numnpc]>> охотно поддакивает вам.'
	elseif grupNPC[numnpc] >= 80 and talkmarkeronce = 0:
		talkmarkeronce = 3

		'Вы болтаете о всякое ерунде и <<$npcName[numnpc]>> с улыбкой общается с вами, тоже рассказывая всякие истории.'

		if numnpc = 1:
			Mud = totminut+60
			!крутой Дима Носов

			if DimaRudeQW > 0 and DimaRudeBlock = 0:
				'Дима смотрит на вас отрешенным взглядом "После школы пойдем ко мне. Я тебя подожду возле входа."'
			end
		elseif numnpc = 2:
			!ботан Артем Чеботарев
			''
		elseif numnpc = 3:
			Mud = totminut+60
			!спортик Иван Прохоров
			if IvanShowerQW = 1:
				IvanShowerQW = 2

				'Иван улыбается "Свет, извини за произошедшее в душе. Просто решил похулиганить, ничего такого."'
			elseif IvanShowerQW = 10:
				IvanShowerQW = 11
				manna = 0
				Mud = 0

				'Иван задумывается "Свет, я хотел бы поговорить на счет произошедшего в душевой. Ты классная девчонка и все было супер, но я не готов к отношениям, мне сейчас нужно усиленно заниматься спортом, что бы попасть на чемпионат России. Я не могу отвлекаться на девушек, даже таких привлекательных как ты. Поэтому, давай просто забудем о произошедшем и останемся друзьями."'
			end
		elseif numnpc = 4:
			!игорь круглов
			''
		elseif numnpc = 5:
			!федор козлов
			''
		elseif numnpc = 6:
			!петя клюев
			''
		elseif numnpc = 7:
			!лешка царев
			''
		elseif numnpc = 8:
			!святослав воинов
			''
		elseif numnpc = 9:
			!Витек Котов
			''
		elseif numnpc = 10:
			!гопник Дэн Рыжов
			''
		elseif numnpc = 11:
			!гопник Васян Шульгин
			''
		elseif numnpc = 12:
			!юля милова
			''
		elseif numnpc = 13:
			!лариска груздева
			''
		elseif numnpc = 14:
			!Катя Мейнольд
			''
			if KatjaOTN > 0:KatjaHorny += 10 & 'Катя слегка краснеет и отводит от вас глаза.'
		elseif numnpc = 15:
			!Вика Мейнольд
			''
		elseif numnpc = 16:
			!наташа белова
			''
		elseif numnpc = 17:
			!инна девятова
			''
		elseif numnpc = 18:
			!кристина зверева
			if kristinaSex = 0 and swinbeggor = 0 and kristinaSex = 0:
				''
			elseif kristinaSex = 0 and swinbeggor > 0 and kristinaSex = 0:
				grupNPC[numnpc] = 20
				'Кристина с ненавистью смотрит на вас. "Ты сучка уже надоела под ногами у меня болтаться!"'
			elseif kristinaSex > 0:
				''
			end
		elseif numnpc = 19:
			!лина старова
			''
		elseif numnpc = 20:
			!лена котова
			''
		elseif numnpc = 21:
			!лера царева
			''
		elseif numnpc = 22:
			!бэлла артамонова
			''
		elseif numnpc = 23:
			!Альбина Барловская
			''
		elseif numnpc = 24:
			!полина себаготулина
			''
		elseif numnpc = 25:
			!соня иванько
			''
		end
	end
end
--- nogorslut ---------------------------------

