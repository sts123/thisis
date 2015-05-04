# korrPar
$metkaM = $ARGS[0]
$locM = $CURLOC
$metka = $ARGS[0]
$loc = $CURLOC

clr
popolaini = 0
saunaYouRoom = 0
boycherdaksex = 0
frost = 0
minut += 1
bonusZ = 0
gs'stat'

FColor = RGB(0,0,0)
BColor = RGB(255,255,255)
LColor = RGB(106,90,205)

if hour ! 18 and blockBedrPar = 1:blockBedrPar = 0

if blockBedrPar = 0 and sisboyday + 1 = day and hour = 18 and (sisboyQW = 3 or sisboyQW = 5 or sisboyQW = 7):
	act 'Идти в вашу комнату':
		gt'sisterQW','sisboyQW_bedroom'
	end
elseif blockBedrPar = 0:
	act 'Идти в вашу комнату':
		gt'bedrPar'
	end
end

act 'Идти в комнату родителей':
	gt'bedrPar2'
end

act 'Идти в зал':
	gt'sitrPar'
end

act 'Идти в ванную':
	gt'vanrPar'
end

act 'Идти на кухню':
	gt'kuhrPar'
end

act '<b>Идти на улицу</b>':
	if nude = 0:
		gt'gorodok'
	else
		msg'Вы не одеты'
		gt $curloc
	end
end

'<center><b><font color = maroon>Коридор</font></b></center>'
'<center><img src="images/qwest/alter/korrPar.jpg"></center>'
'На стене возле входной двери висит <a href="exec:GT ''mirror'',''start''">зеркало</a>.'
if palto > 0:'На крючке висит <<$palto>>'

gs'family'

if hour >= 16 and hour <= 20 and indorf = 0:
	if artomvbrosvid = 1 and artomhakday ! daystart and mothervideotalk = 0:
		cls
		BJvideoPublic = 1
		manna = 0
		gs'stat'

		'<center><b><font color = maroon>Мама</font></b></center>'
		'<center><img src="images/qwest/alter/mother.jpg"></center>'
		'Мама подперла бока руками "Мне тут подкинули видео с тобой...я...никогда не порола тебя...да видать напрасно... Ты понимаешь что возможно это видео есть не только у меня? Что о тебе теперь будут говорить...да что о тебе...о всей нашей семье... Наверное нужно преподать тебе урок. Володя!"'

		if momslut < 2:
			act 'Умолять ничего не делать':
				cls
				mothervideotalk = 2
				minut += 5
				sub += 50
				gs'stat'

				'<center><b><font color = maroon>Мама</font></b></center>'
				'<center><img src="images/qwest/alter/mother.jpg"></center>'
				'Вы разревелись:"Мамочка! Прости! Это никогда не повторится! Я дура что допустила это я больше никогда, никогда..." Вы рыдаете и становитесь на колени. Мать смотрит на вас качает головой и уходит.'

				act 'Отойти':gt $curloc
			end
			act 'Молчать':
				cls
				mothervideotalk = 3
				minut += 5
				dom += 10
				spank += 1
				gs'stat'

				'<center><img src="images/qwest/alter/artom/spank.jpg"></center>'
				'Вы стоите уставившись в пол. А что тут можно сказать?'
				'Мать берет вас за руку и ведет в комнату: "Снимай трусы и нагнись!" Вы отрицательно качаете головой. "Володя – держи ее!" Отчим хватает вас и держит. Мать стягивает с вас нижнее белье берет ремень и начинает пороть вас. Сжав зубы вы выдерживаете экзекуцию не проронив ни слова. Подняв голову вы видите как через незакрытую дверь за всем этим наблюдают ваши брат и сестра.'

				act 'Отойти':gt $curloc
			end
		elseif momslut >= 2:
			act 'Угрожать':
				cls
				mothervideotalk = 1
				minut += 5
				gs'stat'

				'<center><b><font color = maroon>Мама</font></b></center>'
				'<center><img src="images/qwest/alter/mother.jpg"></center>'
				'"Ну давай -давай - зови отца! Я расскажу какая у него дочь! И в кого пошла!"'
				'Мать смотрит на вас и плюнув в пол уходит.'

				act 'Отойти':gt $curloc
			end
		end

		exit
	end

	if schoolprogul > 2 and SchoolAtestat = 0:
		cls
		gs'stat'

		'<center><b><font color = maroon>Мама</font></b></center>'
		'<center><img src="images/qwest/alter/mother.jpg"></center>'

		if schoolPredupr = 2:
			schoolPredupr = 3
			SchoolBlock = 1
			ParHomeBlock = 1
			schoolprogul = 0

			'В коридоре вас встречает мать, ее глаза метают громы и молнии. "Допрыгалась? Тебя выгнали из школы. Все, живи как хочешь, я тебе больше не мать!" Мать собрала ваши вещи в сумку, сунула вам сумку в руки и за шкирку выкинула из квартиры.'

			act 'Уйти':gt'gorodok'

			exit
		elseif schoolPredupr = 1:
			schoolPredupr = 2
			schoolprogul = 0
			Suspeh -= 40

			'В коридоре вас встречает мать, ее глаза метают громы и молнии. "Звонили из школы. У тебя опять прогулы. Тебя хотели уже исключить из школы, я буквально на коленях умоляла директора не исключать тебя и дать тебе последний шанс исправиться. Больше я из за тебя унижаться не буду, так и запомни. В следующий раз ты вылетишь из школы! И если ты вылетишь из школы, я тебя лично из дома вышвырну, если ты не понимаешь нормального отношения, тогда проваливай, никто тебя тут не держит!" Мать в гневе ушла в комнату.'
		elseif schoolPredupr = 0:
			schoolPredupr = 1
			mother = 0
			schoolprogul = 0
			Suspeh -= 20

			'В коридоре вас встречает мать, ее глаза метают громы и молнии. "Звонили из школы. У тебя сплошные прогулы. На первый раз тебя простили, но в следующий тебя точно выгонят. Ты что творишь, балбеска?" Мать в гневе ушла в комнату.'
		end

		act 'Отойти':gt $curloc

		exit
	end
end

if hour >= 15 and hour < 20:
	if Gcall = 0:
		numnpcboy = 0
		:markboyfrendcall
		numnpcboy += 1

		if otnBoyFrend[numnpcboy] >= 20 and boyinday[numnpcboy] ! day:
			Gcall = 1
			jump'markboyfrendcall2'
		end

		if numboyFrend > numnpcboy:jump'markboyfrendcall'
	end
else
	if Gcall > 0:Gcall = 0
end

:markboyfrendcall2
if Gcall > 0:'В прихожей звенит <a href="exec:GT ''gtelefon''">телефон</a>.'
if motherWorry = 1:gt'mother'
--- korrPar ---------------------------------

