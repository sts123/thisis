# Palatka
if $ARGS[0] = 'start':
	$sexloc = $CURLOC
	$metkaM = $ARGS[0]
	$locM = $CURLOC

	palMir = 1
	gs'stat'

	'<center><b><font color = maroon>Палатка</font></b></center>'
	'<center><img src="images/img/military/palatka.jpg"></center>'

	palrand = RAND(0,10)
	if palrand = 0:gt'Palatka','pal0'
	if palrand = 1:gt'Palatka','pal1'

	'К вашему удивлению палатка довольно просторная здесь есть кровать, <a href="exec: gt''mirror'',''start''">зеркалом</a> и даже сделан импровизорованый <a href="exec: gt''vann'',''start''">душ</a>.'

	act 'Выйти':gt'Military','start'
	act 'Спать':
		hour += 8
		son = 24
		gt'palatka','start'
	end
end

if $ARGS[0] = 'pal0':
	cla
	*clr
	'<center><img src="images/img/military/pal0.jpg"></center>'
	'Только вы начинаете переодеваться как в палатку входят двое солдат и увидев вас полуголую, подбегают к вам с членами на перевес, вы хватаете их за члены, а вот что делать дальше сжать посильнее и вывести их из палатки или расслабиться после тяжелого дня.'

	act 'Послать':gt'palatka','start'
	act 'Дать':
		guy += 2
		picrand = 22
		xgt'sexdvoe','var'
	end
end

if $ARGS[0] = 'pal1':
	cla
	*clr
	'<center><img src="images/img/military/pal1.jpg"></center>'
	'Заходя в палатку вы спотыкаетесь и уже летите носом в землю, но вдруг вас подхватывают сильные руки, открыв глаза вы видите здоровенного негра.'

	act 'Сказать спасибо':gt'palatka','start'
	act 'Отблагодарить по полной':
		guy += 1
		picrand = 43
		gt'sex','minet'
	end
end
--- Palatka ---------------------------------

