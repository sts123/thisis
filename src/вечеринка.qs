# вечеринка
if $ARGS[0] = 'начало':
	cla
	if vikavecher = 1:
		gt'вечеринка','первый'
	elseif vikavecher > 1:
		gt'вечеринка','вечер'
	end
end

if $ARGS[0] = 'первый':
	cla
	vikavecher = 2
	'Вы пришли с Викой на вечеринку. Вечеринка проходила в мужской части общежития, компания из девчонок и парней пили спиртное, танцевали под музыку и развлекались.'
	'С вами вежливо поздоровались, но особого интереса к вам никто не проявил'

	act 'Скромничать':
		cla
		clr
		час = 23
		fairy = 1
		gs'stat'

		'Вы скромно сели в уголке, что бы не мешать другим веселиться. К вам начал клеится какой то маленький, длинноволосый парнишка. Другие парни его позвали явно для смеха и иначе как Фея и не называли.'

		act 'Уйти':gt'лока'
	end
	act 'Веселиться':
		cla
		час = 23
		fairy = 2

		'Вы пили водку вместе со всеми и разговор постепенно завязался. Вы довольно сильно опьянели и начали танцевать с девчонками. Какой то маленький мальчишка с нежным девичьи лицом и длинными русыми волосами пытался оказывать вам неуклюжие знаки внимания. Другие парни его позвали явно для смеха и называли не иначе как Фея. Постепенно вы надрались в хлам и отрубились.'
		'Вы очнулись в чужой комнате, лежа на животе, слава богу в одежде, значит никто вас по пьяни не выдрал.'

		if джинсы = 2:'<center><img src="images/picparty/jeanscum.jpg"></center>'
		if джинсы ! 2:'<center><img src="images/picparty/skirtcum.jpg"></center>'

		'Что это? Черт! Какой то гад, приволок вас в чужую комнату и обкончал вам задницу.'

		act 'Уйти':gt'лока'
	end
end

if $ARGS[0] = 'вечер':
	cla
	'Вы пришли на вечеринку, много девчонок и парней, выпивают, танцуют и тусуются.'

	act 'Скромно сидеть':
		cla
		час = 23

		zrand = RAND(50,100)
		if vnesh < zrand:
			cla
			'Вы скромно просидели всю вечеринку наблюдая как открываются другие.'

			act 'Уйти':gt'лока'
		elseif vnesh >= zrand:
			cla
			'Вы скромно скромно сидели в уголке, но к вам подошел парень и начал с вами общаться.'

			act 'Отшить и уйти':gt'лока'
			act 'Поддержать разговор':
				cla
				'Вечеринка заканчивается и ваш новый знакомый предлагает вас проводить'

				act 'Отказаться':gt'лока'
				act 'Пойти с парнем':
					newboy = 1
					gs'boy'
					gs'boyopred'
					gt'лока'
				end
			end
		end
	end
	act 'Зажигать':
		cla
		час = 23
		horny = horny - 10

		'Вы веселитесь, бухаете и танцуете.'

		itrand = RAND(1,10)
		if itrand = 1:xgt'вечеринка','итог'
		if itrand = 2:xgt'вечеринка','итог2'
		if itrand = 3:xgt'вечеринка','итог3'
		if itrand = 4:xgt'вечеринка','итог4'
		if itrand = 5:xgt'вечеринка','итог5'
		if itrand = 6:xgt'вечеринка','итог6'
		if itrand = 7:xgt'вечеринка','итог7'
		if itrand = 8:xgt'вечеринка','итог8'
		if itrand = 9:xgt'вечеринка','итог9'
		if itrand = 10:xgt'вечеринка','итог10'
	end
end

if $ARGS[0] = 'итог':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog.jpg"></center>'
	'Постепенно вы накидались спиртным до чертиков и вас начало тошнить, конец вечеренки вы провели в обнимку с унитазом.'

	act 'Уйти':gt'лока'
end

if $ARGS[0] = 'итог2':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog2.jpg"></center>'
	'Вы танцевали и хулиганили, вам пришла в голову идея потанцевать с Викой, кончился ваш танец легким лесби шоу с смачными затяжными поцелуями.'

	act 'Уйти':gt'лока'
	act 'Уйти с Викой в пустую комнату':
		cla
		$girl = 'Вика'
		if vikasex = 0:vikasex = 1 & sexf = sexf + 1
		gt'lesb','начало'
	end
end

if $ARGS[0] = 'итог3':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog3.jpg"></center>'
	'Вы накирялись и уснули в соседней комнате с несколькими девчонками.'

	act 'Уйти':gt'лока'
end

