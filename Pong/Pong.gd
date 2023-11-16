extends Node2D

const CENTER= Vector2(640,360)
var player_score = 0
var computer_score = 0

func _on_goal_left_body_entered(body):
	reset()
	computer_score += 1
	$ComputerScore.text = str(computer_score)
	_reset_score()
		
	
func _on_goal_right_body_entered(body):
	reset()
	player_score += 1
	$PlayerScore.text = str(player_score)
	_reset_score()
		
	
func reset():
	$Ball.position = CENTER
	$Ball.call("_set_ball_velocity")
	$Player.position.y = CENTER.y
	$Computer.position.y = CENTER.y
	
func _reset_score():
	if computer_score>5 || player_score >5:
		player_score = 0
		$PlayerScore.text = str(player_score)
		computer_score = 0
		$ComputerScore.text = str(computer_score)
		
