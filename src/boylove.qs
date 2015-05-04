# boylove
if $ARGS[0] = 'haer':
	if haerBoyA ! hcol:
		bfA = bfA - 1

		if haerBoyA = 0:'<<$boyA>> говорит, что вы очень красивы, хотя ему и нравятся брюнетки.'
		if haerBoyA = 1:'<<$boyA>> говорит, что вы очень красивы, хотя ему и нравятся шатенки.'
		if haerBoyA = 2:'<<$boyA>> говорит, что вы очень красивы, хотя ему и нравятся рыжие.'
		if haerBoyA = 3:'<<$boyA>> говорит, что вы очень красивы, хотя ему и нравятся блондинки.'
	elseif haerBoyA = hcol:
		bfA = bfA + 1

		'<<$boyA>> говорит, что у вас чудесные волосы.'
	end
end

if $ARGS[0] = 'figure':
	if figurBoyA = 0:
		if bedra < 80:
			bfA = bfA + 1

			'<<$boyA>> говорит вам, что у вас идеальная фигура.'
		elseif bedra >= 80:
			bfA = bfA - 1

			'<<$boyA>> говорит, что вы ему очень нравитесь не смотря на то, что он всегда встречался с худышками.'
		end
	elseif figurBoyA = 1:
		if bedra > 80 and bedra < 100:
			bfA = bfA + 1

			'<<$boyA>> говорит вам, что у вас идеальная фигура.'
		elseif bedra <= 80:
			bfA = bfA - 1

			'<<$boyA>> спрашивает, нет ли у вас анорексии.'
		elseif bedra >= 100:
			bfA = bfA - 1

			'<<$boyA>> спрашивает, не собираетесь ли вы сесть на диету.'
		end
	elseif figurBoyA = 2:
		if bedra >= 100:
			bfA = bfA + 1

			'<<$boyA>> говорит вам, что у вас идеальная фигура.'
		elseif bedra < 100:
			bfA = bfA - 1

			'<<$boyA>> говорит, что вы красивая, но женщина должна быть в теле.'
		end
	end
end

if $ARGS[0] = 'tits':
	!titBoyA
	if titBoyA = 0:
		if tits < 3:
			bfA = bfA + 1

			'<<$boyA>> говорит вам, что у вас красивая грудь.'
		elseif tits >= 3:
			bfA = bfA - 1

			'<<$boyA>> говорит, что вы ему очень нравитесь не смотря на то, что он предпочитает маленькую грудь.'
		end
	elseif titBoyA = 1:
		if tits >= 3 and tits <= 4:
			bfA = bfA + 1

			'<<$boyA>> говорит вам, что у вас идеальная грудь.'
		elseif tits < 3:
			bfA = bfA - 1

			'<<$boyA>> говорит, что у вас красивая, хотя и маленькая грудь.'
		elseif tits > 4:
			bfA = bfA - 1

			'<<$boyA>> говорит, что у вас действительно огромная грудь.'
		end
	elseif titBoyA = 2:
		if tits > 4:
			bfA = bfA + 1

			'<<$boyA>> говорит вам, что у вас отличная грудь.'
		elseif tits <= 4:
			bfA = bfA - 1

			'<<$boyA>> говорит, что у вас красивая, хотя и маленькая грудь.'
		end
	end
end
--- boylove ---------------------------------

