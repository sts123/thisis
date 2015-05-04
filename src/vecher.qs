# vecher
if $ARGS[0] = 'start':
	cla
	*clr
	'<center><img src="images/img/centr/vecher.jpg"></center>'

	act 'Уйти':gt'dorm','korr'
	act 'Зажигать':
		cla
		hour = 23

		'Вы веселитесь, бухаете и танцуете.'

		itrand = RAND(1,11)
		if itrand = 1:gt'vecher','end'
		if itrand = 2:gt'vecher','end2'
		if itrand = 3:gt'vecher','end3'
		if itrand = 4:gt'vecher','end4'
		if itrand = 5:gt'vecher','end5'
		if itrand = 6:gt'vecher','end6'
		if itrand = 7:gt'vecher','end7'
		if itrand = 8:gt'vecher','end8'
		if itrand = 9:gt'vecher','end9'
		if itrand = 10:gt'vecher','end10'
		if itrand = 11:gt'vecher','end11'
	end
end

if $ARGS[0] = 'end':
	cla
	*clr
	'<center><img src="images/picparty/itog.jpg"></center>'
	'Постепенно вы накидались спиртным до чертиков и вас начало тошнить, конец вечеринки вы провели в обнимку с унитазом.'

	act 'Уйти':gt'dorm','korr'
end

if $ARGS[0] = 'end2':
	cla
	*clr
	'<center><img src="images/picparty/itog2.jpg"></center>'
	'Вы танцевали и хулиганили, вам пришла в голову идея потанцевать с Викой, кончился ваш танец легким лесби шоу с смачными затяжными поцелуями.'

	act 'Уйти':gt'dorm','korr'
	act 'Уйти с Викой в комнату':
		cla
		if vikasex = 0:vikasex = 1
		$sexloc = 'obroom'
		gt'lezbsex','start'
	end
end

if $ARGS[0] = 'end3':
	cla
	*clr
	if vnesh < 20:
		'<center><img src="images/picparty/itog3.jpg"></center>'
		'Вы накирялись и уснули в соседней комнате с несколькими девчонками.'

		act 'Уйти':gt'dorm','korr'
	elseif vnesh >= 20:
		'<center><img src="images/img/centr/vechend1.jpg"></center>'
		'Вы накирялись и уснули в соседней комнате с несколькими девчонками. Вам сниться что вы занимаетесь сексом с Викой, вы буквально чувствуете как она раздвигает вам ноги, а затем горячим язычком начинает облизывать ваш клитор. Открыв глаза вы видите как несколько девушек склонились над вами и руками ласкают ваше тело, а у вас между ног Вика орудует своим язычком, "Вот это вещий сон" пронеслось у вас в голове.'

		act 'Уйти':gt'dorm','korr'
		act 'Наслаждаться':
			cla
			*clr
			if vikasex = 0:vikasex = 1
			orgasm += 1
			girl += 4
			lesbian += 1

			'<center><img src="images/img/centr/vechend2.jpg"></center>'
			'Вы расслабляетесь позволяя девушкам ласкать ваше тело, они периодически меняются у вашей киски, давая попробовать каждый язычок, от этих бесконечных ласк вас накрыл оргазм.'

			act 'Продолжать':gt'vecher','end12'
		end
	end
end

if $ARGS[0] = 'end4':
	cla
	*clr
	'<center><img src="images/picparty/itog4.jpg"></center>'
	'Вы быстро опьянели и начали приставать к девчонкам, как так получилось вы и сами не поняли, но вы обнажили грудь и Вика целовала и облизывала ваши соски на глазах у всех.'

	act 'Уйти':gt'dorm','korr'
	act 'Уйти с Викой в пустую комнату':
		cla
		if vikasex = 0:vikasex = 1
		$sexloc = 'obroom'
		gt'lezbsex','start'
	end
end

if $ARGS[0] = 'end5':
	cla
	*clr
	guy += 1
	sex += 1

	'<center><img src="images/img/centr/itog5.jpg"></center>'
	'Вы очнулись на полу в коридоре, на пол пути к вашей комнате. Над вами пыхтел какой то прыщавый юнец старательно трахая вашу вагину. Заметив что вы очнулись он быстро вскочил на ноги и убежал, оставив вас лежать на грязном полу.'

	act 'Уйти':gt'dorm','korr'
end

if $ARGS[0] = 'end6':
	cla
	*clr
	'<center><img src="images/picparty/itog6.jpg"></center>'
	'Вы весь вечер приставали к девушке с большой грудью выпрашивая у нее поцеловать ее груди. К вечеру вы обе напились в хлам и тогда вы залезли ей лицом в груди и стали их целовать.'

	act 'Уйти':gt'dorm','korr'
end

