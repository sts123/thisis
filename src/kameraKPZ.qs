# kameraKPZ
gs'stat'

'<center><b><font color = maroon>Камера предварительного заключения</font></b></center>'
'<center><img src="images/pic/kpz.jpg"></center>'
'Большая камера с деревянными лавками.'

if kameraKPZ < 3:
	act 'Сидеть':
		cla
		minut += 60
		kameraKPZ += 1
		gs'stat'

		'Вы сели на жесткую деревянную лавочку и стали обдумывать ваше положение.'

		act '...':gt $curloc
	end
else
	'К решетке подошел милиционер и Анатолий Борисович. Милиционер сразу же отошел в сторону и хозяин Быстроежки сказал. "Света, Света, ну как же ты могла?"'

	act 'Рассказать ему как все было':
		cls
		minut += 60
		gs'stat'

		'<center><img src="images/pic/kpz.jpg"></center>'
		'Вы стали рассказывать как Иван стал склонять вас к сексу и вы отказали ему, как он наплел вам небылиц о вашем повышении и дал вам ключи. Как вы взяли конверт и отдали его Ивану. Анатолий Борисович грустно на вас смотрел сквозь прутья решетки. "Света. Иван показал себя настоящим профессионалом и честным человеком. Он пробился в главные менеджеры из самых низов. И ты хочешь мне сказать, что он польстился на какие то 650 тысяч? Рискуя всем, своей должностью, своей карьерой, репутацией, только для того, что бы украсть эти деньги и досадить тебе? Ты всего лишь посудомойка. Какой смысл ему это делать? К тому же у Ивана приличная зарплата и возможно вскоре он станет директором филиала."'

		act 'Убеждать в своей невиновности':
			cls
			minut += 60
			gs'stat'

			'<center><img src="images/pic/kpz.jpg"></center>'
			'Вы стали убеждать владельца Быстроежки в своей невиновности. Анатолий Борисович о чем то задумался. "Резона посадить тебя мне нет никакого. Мне нужно вернуть мои деньги. И если допустить, что ты не врешь, тогда я пригрел змею на груди. Вот что я тебе скажу. Я походатайствую, что бы тебя отпустили под подписку о невыезде. У тебя будет где то месяц до суда, что бы обелить себя. Если не сможешь, то извини, ничем помочь не могу."'

			act 'Согласиться':
				cls
				minut += 260
				gs'stat'

				'<center><img src="images/pic/kpz.jpg"></center>'
				'Выбора конечно никакого нет и вы согласились с Анатолием. Тот быстро сходил куда то и через некоторое время вас выпустили из КПЗ. Анатолий Борисович встретил вас на своей машине и пригласил вас сесть к нему.'

				act 'Ехать с Анатолием':
					cls
					minut += 30
					PodpiskaNeviezd = 1
					IvanKvartira = 1
					gs'stat'

					'<center><img src="images/maggot/car.jpg"></center>'
					'Вы сели в машину и поехали. Анатолий сказал. "Сейчас я отвезу тебя к твоему дому. Думаю тебе нужно немного отдохнуть. Иван живет в северном районе, поступай как знаешь. Но учти, если опять чего то набедокуришь, я тебя вытаскивать не стану. И запомни девочка. У тебя до суда где то месяц. За это время ты либо должна вернуть мне деньги, либо доказать мне виновность Ивана, либо ты сядешь. Я позабочусь о том, что бы твой срок не был условным. Отправишься лет на шесть ватники шить в какой нибудь глуши в окружении старых проституток, наркоманок, мошенниц и прочего сбора. И по решению суда ты будешь перечислять мне деньги, пока не выплатишь всю сумму. Если что, найдешь меня в Быстроежке." Вы приехали к вашему дому и попрощались с Анатолием.'

					act 'Выйти из машины':gt'street'
				end
			end
		end
	end
end
--- kameraKPZ ---------------------------------

