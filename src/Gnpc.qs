# Gnpc
!парни
GvstreBoyAfter[numnpc] = 0
GvstreBoy = 0
boyvstre[numnpc] += 1
gs'stat'

'<center><b><font color = maroon><<$nameBoyfrend[numnpc]>></font></b></center>'
!'<center><img src="images/qwest/alter/npc/<<numnpc>>.jpg"></center>'
'<<$nameBoyfrend[numnpc]>> ваш парень.'

if otnBoyFrend[numnpc] < 20:'У вас плохие отношения.'
if otnBoyFrend[numnpc] >= 20 and otnBoyFrend[numnpc] < 40:'У вас напряженные отношения.'
if otnBoyFrend[numnpc] >= 40 and otnBoyFrend[numnpc] < 60:'У вас нормальные отношения.'
if otnBoyFrend[numnpc] >= 60 and otnBoyFrend[numnpc] < 80:'У вас хорошие отношения.'
if otnBoyFrend[numnpc] >= 80:'У вас отличные отношения.'

''
''

if preg = 1 and pregtime <= 80 and pregTalk[numnpc] = 0 and gnpcSex[numnpc] = 1:
	act 'Сказать парню, что вы залетели от него':
		cls
		gs'stat'
		'Вы сказали парню, что забеременели от него. У него чуть не вылезли глаза из орбит.'

		if $father = $nameBoyfrend[numnpc]:
			'Парень задумался. "Слушай, я не готов стать отцом, да еще и жениться на тебе." Он протянул вам 5ть тысяч. "На деньги, и давай расстанемся."'

			act 'Бросить парня и взять деньги':
				cls
				dom += 5
				pregTalk[numnpc] = 1
				otnBoyFrend[numnpc] = 0
				money += 5000
				gs'stat'

				'Вас охватила ярость и вы послали парня на хуй. На все же выхватили купюру из его рук и ушли.'

				act 'Уйти':gt $loc, $metka
			end
			act 'Бросить парня швырнув ему деньги в лицо':
				cls
				dom += 10
				pregTalk[numnpc] = 1
				otnBoyFrend[numnpc] = 0
				gs'stat'

				'Вас охватила ярость и вы послали парня на хуй и швырнули ему деньги в лицо. После чего ушли.'

				act 'Уйти':gt $loc, $metka
			end
		else
			'Парень возмутился "Да ты охуела шалава! Кому то подставила свою пизду, а теперь будешь с меня бабки качать? Да пошла ты на хуй!"'

			act 'Бросить парня':
				cls
				dom += 10
				pregTalk[numnpc] = 1
				otnBoyFrend[numnpc] = 0
				gs'stat'

				'Вас охватила ярость и вы послали парня на хуй. После чего ушли.'

				act 'Уйти':gt $loc, $metka
			end
		end
	end
end

if GboyBalabol[numnpc] = 1:
	act 'Обвинить парня, в том, что он трепло':
		cls
		gs'stat'

		'Вы обвинили парня в том, что он разболтал о ваших отношениях всем и теперь окружающие считают что вы <<$gnikname>>'

		reaktrand = RAND(0,2)
		if reaktrand = 0:
			'<<$nameBoyfrend[numnpc]>> начал извиняться что это он случайно по пьяни одному приятелю сказал, а он сука всем разболтал. <<$nameBoyfrend[numnpc]>> клятвенно обещает, что больше такого не повториться.'
		elseif reaktrand = 1:
			'<<$nameBoyfrend[numnpc]>> начал успокаивать вас, дескать ничего страшного не случилось, поболтают и забудут.'
		elseif reaktrand = 2:
			'<<$nameBoyfrend[numnpc]>> усмехнувшись сказал. Да расслабься, ты же и есть самая настоящая <<$gnikname>>, что такого то?'
		end

		act 'Бросить парня':
			cls
			dom += 10
			GboyBalabol[numnpc] = 2
			otnBoyFrend[numnpc] = 0
			gs'stat'

			'Вас охватила ярость и вы послали парня на хуй. После чего ушли.'

			act 'Уйти':gt $loc, $metka
		end
		act 'Простить парня':
			cls
			sub += 10
			GboyBalabol[numnpc] = 2
			gs'stat'

			'Вы подумали немного и решили простить парня.'

			act 'Уйти':gt $loc, $metka
		end
	end
end

