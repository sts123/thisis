# cumreaction
if cumface > 0 or cumfrot > 0:
	grupNPC[numnpc] -= 10
	if GorSlut = 0:GorSlut = 1

	'<<$npcName[numnpc]>> смотрит на вас "А это, что? Да это же сперма! Фу. Ты бы хоть подмылась."'

	if $loc = 'gschool':
		dynamic $din_sekondparturok
	else
		act 'Отойти':gt $loc, $metka
	end

	exit
end

if cumlip > 1:
	grupNPC[numnpc] -= 10
	if GorSlut < 2:GorSlut = 2

	'<<$npcName[numnpc]>> смотрит на вас "Чем это у тебя изо рта пахнет? Фу! Это же спермой несет. Ты бы хоть себя в порядок приводила после отсоса."'

	if $loc = 'gschool':
		dynamic $din_sekondparturok
	else
		act 'Отойти':gt $loc, $metka
	end

	exit
end
--- cumreaction ---------------------------------

