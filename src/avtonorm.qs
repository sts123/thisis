# avtonorm
if car = 1:normhour = 20
if car = 2:normhour = 20
if car = 3:normhour = 20
if car = 4:normhour = 20
if car = 5:normhour = 20
if car = 6:normhour = 20
if car = 7:normhour = 20
if car = 8:normhour = 20
if car = 9:normhour = 15
if car = 10:normhour = 18
if car = 11:normhour = 15
if car >= 95:normhour = 50

if wrek = 0:
	normneed = tehcar - teh
	normrem = normneed*normhour
elseif wrek = 1:
	normneed = tehcar - teh
	normremK = (normneed*normhour)*70
	normrem = (normneed*normhour)+ normremK
end
--- avtonorm ---------------------------------

