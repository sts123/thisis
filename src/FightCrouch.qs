# FightCrouch
!rMin -= 1
gs'fightStat'
stoper = 0

'<center><img src="images/pic/fight/cro.jpg"></center>'

if crouch = 1:
	enrand = RAND(0,1)
	if enrand = 0:$text = '<<$nameE>> прижимется к полу'
	if enrand = 1:$text = '<<$nameE>> пытается перевернутся на спину'
	if enrand = 2:$text = '<<$nameE>> пытается провести контр бросок'

	'<<$nameE>> стоит на четвереньках перед вами.'

	act 'Произвести бросок':
		cls
		endur -= 2

		'Вы пытаетесь провести бросок. <<$text>>'

		if enrand = 0:
			pointE += 1

			'<center><img src="images/pic/fight/cron.jpg"></center>'
			'Противница успела прижаться к полу и вам не удается выполнить бросок.'

			act '...':gt'fightfw'
		elseif enrand = 1:
			point += 2
			endurE -= 1

			'<center><img src="images/pic/fight/crob.jpg"></center>'
			'Вы перехватили попытку соперницы перевернутся и выполнили бросок.'

			act '...':gt'fight1'
		end
	end
	act 'Сделать попытку удержания':
		cls
		endur -= 1

		'Вы пытаетесь провести удержание. <<$text>>'

		if enrand = 0:
			point += 1

			'<center><img src="images/pic/fight/crou.jpg"></center>'
			'Противница прижимается к полу и вам легко удается ее зафиксировать.'

			act '...':gt'fight2'
		elseif enrand = 1:
			pointE += 1
			endurE -= 1

			'<center><img src="images/pic/fight/cronu.jpg"></center>'
			'Противница переворачивается на спину не двавая вам провести удержание.'

			act '...':gt'fight3'
		elseif enrand = 2:
			''
		end
	end
else
	enrand = RAND(0,1)
	if enrand = 0:$text = '<<$nameE>> пытается провести бросок'
	if enrand = 1:$text = '<<$nameE>> пытается сделать попытку удержания'

	'Вы стоите на четвереньках перед соперницей.'

	act 'Прижаться к полу':
		cls
		'Вы прижимаетесь к полу. <<$text>>'

		if enrand = 0:
			point += 1
			endurE -= 2

			'<center><img src="images/pic/fight/cron.jpg"></center>'
			'Противница не успевает выполнить бросок.'

			act '...':gt'fightE'
		elseif enrand = 1:
			pointE += 1
			endurE -= 1

			'<center><img src="images/pic/fight/crou.jpg"></center>'
			'Противница успешно проводит удержание.'

			act '...':gt'fightE1'
		end
	end
	act 'Перевернуться на спину':
		cls
		endur -= 1

		'Вы пытаетесь перевернутся на спину. <<$text>>'

		if enrand = 0:
			pointE += 2
			endurE -= 2

			'<center><img src="images/pic/fight/crob.jpg"></center>'
			'Противница легко перехватывает вас и проводит бросок.'

			act '...':gt'fightE2'
		elseif enrand = 1:
			point += 1
			endurE -= 1

			'<center><img src="images/pic/fight/cronu.jpg"></center>'
			'Вы вырываетесь из захвата противницы и переворачиваетесь на спину.'

			act '...':gt'fightE3'
		end
	end
end
--- FightCrouch ---------------------------------

