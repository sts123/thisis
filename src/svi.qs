# svi
if $ARGS[0] = 'poor':
	minut = minut + 20

	if Venera >= 3:
		bfA = 0

		'<<$boyA>> увидел у вас признаки венерического заболевания и бросил вас.'

		act 'Уйти':gt'street'

		exit
	end

	if sweat > 1:
		!вспотели
		bfA = bfA - 1

		if harakBoyA = 0:'<<$boyA>> говорит вам, что у него появились срочные дела.'
		if harakBoyA = 1:'<<$boyA>> брезгливо морщит нос и говорит вам, что у него появились срочные дела.'
		if harakBoyA = 2:'<<$boyA>> говорит вам, что вам не мешало бы помыться.'
		if harakBoyA = 3:'<<$boyA>> говорит вам, что у неё появились срочные дела.'
		if harakBoyA = 4:'<<$boyA>> брезгливо морщит нос и говорит вам, что у неё появились срочные дела.'
		if harakBoyA = 5:'<<$boyA>> говорит вам, что вам не мешало бы помыться.'

		act 'Уйти':gt'street'

		exit
	end

	if vatnik = 2:
		!ватник
		bfA = bfA - 1

		if harakBoyA = 0:'<<$boyA>> говорит вам, что у него появились срочные дела.'
		if harakBoyA = 1:'<<$boyA>> презрительно смотрит на вас и говорит вам, что у него появились срочные дела.'
		if harakBoyA = 2:'<<$boyA>> говорит вам, что в этом рванье вы похожи на пугало.'
		if harakBoyA = 3:'<<$boyA>> говорит вам, что у неё появились срочные дела.'
		if harakBoyA = 4:'<<$boyA>> презрительно смотрит на вас и говорит вам, что у неё появились срочные дела.'
		if harakBoyA = 5:'<<$boyA>> говорит вам, что в этом рванье вы похожи на пугало.'

		act 'Уйти':gt'street'

		exit
	end

	if harakBoyA > 0 and izvrat = 0 and (cumface > 0 or cumlip > 0):
		bfA = 0

		'<<$boyA>> увидел на вас следы спермы. Он обозвал вас шалавой и разорвал отношения с вами.'

		act 'Уйти':gt'street'

		exit
	end

	if daya < 10 and boyonceA = 0:
		!конфетно букетный период
		vstrand = RAND(0,2)
		if vstrand = 0:
			'<<$boyA>> предлагает погулять в парке.'

			act 'Погулять в парке':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'Вы погуляли в парке с парнем. <<$boyA>> рассказывал истории и травил анекдоты.'

				act 'Пригласить к себе':
					cla
					if dayA < 3:bfA = bfA - 1
					gt'svidan','kvartA'
				end
				act 'Попрощаться и идти домой':
					cla
					bfA = bfA + 1
					gt'street'
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		elseif vstrand = 1:
			'<<$boyA>> предлагает пойти в кинотеатр.'

			act 'Пойти в кинотеатр':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'Вы пошли в кинотеатр на новый фильм. <<$boyA>> обнял вас.'

				act 'Обнять его руку':
					cla
					bfA = bfA + 1

					'Вы смотрите фильм обнимая парня за руку. Наконец фильм заканчивается.'

					act 'Пригласить к себе':
						cla
						if dayA < 3:bfA = bfA - 1
						gt'svidan','kvartA'
					end
					act 'Попрощаться и идти домой':
						cla
						bfA = bfA + 1
						gt'street'
					end
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		elseif vstrand = 2:
			'<<$boyA>> предлагает попить пивасика в подъезде.'

			act 'Пить пиво':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'<<$boyA>> купил пивасика и сухариков и вы пошли с ним в подъезд, где выпивали и весело болтали.'

				act 'Пригласить к себе':
					cla
					if dayA < 3:bfA = bfA - 1
					gt'svidan','kvartA'
				end
				act 'Попрощаться и идти домой':
					cla
					bfA = bfA + 1
					gt'street'
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		end
	elseif daya >= 10 and boyonceA = 0:
		'<<$boyA>> говорит, что он взрослый мужчина и его не устраивают платонические отношения.'

		act 'Расстаться':
			cla
			bfA = 0
			gt'street'
		end
		act 'Согласиться на секс':
			cla
			*clr
			minut = minut + 20

			'Вы согласились на секс. <<$boyA>> обрадовался.'

			act 'Пойти в вашу квартиру':gt'svidan','kvartA'
			act 'Пойти в кусты':gt'svidan','kustA'
		end

		exit
	end

	if dayA > 15:gs'boylove','haer'
	if dayA > 30:gs'boylove','figure'
	if dayA > 60:gs'boylove','tits'

	if boyonceA > 0:
		'<<$boyA>> предлагает потусить в подъезде с пивасиком.'

		act 'Потусить':
			cla
			minut = minut + 60
			fat = fat + 1
			bfA = bfA + 1

			'Вы выпивали пиво в подъезде со своим парнем. <<$boyA>> обнял вас и сказал, что он хочет вас.'

			act 'Пойти в вашу квартиру':gt'svidan','kvartA'
			act 'Пойти в кусты':gt'svidan','kustA'
		end
		act 'Отказаться':
			cla
			bfA = bfA - 1
			gt'street'
		end
	end
