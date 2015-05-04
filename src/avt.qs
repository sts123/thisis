# avt
!tehNT = 200
!tehT = RAND(10,200)

if tehT >= tehNT*75/100:$tehT = 'Машина в отличном состоянии.'
if tehT < tehNT*75/100 and tehT >= tehNT*50/100:$tehT = 'При работе двигателя есть какие то посторонние шумы'
if tehT < tehNT*50/100 and tehT >= tehNT*25/100:$tehT = 'Машина грохочет и дымит.'
if tehT < tehNT*25/100:$tehT = 'Как этот унитаз сумел завестись совершенно не понятно.'

if carT = 1:
	if tehT >= tehNT*75/100:bupay = RAND(100000,180000)
	if tehT < tehNT*75/100 and tehT >= tehNT*50/100:bupay = RAND(60000,130000)
	if tehT < tehNT*50/100 and tehT >= tehNT*25/100:bupay = RAND(35000,65000)
	if tehT < tehNT*25/100:bupay = RAND(15000,50000)
elseif carT = 2:
	if tehT >= tehNT*75/100:bupay = RAND(80000,100000)
	if tehT < tehNT*75/100 and tehT >= tehNT*50/100:bupay = RAND(50000,90000)
	if tehT < tehNT*50/100 and tehT >= tehNT*25/100:bupay = RAND(30000,60000)
	if tehT < tehNT*25/100:bupay = RAND(15000,40000)
end
--- avt ---------------------------------

