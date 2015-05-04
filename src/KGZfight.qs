# KGZfight
minut += 1
gs'stat'
gs'KGZdyn'

if KGZHP <= 0:
	cla
	*clr
	manna -= 100

	'<center><b>GAME OVER</b></center>'

	act 'Выйти из игры':gt'KGZstart'

	exit
end

if KGZdead <= 0:
	cls
	KGZbatl = 1
	manna += 100

	'Все мертвецы затихли на земле.'

	act 'Уйти':gt'KGZgame'

	exit
end

if GZdist < 0:GZdist = 0

!'<a href="exec:GT ''KGZstart''">Выйти из игры</a>'
'Здоровье <<KGZHP>>. День <<KGZday>>, час <<KGZhour>>.'
'Холодное оружие: <<$KGZweapon>>'
if KGZgun > 0:'<<$KGZgun>>'
if KGZgun2 > 0:'<<$KGZgun2>>'
if KGZgun3 > 0:'<<$KGZgun3>>'
'К вам бегут <<KGZdead>> мертвецов. Они на расстоянии <<KGZdist>> метров.'

if KGZdost = 1:
	KGZdead -= 1

	'Винсент стреляет из винтовки.'
	'Один из мертвецов падает с прострелянной головой.'

	if KGZdead <= 0:gt $curloc
end

if KGZgun > 0 and bullet > 0:
	act 'Выстрелить из пистолета':
		cls
		bullet -= 1

		dynamic $KGZgunatk
		dynamic $KGZdeadmanatk

		act 'Далее':gt $curloc
	end
end

if KGZgun2 > 0 and bullet2 > 0:
	act 'Выстрелить из дробовика':
		cls
		bullet2 -= 1

		dynamic $KGZgunatk2
		dynamic $KGZdeadmanatk

		act 'Далее':gt $curloc
	end
end

if KGZgun3 > 0 and bullet3 > 0:
	act 'Выстрелить из автомата (одиночным)':
		cls
		bullet3 -= 1

		dynamic $KGZgunatk3
		dynamic $KGZdeadmanatk

		act 'Далее':gt $curloc
	end

	if bullet3 >= 3:
		act 'Выстрелить из автомата (короткая очередь)':
			cls
			bullet3 -= 3
			KGZbulgun = 3

			dynamic $KGZgunatk4
			dynamic $KGZdeadmanatk

			act 'Далее':gt $curloc
		end
	end

	if bullet3 >= 10:
		act 'Выстрелить из автомата (длинная очередь)':
			cls
			bullet3 -= 10
			KGZbulgun = 10

			dynamic $KGZgunatk5
			dynamic $KGZdeadmanatk

			act 'Далее':gt $curloc
		end
	end
end

if KGZgranade > 0:
	act 'Кинуть гранату':
		cls
		dynamic $KGZgranatk

		act 'Далее':gt $curloc
	end
end

if KGZdist <= 2:
	act 'Ударить <<$KGZweapona>>':
		cls
		dynamic $KGZfizatk

		act 'Далее':gt $curloc
	end
else
	act 'Ждать':
		cls
		KGZdist -= 1
		gt $curloc
	end
	act 'Идти на встречу мертвецам':
		cls
		KGZdist -= 2
		gt $curloc
	end
	act 'Убегать':
		cls

		if KGZdead >= 10:
			KGZdist -= 5

			'Мертвецов слишком много и они окружили вас, вам не убежать.'

			act 'Твою мать!':gt $curloc
		else
			KGZdedrandrun = RAND(0,1)
			if KGZdedrandrun = 0:
				KGZbatl = 1

				'Вам удалось сбежать от мертвецов.'

				act 'Уйти':gt'KGZgame'
			elseif KGZdedrandrun = 1:
				KGZdist -= 5
				KGZdead += RAND(KGZdead,KGZdead*5)

				'Вы наткнулись на других мертвецов и теперь вам придется драться с большим количеством мертвецов.'

				act 'Твою мать!':gt $curloc
			end
		end
	end
end
--- KGZfight ---------------------------------

