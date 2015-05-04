# NormPR
if $ARGS[0] = '1':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	prosti = 0
	minut = minut + 15
	sex = sex + 1
	protect = 1
	gs'stat'

	sexprostRand = RAND(0,1)
	if sexprostRand = 0:
		'<center><img src="images/prost/sexcar.jpg"></center>'
		'Вы голая покорно лежали на заднем сиденье, пока в вашу дырочку входил член.'

		gs'orgazm','start'
	elseif sexprostRand = 1:
		'<center><img src="images/prost/sexcar2.jpg"></center>'
		'Став на четвереньки вы ощутили как уверенным движением вас насадили на член.'

		gs'orgazm','start'
	end

	act 'Уйти':gt $locSex, $metkaSex
end

if $ARGS[0] = '2':
	$metka = $ARGS[0]
	$loc = $CURLOC

	cla
	clr
	*clr
	prosti = 0
	minut = minut + 15
	sex = sex + 1
	gs'stat'

	prostRand = RAND(0,100)
	if prostRand > 0 and prostRand <= 50:
		picpRand = RAND(1,7)
		pose = 1

		'Став раком, вы чувствовали горячую залупу стремящеюся попасть во влагалище.'

		gs'orgazm','start'
	elseif prostRand > 50 and prostRand <= 75:
		picpRand = RAND(8,10)
		pose = 1

		'Стоя на четвереньках вы ощутили как в дырочку уперся член.'

		gs'orgazm','start'
	elseif prostRand > 75 and prostRand <= 100:
		pose = 0
		picpRand = RAND(11,17)

		'Вам приказали раздеваться и ложиться на капот машины.'

		gs'orgazm','start'
	end

	if picpRand = 1:'<center><img src="images/prost/sexcar3.jpg"></center>'
	if picpRand = 2:'<center><img src="images/prost/sexcar4.jpg"></center>'
	if picpRand = 3:'<center><img src="images/prost/sexcar5.jpg"></center>'
	if picpRand = 4:'<center><img src="images/prost/sexcar6.jpg"></center>'
	if picpRand = 5:'<center><img src="images/prost/sexcar7.jpg"></center>'
	if picpRand = 6:'<center><img src="images/prost/sexcar8.jpg"></center>'
	if picpRand = 7:'<center><img src="images/prost/sexcar9.jpg"></center>'
	if picpRand = 8:'<center><img src="images/prost/sexcar10.jpg"></center>'
	if picpRand = 9:'<center><img src="images/prost/sexcar11.jpg"></center>'
	if picpRand = 10:'<center><img src="images/prost/sexcar12.jpg"></center>'
	if picpRand = 11:'<center><img src="images/prost/sexcar13.jpg"></center>'
	if picpRand = 12:'<center><img src="images/prost/sexcar14.jpg"></center>'
	if picpRand = 13:'<center><img src="images/prost/sexcar15.jpg"></center>'
	if picpRand = 14:'<center><img src="images/prost/sexcar16.jpg"></center>'
	if picpRand = 15:'<center><img src="images/prost/sexcar17.jpg"></center>'
	if picpRand = 16:'<center><img src="images/prost/sexcar18.jpg"></center>'
	if picpRand = 17:'<center><img src="images/prost/sexcar19.jpg"></center>'

	act 'Уйти':gt $locSex, $metkaSex
end
--- NormPR ---------------------------------