end

if $ARGS[0] = 'norm':
	minut = minut + 20

	if Venera >= 3:
		bfA = 0

		'<<$boyA>> увидел у вас признаки венерического заболевания и бросил вас.'

		act 'Уйти':gt'street'

		exit
	end

	if sweat > 1:
		!вспотели
		bfA = bfA - 1

		if harakBoyA = 0:'<<$boyA>> говорит вам, что у него появились срочные дела.'
		if harakBoyA = 1:'<<$boyA>> брезгливо морщит нос и говорит вам, что у него появились срочные дела.'
		if harakBoyA = 2:'<<$boyA>> говорит вам, что вам не мешало бы помыться.'

		act 'Уйти':gt'street'

		exit
	end

	if vatnik = 2:
		!ватник
		bfA = bfA - 1

		if harakBoyA = 0:'<<$boyA>> говорит вам, что у него появились срочные дела.'
		if harakBoyA = 1:'<<$boyA>> презрительно смотрит на вас и говорит вам, что у него появились срочные дела.'
		if harakBoyA = 2:'<<$boyA>> говорит вам, что в этом рванье вы похожи на пугало.'

		act 'Уйти':gt'street'

		exit
	end

	if harakBoyA >0 and izvrat = 0 and (cumface > 0 or cumlip > 0):
		bfA = 0

		'<<$boyA>> увидел на вас следы спермы. Он обозвал вас шалавой и разорвал отношения с вами.'

		act 'Уйти':gt'street'

		exit
	end

	if daya < 10 and boyonceA = 0:
		!конфетно букетный период
		vstrand = RAND(0,2)
		if vstrand = 0:
			'<<$boyA>> предлагает пойти в кафе.'

			act 'Пойти в кафе':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'Вы пошли в кафе вместе с парнем. <<$boyA>> рассказывал истории и травил анекдоты.'

				act 'Пригласить к себе':
					cla
					if dayA < 3:bfA = bfA - 1
					gt'svidan','kvartA'
				end
				act 'Попрощаться и идти домой':
					cla
					bfA = bfA + 1
					gt'street'
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		elseif vstrand = 1:
			'<<$boyA>> предлагает пойти в кинотеатр.'
			act 'Пойти в кинотеатр':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'Вы пошли в кинотеатр на новый фильм. <<$boyA>> обнял вас.'

				act 'Обнять его руку':
					cla
					bfA = bfA + 1

					'Вы смотрите фильм обнимая парня за руку. Наконец фильм заканчивается.'

					act 'Пригласить к себе':
						cla
						if dayA < 3:bfA = bfA - 1
						gt'svidan','kvartA'
					end
					act 'Попрощаться и идти домой':
						cla
						bfA = bfA + 1
						gt'street'
					end
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		elseif vstrand = 2:
			'<<$boyA>> предлагает погулять.'

			act 'Гулять':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'<<$boyA>> взял вас под ручку и вы прогуливались по улице общаясь.'

				act 'Пригласить к себе':
					cla
					if dayA < 3:bfA = bfA - 1
					gt'svidan','kvartA'
				end
				act 'Попрощаться и идти домой':
					cla
					bfA = bfA + 1
					gt'street'
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		end
	elseif daya >= 10 and boyonceA = 0:
		'<<$boyA>> говорит, что он взрослый мужчина и его не устраивают платонические отношения.'

		act 'Расстаться':
			cla
			bfA = 0
			gt'street'
		end
		act 'Согласиться на секс':
			cla
			*clr
			minut = minut + 20

			'Вы согласились на секс. <<$boyA>> обрадовался.'

			act 'Пойти в вашу квартиру':gt'svidan','kvartA'
			act 'Пойти в его машину':gt'svidan','carA'
		end

		exit
	end

	if dayA > 12 and skin < 2:bfA = bfA - 1
	if dayA > 12:gs'boylove','haer'
	if dayA > 24:gs'boylove','figure'
	if dayA > 48:gs'boylove','tits'
	if dayA > 22 and glaraz < 1:bfA = bfA - 1
	if dayA > 40 and lip < 1:bfA = bfA - 1

	if boyonceA > 0:
		'<<$boyA>> предлагает посидеть в кафе.'

		act 'В кафе':
			cla
			minut = minut + 60
			fat = fat + 1
			bfA = bfA + 1

			'Вы пришли в кафе, <<$boyA>> заказал полный стол и вы сидели разговаривая и развлекаясь. <<$boyA>> обнял вас и сказал, что он хочет вас.'

			act 'Пойти в вашу квартиру':gt'svidan','kvartA'
			act 'Пойти в его машину':gt'svidan','carA'
		end
		act 'Отказаться':
			cla
			bfA = bfA - 1
			gt'street'
		end
	end
end

