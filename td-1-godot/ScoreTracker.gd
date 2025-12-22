extends Node

var score := 0

signal score_changed(value)

func add_score(value):
	score += value
	score_changed.emit(score)

func reset():
	score = 0
