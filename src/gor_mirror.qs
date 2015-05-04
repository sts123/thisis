# gor_mirror
if $ARGS[0] = 'start':
	cla
	clr
	gs'stat'

	if hcol = 0 and curly <= 0:'<center><img src="images/picb/hcol.jpg"></center>'
	if hcol = 1 and curly <= 0:'<center><img src="images/picb/hcol1.jpg"></center>'
	if hcol = 2 and curly <= 0:'<center><img src="images/picb/hcol2.jpg"></center>'
	if hcol = 3 and curly <= 0:'<center><img src="images/picb/hcol3.jpg"></center>'
	if hcol = 0 and curly > 0:'<center><img src="images/picb/hcolcurly.jpg"></center>'
	if hcol = 1 and curly > 0:'<center><img src="images/picb/hcolcurly1.jpg"></center>'
	if hcol = 2 and curly > 0:'<center><img src="images/picb/hcolcurly2.jpg"></center>'
	if hcol = 3 and curly > 0:'<center><img src="images/picb/hcolcurly3.jpg"></center>'

	'<<$hair>> <<$mop>> <<$skin>> <<$vnesh>>'

	if kosmetica > 0:'Косметика <<kosmetica>>'
	if kosmetica = 0:'У вас нет косметики.'

	if hapri = 0:
		act 'Причесаться':
			cla
			minut = minut + 3
			hapri = 1

			act 'Посмотреть результат':gt'gor_mirror','start'
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

				'Вы легонечко подвели глаза и немного подкрасили губы.'

				act 'Посмотреть результат':gt'gor_mirror','start'
			end

			if kosmetica >= 2:
				act 'Нормальный макияж':
					cla
					minut = minut + 5
					kosmetica = kosmetica - 2
					mop = 3

					'Вы накрасили губы, подвели глаза и наложили тени.'

					act 'Посмотреть результат':gt'gor_mirror','start'
				end
			end

			if kosmetica >= 3:
				act 'Вызывающий макияж':
					cla
					minut = minut + 10
					kosmetica = kosmetica - 3
					vidageday = vidageday - 1
					mop = 4

					'Вы густо накрасили глаза, наложили тени и тушь для ресниц, накрасили контур губ карандашом и губы помадой.'

					act 'Посмотреть результат':gt'gor_mirror','start'
				end
			end
		end
	end

	if lipbalm > 0 and lipbalmstat <= 0:
		act 'Намазать губы увлажняющим бальзамом':
			cla
			minut = minut + 10
			lipbalm-=1
			lipbalmstat+=8

			lipkoef = lipkoef + RAND(5,15)
			if lipkoef > 50:
				lipkoef = 0
				lip = lip + 1
			end

			'Вы намазали губы увлажняющим бальзамом.'

			act 'Посмотреть результат':gt'gor_mirror','start'
		end
	end

	act 'Отойти от зеркала':
		cla
		gt'dom_gor'
	end
end
--- gor_mirror ---------------------------------