if $ARGS[0] = 'reach':
	minut = minut + 20

	if Venera >= 3:
		bfA = 0

		'<<$boyA>> увидел у вас признаки венерического заболевания и бросил вас.'

		act 'Уйти':gt'street'

		exit
	end

	if sweat > 1:
		!вспотели
		bfA = bfA - 1

		if harakBoyA = 0:'<<$boyA>> говорит вам, что у него появились срочные дела.'
		if harakBoyA = 1:'<<$boyA>> брезгливо морщит нос и говорит вам, что у него появились срочные дела.'
		if harakBoyA = 2:'<<$boyA>> говорит вам, что вам не мешало бы помыться.'

		act 'Уйти':gt'street'

		exit
	end

	if vatnik = 2:
		!ватник
		bfA = bfA - 1

		if harakBoyA = 0:'<<$boyA>> говорит вам, что у него появились срочные дела.'
		if harakBoyA = 1:'<<$boyA>> презрительно смотрит на вас и говорит вам, что у него появились срочные дела.'
		if harakBoyA = 2:'<<$boyA>> говорит вам, что в этом рванье вы похожи на пугало.'

		act 'Уйти':gt'street'

		exit
	end

	if harakBoyA > 0 and izvrat = 0 and (cumface > 0 or cumlip > 0):
		bfA = 0

		'<<$boyA>> увидел на вас следы спермы. Он обозвал вас шалавой и разорвал отношения с вами.'

		act 'Уйти':gt'street'

		exit
	end

	if dayA > 5 and skin < 3:bfA = bfA - 1
	if dayA > 10:gs'boylove','haer'
	if dayA > 20:gs'boylove','figure'
	if dayA > 30:gs'boylove','tits'
	if dayA > 10 and glaraz < 2:bfA = bfA - 1
	if dayA > 6 and lip < 2:bfA = bfA - 1
	if dayA > 8 and resnic < 1:bfA = bfA - 1

	if daya < 10 and boyonceA = 0:
		!конфетно букетный период
		vstrand = RAND(0,2)
		if vstrand = 0:
			'<<$boyA>> предлагает пойти в кафе.'

			act 'Пойти в кафе':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'Вы пошли в кафе вместе с парнем. <<$boyA>> рассказывал истории и травил анекдоты.'

				act 'Пригласить к себе':
					cla
					if dayA < 3:bfA = bfA - 1
					gt'svidan','kvartA'
				end
				act 'Попрощаться и идти домой':
					cla
					bfA = bfA + 1
					gt'street'
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		elseif vstrand = 1:
			'<<$boyA>> предлагает пойти в кинотеатр.'

			act 'Пойти в кинотеатр':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'Вы пошли в кинотеатр на новый фильм. <<$boyA>> обнял вас.'

				act 'Обнять его руку':
					cla
					bfA = bfA + 1

					'Вы смотрите фильм обнимая парня за руку. Наконец фильм заканчивается.'

					act 'Пригласить к себе':
						cla
						if dayA < 3:bfA = bfA - 1
						gt'svidan','kvartA'
					end
					act 'Попрощаться и идти домой':
						cla
						bfA = bfA + 1
						gt'street'
					end
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		elseif vstrand = 2:
			'<<$boyA>> предлагает пойти в ресторан.'

			act 'Пойти в ресторан':
				cla
				minut = minut + 60
				fat = fat + 1
				bfA = bfA + 1

				'<<$boyA>> привел вас в ресторан. Там официант быстро накрыл столик и вы сидели наслаждаясь едой, вином и общением'

				act 'Пригласить к себе':
					cla
					if dayA < 3:bfA = bfA - 1
					gt'svidan','kvartA'
				end
				act 'Попрощаться и идти домой':
					cla
					bfA = bfA + 1
					gt'street'
				end
			end
			act 'Отказаться':
				cla
				bfA = bfA - 1
				gt'street'
			end
		end
	elseif daya >= 10 and boyonceA = 0:
		'<<$boyA>> говорит, что он взрослый мужчина и его не устраивают платонические отношения.'

		act 'Расстаться':
			cla
			bfA = 0
			gt'street'
		end
		act 'Согласиться на секс':
			cla
			*clr
			minut = minut + 20

			'Вы согласились на секс. <<$boyA>> обрадовался.'

			act 'Пойти в вашу квартиру':gt'svidan','kvartA'
			act 'Поехать к нему':gt'svidan','hisA'
		end

		exit
	elseif boyonceA > 0:
		'<<$boyA>> предлагает посидеть в кафе.'

		act 'В кафе':
			cla
			minut = minut + 60
			fat = fat + 1
			bfA = bfA + 1

			'Вы пришли в кафе, <<$boyA>> заказал полный стол и вы сидели разговаривая и развлекаясь. <<$boyA>> обнял вас и сказал, что он хочет вас.'

			act 'Пойти в вашу квартиру':gt'svidan','kvartA'
			act 'Пойти к нему':gt'svidan','hisA'
		end
		act 'Отказаться':
			cla
			bfA = bfA - 1
			gt'street'
		end
	end
end
--- svi ---------------------------------

