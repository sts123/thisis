# gor_exh
if $ARGS[0] = 'pos1':
	cla
	*clr
	minut+=5
	gs'stat'

	if cloth_vid = 1:'<center><img src="images/etogame/cloth_bimbo.jpg"></center>'
	if nude = 0 and hcol = 0 and curly <= 0 and cloth_vid = 0:'<center><img src="images/picb/hcol.jpg"></center>'
	if nude = 0 and hcol = 1 and curly <= 0 and cloth_vid = 0:'<center><img src="images/picb/hcol1.jpg"></center>'
	if nude = 0 and hcol = 2 and curly <= 0 and cloth_vid = 0:'<center><img src="images/picb/hcol2.jpg"></center>'
	if nude = 0 and hcol = 3 and curly <= 0 and cloth_vid = 0:'<center><img src="images/picb/hcol3.jpg"></center>'
	if nude = 0 and hcol = 0 and curly > 0 and cloth_vid = 0:'<center><img src="images/picb/hcolcurly.jpg"></center>'
	if nude = 0 and hcol = 1 and curly > 0 and cloth_vid = 0:'<center><img src="images/picb/hcolcurly1.jpg"></center>'
	if nude = 0 and hcol = 2 and curly > 0 and cloth_vid = 0:'<center><img src="images/picb/hcolcurly2.jpg"></center>'
	if nude = 0 and hcol = 3 and curly > 0 and cloth_vid = 0:'<center><img src="images/picb/hcolcurly3.jpg"></center>'

	if nude = 1:
		if tanga = 0:'<center><img src="images/etogame/fat2.jpg"></center>'
		if tanga = 1:'<center><img src="images/etogame/fat1.jpg"></center>'
	end

	if exhibi >= 2 and ski = 1 and hcol = 3 and lip >= 3 and skin >= 2 and mop = 4 or glamur = 1 and hcol = 3 and lip >= 3 and skin >= 2 and mop = 4:
		act 'Одеться как Бимбо':
			cla
			*clr
			cloth_vid = 1

			'<center><img src="images/etogame/cloth_bimbo.jpg"></center>'
			'Вы оделись в стиле бимбо, теперь к вам не возможно относится серьезно.'

			act 'Выход':gt'dom_gor'
		end
	end

	if pants[5] = 1:
		act 'Использовать леггинсы как спортивные брюки':
			cla
			*clr
			cloth_vid = 2

			'<center><img src="images/etogame/leggins.jpg"></center>'
			'Если сильно их растягивать, они становятся прозрачными. Вы уверены, что в них можно заниматься спортом на улице?'

			act 'Выход':gt'dom_gor'
		end
	end

	if exhibi < 1: 'У вас пока нет готовых нарядов.'
	if exhibi >= 1: 'Я могу натянуть леггинсы и короткую майку и в таком виде выйти на пробежку.'
	if exhibi >= 2: 'Если я одену юбку или короткое платье, перекрашусь в блондинку, нанесу на ухоженную кожу тонну косметики, то буду выглядеть совсем как бимбо.'

	'У вас в гардеробе имеется:'
	if bikini > 0:'Бикини.'
	if pants[5] = 1:'Леггинсы.'
	if jeans[1] = 1 or jeans[2] = 1 or jeans[3] = 1 or jeans[4] = 1 or jeans[5] = 1:'Обычные джинсы.'
	if yoga[1] = 1 or yoga[2] = 1 or yoga[3] = 1 or yoga[4] = 1 or yoga[5] = 1 or yoga[6] = 1 or yoga[7] = 1 or yoga[8] = 1 or yoga[9] = 1 or yoga[10] = 1 or yoga[11] = 1 or yoga[12] = 1 or yoga[13] = 1 or yoga[14] = 1 or yoga[15] = 1 or yoga[16] = 1 or yoga[17] = 1 or yoga[18] = 1:'Спортивки.'
	if sarafan[1] = 1 or sarafan[2] = 1 or sarafan[3] = 1:'Сарафаны.'
	if short[1] = 1 or short[2] = 1 or short[3] = 1 or short[4] = 1 or short[5] = 1:'Шорты.'
	if skirt[1] = 1 or skirt[2] = 1 or skirt[3] = 1 or skirt[4] = 1 or skirt[5] = 1:'Юбки.'
	if profi[1] = 1 or profi[2] = 1:'Деловая одежда.'

	act 'Закончить':gt'dom_gor'
end
--- gor_exh ---------------------------------