act 'Гулять по скверу':
	cls
	if hapri = 0:otnBoyFrend[numnpc] -= 5
	if hapri = 1:otnBoyFrend[numnpc] += 1
	if mop = 2:otnBoyFrend[numnpc] += 1
	if mop = 3:otnBoyFrend[numnpc] += 2
	if mop = 4:otnBoyFrend[numnpc] -= 5
	if sweat > 0:otnBoyFrend[numnpc] -= 5
	if ski > 0 or glamur > 0:otnBoyFrend[numnpc] += 2
	minut += 15
	boytimes[numnpc] += 1
	gs'stat'

	'Вы гуляете с парнем по скверу и весело болтаете.'

	if kotovLoveQW > 0:
		otnBoyFrend[numnpc] = 0
		'Внезапно вы видите что вам на встречу идет Витек Котов он подходит к парню и молча бьет ему в лицо. <<$nameBoyfrend[numnpc]>> падает на землю. Витек наклоняется над ним "Слыш ты уебок, это моя девчонка, еще раз увижу тебя с ней, живым в лесу закопаю, понял?" Парень кивает головой и говорит что понял.'

		act 'Уйти':gt $loc, $metka

		exit
	end

	gboyrand = RAND(0,1)
	if gboyrand = 0:
		'<<$nameBoyfrend[numnpc]>> предложил сходить в кино.'

		act 'Извиниться и уйти':otnBoyFrend[numnpc] -= 5 & gt $loc, $metka
		act 'Идти в кино':
			cls
			minut += 15
			gs'stat'

			'Вы пошли с парнем в кинотеатр расположенный в сквере. <<$nameBoyfrend[numnpc]>> купил билеты в кино. Вы вместе вошли в небольшой кинозал и нашли свои места.'

			act 'Смотреть кино':
				cls
				manna += 100
				minut += 100
				otnBoyFrend[numnpc] += 5
				gs'stat'

				'Вы сели с парнем на кресла расположенные на заднем ряду. Вскоре свет погас и на экране началось кино.'

				if otnBoyFrend[numnpc] < 80:
					'Вы смотрели фильм пару часов сидя в кресле рядом с парнем.'

					act 'Идти к выходу':gt'Gnpc2'
				elseif otnBoyFrend[numnpc] >= 80 and gnpcSex[numnpc] = 0:
					'Вы стали смотреть кино и вдруг ощутили ладонь парня на своей коленке.'

					act 'Убрать его руки':
						cls
						dom += 1
						otnBoyFrend[numnpc] -= 20
						gs'stat'

						'Вы убрали ладонь парня со своей коленки и продолжили смотреть кино. Кино наконец кончилось. В зале загорелся свет и на экране пошли титры.'

						act 'Идти к выходу':gt'Gnpc2'
					end
					act 'Игнорировать':
						cls
						otnBoyFrend[numnpc] += 5
						gs'stat'

						'Вы сделали вид, что ничего не происходит и парень начал еще активней гладить вашу ногу. Кино наконец кончилось. В зале загорелся свет и на экране пошли титры.'

						act 'Идти к выходу':gt'Gnpc2'
					end
				elseif otnBoyFrend[numnpc] >= 80 and gnpcSex[numnpc] > 0:
					'Вы стали смотреть кино, а <<$nameBoyfrend[numnpc]>> положил свою руку вам на ногу и начал поглаживать вашу коленку. Кино наконец кончилось. В зале загорелся свет и на экране пошли титры.'

					act 'Идти к выходу':gt'Gnpc2'
				end
			end
		end
	elseif gboyrand = 1:
		'<<$nameBoyfrend[numnpc]>> предложил попить пивка в парке.'

		act 'Извиниться и уйти':otnBoyFrend[numnpc] -= 5 & gt $loc, $metka
		act 'Идти за пивом':
			cls
			manna += 100
			minut += 15
			gs'stat'

			'Вы пошли с парнем к ближайшему киоску. <<$nameBoyfrend[numnpc]>> купил пива и закуску. После чего вы пошли на лавочку в дальнем уголке сквера.'

			act 'Выпивать':
				cls
				manna += 100
				minut += 30
				alko += 2
				fat += 2
				salo += 1
				energy += 10
				otnBoyFrend[numnpc] += 5
				gs'stat'

				'<<$nameBoyfrend[numnpc]>> разлил пиво по стаканам и вы стали выпивать пиво. <<$nameBoyfrend[numnpc]>> рассказывал разные смешные истории.'

				if otnBoyFrend[numnpc] < 80:
					'Вы допили пиво вместе с парнем и вдоволь повеселились.'

					act 'Дальше':gt'Gnpc2'
				elseif otnBoyFrend[numnpc] >= 80 and gnpcSex[numnpc] = 0:
					'Вы допили пиво вместе с парнем и вдоволь повеселились.'

					act 'Дальше':gt'Gnpc2'
				elseif otnBoyFrend[numnpc] >= 80 and gnpcSex[numnpc] > 0:
					'Вы допили пиво вместе с парнем и вдоволь повеселились.'

					act 'Дальше':gt'Gnpc2'
				end
			end
		end
	end
end

act 'Извиниться и уйти':otnBoyFrend[numnpc] -= 5 & gt $loc, $metka
--- Gnpc ---------------------------------

