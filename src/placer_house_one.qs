# placer_house_one
alko += 10
gs'stat'

'Вы пошли с парнем к нему домой.'

!tipsexrand = RAND(0,1)
tipsexrand = 0
if tipsexrand = 0:
	'В подъезде парень неожиданно обнял вас и начал целовать.'

	act 'Целоваться с парнем':
		cls
		horny += 10
		gs'stat'

		'Парень расстегнул ширинку и достал член, его руки мягко нажали вам на плечи.'

		act 'Сесть на корточки':
			cls
			horny += 10
			guy += 1
			bj += 1
			minut += 15
			gs'stat'

			'<center><img src="images/qwest/alter/placer/bjdan.jpg"></center>'
			'Вы сели на корточки перед парнем и поцеловали его стоячий член, после чего вы обхватили его губами и начали сосать. Через некоторое время парень намного застонал и вы поняли, что он собирается кончить.'

			act 'Обхватить губами':
				cls
				cumlip += 1
				gs'stat'

				'<center><img src="images/qwest/alter/placer/cum.jpg"></center>'
				'Вы обхватили член своими <<$liptalk>> и вам в рот выстрелила сперма, вы продолжали сосать и парень кончал вам в рот.'

				act 'Проглотить':
					cls
					swallow += 1
					vaf += 1
					sub += 1
					gs'stat'

					'<center><img src="images/qwest/alter/placer/swallow.jpg"></center>'
					'Вы проглотили сперму вашего случайного знакомого, после чего в вашем рту осталось мерзкое послевкусие мужского семени. Вы открыли свой ротик и высунули язык показав что проглотили сперму. Парень погладил вас по голове "А ты классная хуесоска."'

					act 'Обсосать до суха':
						cls
						vaf += 1
						sub += 1
						gs'stat'

						'<center><img src="images/qwest/alter/placer/clean.jpg"></center>'
						'Улыбнувшись в наклонились к члену и собрали языком и губами остатки спермы с него.'

						act 'Уйти':gt'placer_end'
					end
				end
				act 'Выплюнуть':
					cls
					swallow += 1
					dom += 1
					gs'stat'

					'<center><img src="images/qwest/alter/placer/bjdan.jpg"></center>'
					'Вы сморщились и выплюнули сперму изо рта на пол.'

					act 'Уйти':gt'placer_end'
				end
			end
		end
	end
end
!if tipsexrand = 1:
!	''
!end
--- placer_house_one ---------------------------------

