# Холл
clr
*clr
minut = minut + 5
gs'stat'

'<right><img src="images/casino/zdcasino.jpg"></right>'
'Вы вошли в холл гигантского здания казино.'
'Вы можете пойти:'

act 'Выйти из казино':
	gt'casino'
end

picrand = RAND(0,2)
if picrand = 0:'<right><img src="images/casino/hcasino1.jpg"></right>'
if picrand = 1:'<right><img src="images/casino/hcasino2.jpg"></right>'
if picrand = 2:'<right><img src="images/casino/hcasino3.jpg"></right>'

'К <a href="exec:GT ''метрдотель''">метрдотелю</a>'
'В зал <a href="exec:GT ''игравт''">игровых автоматов</a>'
'В зал игр в <a href="exec:GT ''рулетка''">рулетку</a>'
'В зал игр в <a href="exec:GT ''карты''">карты</a>'
!'В <a href="exec:GT ''ресторан''">ресторан</a>'
!'В <a href="exec:GT ''бар''">бар</a>'
!'В <a href="exec:GT ''театр''">театр</a>'
'К <a href="exec:GT ''гостиница''">гостинице</a>'
--- Холл ---------------------------------