if $ARGS[0] = 'итог4':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog4.jpg"></center>'
	'Вы быстро опьянели и начали приставать к девчонкам, как так получилось вы и сами не поняли, но вы обнажили грудь и Вика целовала и облизывала ваши соски на глазах у всех.'

	act 'Уйти':gt'лока'
	act 'Уйти с Викой в пустую комнату':
		cla
		$girl = 'Вика'
		if vikasex = 0:vikasex = 1 & sexf = sexf + 1
		gt'lesb','начало'
	end
end

if $ARGS[0] = 'итог5':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog5.jpg"></center>'
	if throat > 10:money = money + 100 & 'Веселясь и выпивая вы поспорили с девчонкой что сумеете затолкать в горло себе целый банан, не велика премудрость, что вы с успехом и проделали прямо за столом. Девчонка отдала вам 100 рублей.'
	if throat <= 10:money = money - 100 & 'Веселясь и выпивая вы поспорили с девчонкой что сумеете затолкать в горло себе целый банан, вы подавились еще на половине банана и проиграли спор. После этого вы отдали 100 рублей.'

	act 'Уйти':gt'лока'
end

if $ARGS[0] = 'итог6':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog6.jpg"></center>'
	'Вы весь вечер приставали к девушке с большой грудью выпрашивая у нее поцеловать ее груди. К вечеру вы обе напились в хлам и тогда вы залезли ей лицом в груди и стали их целовать.'

	act 'Уйти':gt'лока'
end

if $ARGS[0] = 'итог7':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog7.jpg"></center>'
	'Натрескавшись в зюзю вы обнажили свою грудь и начали облизывать свои соски.'

	act 'Уйти':gt'лока'
end

if $ARGS[0] = 'итог8':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog8.jpg"></center>'
	'Вы с Викой напоролись и Вика стала заниматься сексом с каким то не известным парнем. Вы лежали рядом весело болтая с Викой пока ее драл пьяный в хлам не знакомый парень.'

	act 'Уйти':gt'лока'
	act 'Ласкать Вику':
		cla
		*clr
		$girl = 'Вика'
		sex = sex + 1
		if vikasex = 0:vikasex = 1 & sexf = sexf + 1
		horny = horny + 60

		'<center><img src="images/picvag/tri.jpg"></center>'
		'Вы целуете и ласкаете грудь Вики, она очень возбуждена и вы решили дать ей полизать вашу киску.'
		if horny < 100:'Вы начали уставать от вылизывания и захотелось продолжения'
		if horny >= 100:horny = 0 & 'Мышцы вагины начали резко сокращаться, весь низ живота как будто накрыла горячая волна удовольствия, вы кричите от мощного оргазма.'
		'Парень достает свой член из Вики и подняв ее вставляет ей свой член в рот.'

		act 'Наблюдать':
			cla
			*clr
			'<center><img src="images/picvag/tri4.jpg"></center>'
			'Парень кончает Вике в рот. Губы Вики перемазаны в сперме и она тянется к вам что бы поцеловали ее.'

			act 'Целоваться с Викой':
				cla
				*clr
				cumlip = cumlip + 1

				'<center><img src="images/picvag/tri3.jpg"></center>'
				'Вы целуетесь слизывая друг с друга сперму.'

				act 'Уйти':gt'лока'
			end
		end
		act 'Сосать вместе с Викой':
			cla
			*clr
			sexm = sexm + 1
			oral = oral + 1
			cumface = cumface + 1

			'<center><img src="images/picvag/tri2.jpg"></center>'
			'Вы отсасываете член вместе с Викой, наконец парень кончает вам на лица.'

			act 'Целоваться с Викой':
				cla
				*clr
				cumlip = cumlip + 1

				'<center><img src="images/picvag/tri3.jpg"></center>'
				'Вы целуетесь слизывая друг с друга сперму.'

				act 'Уйти':gt'лока'
			end
		end
	end
end

if $ARGS[0] = 'итог9':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog9.jpg"></center>'
	'Девчонки любят веселится, вы с двумя подружками устроили пьяное лесби шоу прямо на вечеринке. Лаская, целуя и тиская друг друга на глазах у всех.'

	act 'Уйти':gt'лока'
end

if $ARGS[0] = 'итог10':
	cla
	repa = repa + 1

	'<center><img src="images/picparty/itog10.jpg"></center>'
	'Вы напились и танцевали с каким то парнем, который грязно лапал вас за сиськи.'

	act 'Уйти':gt'лока'
	act 'Потрогать за ширинку':
		cla
		repa = repa + 1
		sexm = sexm + 1
		gs'boy'
		gt'BJ','начало'
	end
end
--- вечеринка ---------------------------------

