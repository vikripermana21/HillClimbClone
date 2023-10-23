extends Node2D

var coins_collected = 0

func add_coins(amount):
	coins_collected += amount;
	$UI/Coin/Label.text = str(coins_collected)

func updateFuelUI(value):
	$UI/Fuel/ProgressBar.value = value
	var stylebox = $UI/Fuel/ProgressBar.get_theme_stylebox("fill")
	stylebox.bg_color.h = lerp(0.0,0.3,value/100)
