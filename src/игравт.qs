# игравт
clr
minut = minut + 10
gs'stat'

'<right><img src="images/casino/zaligravt.jpg"></right>'
'Вы входите в зал и видите множество игровых автоматов и кучу людей возле них. Постоянно слышится звон дергающихся ручек и падающих монет.'
'В левой части зала очень мало свободных мест.'
'Видимо там необходимая ставка меньше всех, но и выигрыш невелик.'
'Правее от них народу поменьше и ставка побольше.'
'Ну а в дальней части зала сидят единицы.'
'Там самая большая необходимая ставка, но и джекпот соответствующий - 10 млн. рублей.'

act 'К автоматам за 10руб':
	minut = minut+10
	gt'авт1'
end
act 'К автоматам за 100руб':
	gt'авт2'
end
act 'К автоматам за 1000руб':
	gt'авт3'
end
act 'Вернуться в холл':
	gt'холл'
end
--- игравт ---------------------------------

