# npcview
'<center><b><<$nikname[i]>></b></center>'
'Рейтинг <<rating[i]>>'

if i > 0:'Рекорд <<win[i]>> побед - <<loss[i]>> поражений - <<draw[i]>> ничьих <<SubWin[i]>> побед сдачей/<<SubLoss[i]>> поражений сдачей'
if i = 0:'Рекорд <<winw[i]>> побед - <<lossw[i]>> поражений - <<draww[i]>> ничьих <<SubWin[i]>> побед сдачей/<<SubLoss[i]>> поражений сдачей'

''
''
'Сила <<musle[i]>>'
'Гибкость <<flex[i]>>'
'Выносливость <<stamina[i]>>'
'Моральноволевые качества <<wipo[i]>>'
''
'Бросковая техника <<Bteh[i]>>'
'Техника удержания <<Uteh[i]>>'
'Защитная техника <<Zteh[i]>>'
''
if slut[i] > 0 and porno = 1:'Набито клеймо шлюхи.'
''
''
''
'<<$spisok[i]>>'
'Тест <<i>>'

act 'Выйти':gt $loc

if i ! 1:
	act 'Провести бой с вами':gt'beforeFW'
end

if i ! 1:
	if predlog > 0 and predlog ! i and predlog2 = 0:
		act 'Предложить бой с <<$nikname[predlog]>>':
			cls
			a = predlog
			'В красном углу <<$nikname[a]>> <<win[a]>>-<<loss[a]>>-<<draw[a]>> <<SubWin[a]>>/<<SubLoss[a]>>'
			!i = predlog2
			'В синем углу <<$nikname[i]>> <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>>'
			gs'Autofight'
			predlog = 0
			predlog2 = 0

			act 'Далее':gt $loc
		end
	elseif predlog = 0:
		act 'Предложить бой':predlog = i & gt $loc
	end
end
--- npcview ---------------------------------

