# gtelefon
boyinday[numnpcboy] = day
Gcall = 0
minut += 3
gs'stat'

'Вы берете телефонную трубку "Алло."'

if boyvstre[numnpcboy] > 0:
	'Мужской голос в трубке говорит "Привет Светик это я, <<$nameBoyfrend[numnpcboy]>>, давай сходим куда нибудь погулять."'
elseif boyvstre[numnpcboy] = 0:
	'В трубке мужской голос говорит "Здравствуйте. Можно Свету?"'
	'Вы отвечаете собеседнику, что вы и есть Света. Незнакомец обрадовался "Я <<$nameBoyfrend[numnpcboy]>>, мы с тобой на дискотеке познакомились. Помнишь? Давай сходим погулять."'
end

act 'Я сегодня занята':
	cls
	minut += 3
	if boyvstre[numnpcboy] = 0:otnBoyFrend[numnpcboy] -= 10
	if boyvstre[numnpcboy] > 0:otnBoyFrend[numnpcboy] -= 5
	gs'stat'

	''

	if otnBoyFrend[numnpcboy] > 20:
		!otnBoyFrend[numnpcboy] = 0
		'<<$nameBoyfrend[numnpcboy]>> расстроился. "Ну тогда как нибудь в следующий раз."'
	elseif otnBoyFrend[numnpcboy] <= 20:
		otnBoyFrend[numnpcboy] = 0
		'<<$nameBoyfrend[numnpcboy]>> разозлился. "Ну и пошла ты тогда на хуй." И бросил трубку.'
	end

	act 'Положить трубку':gt'korrPar'
end

if GvstreBoy = 0:
	act 'Давай встретимся в сквере':
		cls
		minut += 3
		GvstreBoy = 1
		GvstreBoyAfter[numnpcboy] = 1
		SkverBoy = numnpcboy
		gs'stat'

		'Вы предложили встретится в сквере.'

		act 'Положить трубку':gt'korrPar'
	end
end
--- gtelefon ---------------------------------

