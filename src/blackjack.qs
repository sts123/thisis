# blackjack
gs'stat'
num = 1
:markcard

papkarand[num] = RAND(0,4)
if papkarand[num] = 0:$papkacard[num] = 'a'
if papkarand[num] = 1:$papkacard[num] = 'b'
if papkarand[num] = 2:$papkacard[num] = 'c'
if papkarand[num] = 3:$papkacard[num] = 'd'
if papkarand[num] = 4:$papkacard[num] = 'j'

if papkarand[num] = 4:
	numcard[num] = RAND(1,2)
	nomcard[num] = 10
else
	numcard[num] = RAND(2,14)
	if numcard[num] < 10:nomcard[num] = numcard[num]
	if numcard[num] >= 10:nomcard[num] = 10
end

num += 1
if num < 10:jump'markcard'
sumcard = nomcard[1]+nomcard[2]

'<center><img src="images/qwest/card/<<$papkacard[1]>>/<<$papkacard[1]>><<numcard[1]>>.jpg"><img src="images/qwest/card/<<$papkacard[2]>>/<<$papkacard[2]>><<numcard[2]>>.jpg"></center>'
'Номинал карт <<sumcard>>'

act 'Убрать карты':gt $loc
--- blackjack ---------------------------------

