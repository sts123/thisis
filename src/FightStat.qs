# FightStat
if endur > endurMax*75/100:$endur = 'Вы активны и бодры'
if endur > endurMax*50/100 and endur <= endurMax*75/100:$endur = 'Вы сильно вспотели'
if endur > endurMax*25/100 and endur <= endurMax*50/100:$endur = 'Вы устали и задыхаетесь'
if endur <= endurMax*25/100:$endur = 'Вы едва соображаете где вы находитесь от сильной усталости'

if endure > endurMaxe*75/100:$endure = '<<$nameE>> активна и бодра'
if endure > endurMaxe*50/100 and endure <= endurMaxe*75/100:$endure = '<<$nameE>> сильно вспотела'
if endure > endurMaxe*25/100 and endure <= endurMaxe*50/100:$endure = '<<$nameE>> устала и задыхается'
if endure <= endurMaxe*25/100:$endure = '<<$nameE>> едва стоит от сильной усталости'

if lustw > lustMax*75/100:$lust = 'Вы полны решимости показать вашей сопернице где раки зимуют'
if lustw > lustMax*50/100 and lustw <= lustMax*75/100:$lust = 'Вы немного озадачены упорством соперницы'
if lustw > lustMax*25/100 and lustw <= lustMax*50/100:$lust = 'Вы боитесь своей соперницы'
if lustw <= lustMax*25/100:$lust = 'Вы в самом настоящем ужасе и на грани паники'

if lustwe > lustMaxe*75/100:$luste = '<<$nameE>> храбро сверлит вас своим непреклонным взглядом'
if lustwe > lustMaxe*50/100 and lustwe <= lustMaxe*75/100:$luste = '<<$nameE>> выглядит немного удивленной'
if lustwe > lustMaxe*25/100 and lustwe <= lustMaxe*50/100:$luste = '<<$nameE>> выглядит испуганной'
if lustwe <= lustMaxe*25/100:$luste = '<<$nameE>> выглядит надломленной и готовой вот вот поддатся панике'

'<center><b>Раунд <<round>></b></center>'
'<center><b>Осталось до конца раунда <<rMin>> минут</b></center>'
''
'Ваш рекорд <<win[1]>>-<<loss[1]>>-<<draw[1]>> <<SubWin[1]>>/<<SubLoss[1]>>'
'<<$nameE>> рекорд <<win[i]>>-<<loss[i]>>-<<draw[i]>> <<SubWin[i]>>/<<SubLoss[i]>>'
''
'<<$endur>>. <<$lust>>.'
'<<$endurE>>. <<$lustE>>.'
'Вы набрали <<point>> очков'
'<<$nameE>> набрала <<pointE>> очков'
''
''
''
--- FightStat ---------------------------------

