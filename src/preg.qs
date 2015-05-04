# preg
if mesec = 0 and preg = 0:
	!нет месячных
	if tabletki = 0:
		pregrand = RAND(0,100)
	else:
		pregrand = RAND(50,100)
	end
	
	if pregrand <= 50 and cikl >= 12 and cikl <= 18:
		$father = $boy
		preg = 1
	elseif pregrand <= 10 and cikl < 12 and cikl > 18:
		$father = $boy
		preg = 1
	end
end
--- preg ---------------------------------