if $ARGS[0] = 'end7':
	cla
	*clr
	'<center><img src="images/img/centr/itog7.jpg"></center>'
	'Натрескавшись в зюзю вы и сами не поняли как в танце начали раздеваться, но алкоголь сделал свое дело и потеряв равновесие и сваливаетесь на сидящего на диване парня, то тут же воспользовался ситуацией и начал лапать вашу грудь.'

	act 'Дать по яйцам и уйти':gt'dorm','korr'
	act 'Снять трусики':
		cla
		*clr
		guy += 1
		bj += 1
		sex += 1
		cumass += 1

		'<center><img src="images/img/centr/itog71.jpg"></center>'
		'Вы поднимаетесь на ноги и снимаете последнее что вас осталось, трусики, снова чуть не свалившись. Увидев ваш порыв парень тут же высвобождает член из штанов.'

		act 'Сосать':
			cla
			*clr
			'<center><img src="images/img/centr/itog72.jpg"></center>'
			'Вы опускаетесь на колени и обхватив член губами втягиваете его в себя, вы плавно двигаетесь обсасывая его фалос не обращая внимания на собравшуюся вокруг вас толпу, но ему показалось этого мало, он схватил вас за голову и начал буквально насаживать вас ртом на свой член.'

			act 'Далее':
				cla
				*clr
				'<center><img src="images/img/centr/itog73.jpg"></center>'
				'Когда его член стал каменным, он поставил вас раком на диван и с силой вошел в вашу вагину, он даже не пытался сделать вам хоть как то приятно, просто трахал, толпа вокруг вас подбадривала его, крича что бы он оттрахал вас как следует, хотя откуда им знать как следует. Парень был сильно пьян у него никак не получалось кончить.'

				act 'Далее':
					cla
					*clr
					'<center><img src="images/img/centr/itog74.jpg"></center>'
					'Когда вы уже перестали что либо ощущать он резко выдернул из вас член и разрядился вам на ягодицы. Собрав одежду с пола вы пошли к себе в комнату.'

					act 'Уйти':gt'dorm','korr'
				end
			end
		end
	end
end

if $ARGS[0] = 'end8':
	cla
	*clr
	'<center><img src="images/picparty/itog8.jpg"></center>'
	'Вы с Викой напоролись и Вика стала заниматься сексом с каким то не известным парнем. Вы лежали рядом весело болтая с Викой пока ее драл пьяный в хлам не знакомый парень.'

	act 'Уйти':gt'dorm','korr'
	act 'Ласкать Вику':
		cla
		*clr
		if vikasex = 0:vikasex = 1
		girl += 1
		lesbian += 1
		horny = horny + 60

		'<center><img src="images/img/centr/itog81.jpg"></center>'
		'Вы целуете и ласкаете грудь Вики, она очень возбуждена и вы решили дать ей полизать вашу киску.'
		if horny < 100:'Вы начали уставать от вылизывания и захотелось продолжения'
		if horny >= 100:horny = 0 & orgasm += 1 & 'Мышцы вагины начали резко сокращаться, весь низ живота как будто накрыла горячая волна удовольствия, вы кричите от мощного оргазма.'
		'Парень достает свой член из Вики и подняв ее вставляет ей свой член в рот.'

		act 'Наблюдать':
			cla
			*clr
			'<center><img src="images/img/centr/itog82.jpg"></center>'
			'Парень кончает Вике в рот. Губы Вики перемазаны в сперме и она тянется к вам что бы поцеловали ее.'

			act 'Целоваться с Викой':
				cla
				*clr
				cumlip = cumlip + 1

				'<center><img src="images/img/centr/itog83.jpg"></center>'
				'Вы целуетесь слизывая друг с друга сперму.'

				act 'Уйти':gt'dorm','korr'
			end
		end
		act 'Сосать вместе с Викой':
			cla
			*clr
			bj += 1
			guy += 1
			cumface = cumface + 1

			'<center><img src="images/img/centr/itog84.jpg"></center>'
			'Вы отсасываете член вместе с Викой, наконец парень кончает вам на лица.'

			act 'Целоваться с Викой':
				cla
				*clr
				cumlip = cumlip + 1

				'<center><img src="images/img/centr/itog83.jpg"></center>'
				'Вы целуетесь слизывая друг с друга сперму.'

				act 'Уйти':gt'dorm','korr'
			end
		end
	end
end

if $ARGS[0] = 'end9':
	cla
	'<center><img src="images/picparty/itog9.jpg"></center>'
	'Девчонки любят веселится, вы с двумя подружками устроили пьяное лесби шоу прямо на вечеринке. Лаская, целуя и тиская друг друга на глазах у всех.'

	act 'Уйти':gt'dorm','korr'
end

if $ARGS[0] = 'end10':
	cla
	'<center><img src="images/picparty/itog10.jpg"></center>'
	'Вы напились и танцевали с каким то парнем, который грязно лапал вас за сиськи.'

	act 'Уйти':gt'dorm','korr'
	act 'Потрогать за ширинку':
		$sexloc = 'obroom'
		gt'sex','start'
	end
end

if $ARGS[0] = 'end11':
	cla
	*clr
	cumfrot += 1

	'<center><img src="images/picparty/skirtcum.jpg"></center>'
	'Вы очнулись в чужой комнате, лежа на животе, слава богу в одежде, значит никто вас по пьяни не выдрал.'
	'Что это? Черт! Какой то гад, приволок вас в чужую комнату и обкончал вам задницу.'

	act 'Уйти':gt'dorm','korr'
end

if $ARGS[0] = 'end12':
	cla
	*clr
	minut += 15

	picrand = RAND(3,9)
	'<center><img src="images/img/centr/vechend<<picrand>>.jpg"></center>'
	'Все смешалось в большой клубок из женских тел, вы уже не понимали ни кто кого и как ни что сейчас делает ваш язык ни что в ваших дырочках то ли язык, то ли пальцы.'

	act 'Еще':gt'vecher','end12'
	act 'Уйти':gt'dorm','korr'
end
--- vecher ---------------------------------

