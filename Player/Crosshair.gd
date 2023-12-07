@tool
extends Control

func _draw() -> void:
	# draw_circle(Vector2.ZERO, 4, Color.DIM_GRAY)
	# draw_circle(Vector2.ZERO, 3, Color.WHITE)
	draw_line(Vector2(4, 0), Vector2(8, 0), Color.WHITE, 2)
	draw_line(Vector2(-4, 0), Vector2(-8, 0), Color.WHITE, 2)
	draw_line(Vector2(0, 4), Vector2(0, 8), Color.WHITE, 2)
	draw_line(Vector2(0, -4), Vector2(0, -8), Color.WHITE, 2)
