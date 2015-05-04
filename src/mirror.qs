# mirror
if $ARGS[0] = 'start':
	cla
	clr
	gs'stat'

	if glass <= 0:
		if shorthair = 0:
			if hcol = 0 and curly <= 0:'<center><img src="images/picb/hcol.jpg"></center>'
			if hcol = 1 and curly <= 0:'<center><img src="images/picb/hcol1.jpg"></center>'
			if hcol = 2 and curly <= 0:'<center><img src="images/picb/hcol2.jpg"></center>'
			if hcol = 3 and curly <= 0:'<center><img src="images/picb/hcol3.jpg"></center>'
			if hcol = 0 and curly > 0:'<center><img src="images/picb/hcolcurly.jpg"></center>'
			if hcol = 1 and curly > 0:'<center><img src="images/picb/hcolcurly1.jpg"></center>'
			if hcol = 2 and curly > 0:'<center><img src="images/picb/hcolcurly2.jpg"></center>'
			if hcol = 3 and curly > 0:'<center><img src="images/picb/hcolcurly3.jpg"></center>'
		elseif shorthair = 1:
			if hcol = 0:'<center><img src="images/picb/SHhcol.jpg"></center>'
			if hcol = 1:'<center><img src="images/picb/SHhcol1.jpg"></center>'
			if hcol = 2:'<center><img src="images/picb/SHhcol2.jpg"></center>'
			if hcol = 3:'<center><img src="images/picb/SHhcol3.jpg"></center>'
		end
	elseif glass > 0:
		if glass = 1:
			'<center><img src="images/picb/nerd.jpg"></center>'
		elseif glass = 2:
			if hcol = 0:'<center><img src="images/picb/hcolglass.jpg"></center>'
			if hcol = 1:'<center><img src="images/picb/hcolglass1.jpg"></center>'
			if hcol = 2:'<center><img src="images/picb/hcolglass2.jpg"></center>'
			if hcol = 3:'<center><img src="images/picb/hcolglass3.jpg"></center>'
		end
	end

	'<<$hair>> <<$mop>> <<$skin>> <<$vnesh>> <<$lip>> <<$glaza>>'

	if daystart < 10 and StoryLine = 0:'В зеркале на вас глядела совершенно чужое женское лицо которое в точности копировало все ваши действия. У вас с трудом получается смирится с мыслью, что это теперь и есть вы.'
	if daystart >= 10 and daystart < 30 and StoryLine = 0:'Из зеркала на вас смотрит женское лицо, к которому вы уже привыкли, но иногда, нет, нет да и вспыхнет мысль, что это лицо не ваше.'
	if kosmetica > 0:'Косметика <<kosmetica>>'
	if kosmetica = 0:'У вас нет косметики.'

	if hapri = 0:
		act 'Причесаться':
			cla
			minut = minut + 3
			hapri = 1
			gs'stat'

			'Вы расчесали волосы у зеркала'

			act 'Посмотреть результат':gt'mirror','start'
		end
	end

	if mop = 1 and kosmetica > 0:
		act 'Нанести макияж':
			cla
			*clr
			'<center><img src="images/pic/mop.jpg"></center>'

			act 'Легкий макияж':
				cla
				minut = minut + 3
				kosmetica = kosmetica - 1
				mop = 2
				gs'stat'

				'Вы легонечко подвели глаза и немного подкрасили губы.'

				act 'Посмотреть результат':gt'mirror','start'
			end

			if kosmetica >= 2:
				act 'Нормальный макияж':
					cla
					minut = minut + 5
					kosmetica = kosmetica - 2
					mop = 3
					gs'stat'

					'Вы накрасили губы, подвели глаза и наложили тени.'

					act 'Посмотреть результат':gt'mirror','start'
				end
			end

			if kosmetica >= 3:
				act 'Вызывающий макияж':
					cla
					minut = minut + 10
					kosmetica = kosmetica - 3
					vidageday = vidageday - 1
					mop = 4
					gs'stat'

					'Вы густо накрасили глаза, наложили тени и тушь для ресниц, накрасили контур губ карандашом и губы помадой.'

					act 'Посмотреть результат':gt'mirror','start'
				end
			end
		end
	end

	if brow < 10 and browper = 0:
		act 'Выщипывать брови':
			cla
			minut = minut + 10
			brow = 10
			manna = manna/2
			gs'stat'

			'Вы выщипали ненужные волоски на бровях придав им красивый контур. Правда это довольно больно.'

			act 'Посмотреть результат':gt'mirror','start'
		end
	end

	if lipbalm > 0 and lipbalmstat <= 0:
		act 'Намазать губы увлажняющим бальзамом':
			cla
			minut = minut + 10
			lipbalm -= 1
			lipbalmstat += 8

			lipkoef = lipkoef + RAND(5,15)
			if lipkoef > 50:
				lipkoef = 0
				lip = lip + 1
			end

			gs'stat'

			'Вы намазали губы увлажняющим бальзамом.'

			act 'Посмотреть результат':gt'mirror','start'
		end
	end

	act 'Отойти от зеркала':
		cla
		gt'mirror','fin'
	end
end

if $ARGS[0] = 'fin':
	cla

	gt $locM, $metkaM

!'
	if housr = 1 and housrA = 1 and housrMir = 0 and fitMir = 0 and saunaYouRoom = 0:
		housrA = 0
		gt'korr'
	end

	if housr = 1 and housrA = 1 and housrMir = 1 and fitMir = 0 and saunaYouRoom = 0:
		housrA = 0
		housrMir = 0
		gt'bedr'
	end

	if housrA = 0 and fitMir = 1 and saunaYouRoom = 0:
		fitMir = 0
		gt'fit','razd'
	end

	if housrA = 0 and stripMir = 1 and saunaYouRoom = 0:
		stripMir = 0
		gt'stwork','start'
	end

	if housrA = 0 and palMir = 1 and saunaYouRoom = 0:
		palMir = 0
		gt'palatka','start'
	end

	if saunaYouRoom = 1:
		saunaYouRoom = 0
		gt $locBroom, $metkaBroom
	end

	if housrA = 0 and obMir = 1:
		obMir = 0
		gt'obroom','start'
	end

	if housrA = 0 and borMir = 1:
		borMir = 0
		gt'bordel','start'
	end

	if housrA = 0 and tanhouse1 = 1:
		tanhouse1 = 0
		gt'spalnya'
	end
'
end
--- mirror ---------------------------------

