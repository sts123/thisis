# ovulation
if mesec = 0 and preg = 0:
	!нет месячных
	if tabletki = 0 and protect = 0:
		pregrand = RAND(1,100)
                !шанс залета 50%
	elseif tabletki > 0 and protect = 1:
		pregrand = RAND(50,1000)
                !шанс залета 1/951%
        else:
                pregrand = RAND(50,100)
                !шанс залета 1/51%
	end
	
	if pregrand <= 50 and cikl >= 12 and cikl <= 18:
                !залет в середине цикла высокий.
		$father = $boy
		preg = 1
	elseif pregrand <= 10 and cikl < 12 and cikl > 18:
                !с таблетками или презиками тут ничего не светит.
		$father = $boy
		preg = 1
	end
end
--- ovulation ---------------------------------

