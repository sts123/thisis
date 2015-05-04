# KatjaHomeTalk
gs'KatjaHomeDin'
gs'stat'

'<center><b><font color = maroon><<$npcName[14]>> <<$npcSurName[14]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/14.jpg"></center>'

if sweat > 0:
	'Катя сморщила носик "Света, ты вся потная, пойдешь в душ?"'

	act 'Идти в душ':
		cls
		minut += 15
		gs'stat'

		if KatjaHorny >= 50:
			'Катя проводила вас в душевую. Она раскраснелась и сказала "Я тоже что то вспотела, давай вместе помоемся."'

			act 'Мыться одной':
				cls
				dynamic $showerdin
				minut += 15
				horny = horny + 1
				hapri = 1
				mop = 1
				sweat = -3
				if frost > 0:frost = 0
				gs'stat'

				'<center><img src="images/pics/dush.jpg"></center>'
				'Вы выдворили Катю из душевой и закрыли дверь. Вы залезли в душ и начали намыливать свое тело мочалкой. После смыли мыло и помыли волосы шампунем. Смыв шампунь вы стали совершенно чистой.'

				act 'Выйти из душа':gt $curloc
			end
			act 'Мыться вместе':
				cls
				dynamic $showerdin
				minut += 15
				horny = horny + 1
				hapri = 1
				mop = 1
				sweat = -3
				if frost > 0:frost = 0
				horny += 10
				KatjaHorny += 10
				KatjaLust += 1
				gs'stat'

				'<center><img src="images/qwest/alter/katja/shower.jpg"></center>'
				'Вы разделись и вместе с Катей залезли в душевую.'

				if lobok <= 0:
					'Глаза Кати скользнули по вашему телу немного задержавшись на ваших грудях и киске. Катя взяла душ в руки и стала вас поливать.'

					act 'Дальше':
						cls
						gs'stat'

						'<center><img src="images/qwest/alter/katja/shower2.jpg"></center>'
						'Катя нежно намыливала вас гелем и смывала теплыми струями душа.'

						if KatjaLust >= 10 and KatjaHorny >= 90:
							'Катя смыла мыло с вашей киски и грудей нежными поглаживаниями своих маленьких ладошек. Ее щеки раскраснелись и заблестели глаза.'

							dynamic $katja_shower_kiss_home
						else
							'Наконец Катя закончила вас мыть и помылась сама.'

							act 'Выйти из душа':gt $curloc
						end
					end
				elseif lobok > 0:
					'Глаза Кати скользнули по вашему телу немного задержавшись на грудях и волосах на лобке. Катя улыбнулась "Светуль, у тебя тут такая растительность, это уже не модно, давай я тебе сбрею волосы."'

					act 'Брить волосы между ног':
						cls
						minut += 5
						lobok = -3
						KatjaHorny += 10
						KatjaLust += 1
						gs'stat'

						'<center><img src="images/qwest/alter/katja/lobok.jpg"></center>'
						'Катя усадила вас в ванную и намылила ваш лобок попутно намылив живот и груди. Она взяла бритву и стала аккуратно сбривать ваши волосики между ног.'

						if KatjaLust >= 10 and KatjaHorny >= 90:
							'Катя смыла мыло с вашей киски и грудей нежными поглаживаниями своих маленьких ладошек. Ее щеки раскраснелись и заблестели глаза.'

							dynamic $katja_shower_kiss_home
						else
							'Наконец Катя сбрила все ваши волосы между ног и стала смывать с вас мыло.'

							act 'Выйти из душа':gt $curloc
						end
					end
				end
			end
		elseif KatjaHorny < 50:
			dynamic $showerdin
			minut += 15
			horny = horny + 1
			hapri = 1
			mop = 1
			sweat = -3
			if frost > 0:frost = 0
			gs'stat'

			'<center><img src="images/pics/dush.jpg"></center>'
			'Катя вам показала где находятся туалетные принадлежности и вышла из душевой. Вы залезли в душ и начали намыливать свое тело мочалкой. После смыли мыло и помыли волосы шампунем. Смыв шампунь вы стали совершенно чистой.'

			act 'Выйти из душа':gt $curloc
		end
	end
else
	!не потная
	if hour < 20:
		act 'Болтать с Катей':
			cls
			KatjaHorny += 1
			!KatjaLust += 1
			!if npcSex[14] = 1:
			minut += 15
			gs'stat'

			'<center><b><font color = maroon><<$npcName[14]>> <<$npcSurName[14]>></font></b></center>'
			'<center><img src="images/qwest/alter/npc/14.jpg"></center>'

			if katjaPreg = 0 or knowKatjaPreg >= 1:
				if KatjaHorny < 50:'Катька болтает об уроках, косметике, последних веяниях моды в одежде и прочих очень важных вещах.'
				if KatjaHorny >= 50:
					dynamic $d_katjaSextalk
					exit
				end
			elseif katjaPreg > 0 and knowKatjaPreg = 0:
				if knowKatjaPreg = 0:
					'Катя кусает губу не глядя вам в глаза, наконец набирается решимости и говорит "Света, я беременна."'

					act 'От кого?':
						cls
						minut += 5
						knowKatjaPreg = 1
						gs'stat'

						'Вы ошарашенно спросили "От кого." Катя сморщила носик, "От деда мороза! Да от Воинова, я с ним на новогодней школьной вечеринке переспала. И залетела. Господи, что теперь делать то?"'

						act 'Понятия не имею':gt $curloc
					end
				else
					''
				end
			end

			act 'Дальше':gt $curloc
		end

		if KatjaLust > 10:
			katkisrand = RAND(0,5)
			if katkisrand = 0:
				cls
				gs'stat'

				'<center><b><font color = maroon><<$npcName[14]>> <<$npcSurName[14]>></font></b></center>'
				'<center><img src="images/qwest/alter/npc/14.jpg"></center>'

				dynamic $d_katjahornykiss
			end
		end
	elseif hour >= 20:
		'Катя говорит, что хочет пойти на дискотеку.'

		if money >= 25:act 'Идти на дискотеку':money -= 25 & minut += 15 & gt'gdkin'
	end
end

act 'Попрощаться и идти домой':gt'gorodok'
--- KatjaHomeTalk ---------------------------------

