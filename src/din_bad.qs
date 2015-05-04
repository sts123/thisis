# din_bad
$d_salf = {
	clr
	salfetka -= 1
	pl'<a href="exec:gs''stat''"><b>Выкинуть салфетку</b></a>'
	if cumface > 0:pl'<a href="exec:cumface -= 1 & gs''stat''"><b>Вытереть лицо</b></a>'
	if cumfrot > 0:pl'<a href="exec:cumfrot -= 1 & gs''stat''"><b>Вытереть одежду</b></a>'
	if mop ! 1:pl'<a href="exec:mop = 1 & gs''stat''"><b>Стереть косметику</b></a>'
}

$d_kosmetitka = {
	clr
	pl'<a href="exec:gs''stat''"><b>Закрыть косметичку</b></a>'
	if kosmetitka >= 1:pl'<a href="exec:mop = 2 & kosmetitka -= 1 & gs''stat''"><b>Легкий макияж</b></a>'
	if kosmetitka >= 2:pl'<a href="exec:mop = 3 & kosmetitka -= 2 & gs''stat''"><b>Нормальный макияж</b></a>'
	if kosmetitka >= 3:pl'<a href="exec:mop = 4 & kosmetitka -= 3 & gs''stat''"><b>Густой макияж</b></a>'
}

$d_bag = {
	clr
	pl'<a href="exec:gs''stat''"><b>Закрыть сумочку</b></a>'

	if salfetka > 0:pl'У вас есть влажные салфетки, <<salfetka>> штук. <a href="exec:dynamic $d_salf"><b>Взять салфетку</b></a>'
	if kosmetitka > 0 and mop = 1:pl'У вас есть переносная косметичка. Косметики хватит на <<kosmetitka>> раз. <a href="exec:dynamic $d_kosmetitka"><b>Накраситься</b></a>'
	if kosmetitka > 0 and mop ! 1:pl'У вас есть переносная косметичка. Косметики хватит на <<kosmetitka>> раз.'
	if greben > 0 and hapri = 0:pl'У вас есть расческа. <a href="exec:hapri = 1 & gs''stat''"><b>Причесаться</b></a>'
	if greben > 0 and hapri = 1:pl'У вас есть расческа.'
	if prezik > 0:pl'У вас <<prezik>> презервативов.'
	if tabletki > 0:pl'У вас <<tabletki>> противозачаточных таблеток.'
	if bottle > 0:pl'У вас есть бутылочка воды. <a href="exec:bottle = 0 & water = 20 & cumlip = 0 & gs''stat''"><b>Выпить</b></a>'
	if buterbrod > 0:pl'У вас есть бутерброд. <a href="exec:buterbrod = 0 & energy += 20 & cumlip = 0 & salo += 1 & gs''stat''"><b>Съесть</b></a>'
	if wine = 1:pl'В сумочке лежит бутылка вина'
}
--- din_bad ---------------------------------

