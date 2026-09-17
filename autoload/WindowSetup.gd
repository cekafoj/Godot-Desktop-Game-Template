extends Node

const WIN_SIZE := Vector2i(300, 300)
const MARGIN := Vector2i(30, 100)  # ekranın sağ-alt köşesinden boşluk (saat/pil bölgesine yakın)

func _enter_tree() -> void:
	var window := get_window()

	window.size = WIN_SIZE
	window.min_size = WIN_SIZE
	window.max_size = WIN_SIZE

	window.borderless = true
	window.transparent = true

	window.always_on_top = true

	var wid := window.get_window_id()
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true, wid)
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_TRANSPARENT, true, wid)
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, true, wid)

	var screen := DisplayServer.screen_get_size()
	window.position = Vector2i(
		screen.x - WIN_SIZE.x - MARGIN.x,
		screen.y - WIN_SIZE.y - MARGIN.y
	)

var _dragging := false
var _drag_start_mouse := Vector2i()
var _drag_start_window := Vector2i()

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT:
		if event.pressed:
			_dragging = true
			_drag_start_mouse = DisplayServer.mouse_get_position()
			_drag_start_window = get_window().position
		else:
			_dragging = false
	elif event is InputEventMouseMotion and _dragging:
		var current_mouse := DisplayServer.mouse_get_position()
		var delta := current_mouse - _drag_start_mouse
		get_window().position = _drag_start_window + delta
