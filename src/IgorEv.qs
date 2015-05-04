# IgorEv
gs'stat'

'<center><b><font color = maroon><<$npcName[4]>> <<$npcSurName[4]>></font></b></center>'
'<center><img src="images/qwest/alter/npc/4.jpg"></center>'

if fedorKozlovQW >= 10 and $loc = 'gdkin':
	'К вам с Игорем подходит Федор. "Гошан, ты ничего не перепутал? Света моя девушка." Игорь покраснел "Ну Федь, понимаешь, я же не знал. Но раз ты настаиваешь, то ладно, я же просто так, в шутку." Федя кивнул головой "Ну и иди куда шел, шутник."'

	act 'Идти с Федором':IdorBlock = 1 & gt'FedorEv'

	exit
end

'Игорь нетерпеливо сказал вам "Ну что? пойдем ко мне домой?".'

if IgorLove > 0:
	act 'Идти к Игорю':
		cls
		minut += 15
		gs'stat'

		'Вы пришли к Игорю домой.'

		if IgorDominaQW = 0:
			'Игорь начинает обнимать вас и целовать.'
		elseif IgorDominaQW > 0:
			'Игорь встает перед вами на колени "Госпожа, молю, о поцелуе!"'
		end

		act 'Уйти':IgorLove -= 1 & gt'gorodok'
	end
elseif IgorLove <= 0:
	IgorLoverQW = -1

	'По пути Игорь начал бубнить "Света, я так тебя люблю, но ты меня совсем не понимаешь, знаешь, я начал задумываться, нам видимо надо расстаться."'

	act 'Уйти':gt'gorodok'
end
--- IgorEv ---------------------------------

