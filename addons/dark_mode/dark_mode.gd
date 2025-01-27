extends Node

signal dark_mode_changed(is_dark_mode: bool)

## Updates how often the timer checks for a change in dark mode.
@export var polling_interval: float = 1.0 :
	set(interval):
		polling_interval = interval
		_update_timer_interval(interval)

var _is_dark_mode: bool = DisplayServer.is_dark_mode()

@onready var _update_timer = $UpdateTimer

func _ready() -> void:
	_update_timer.wait_time = polling_interval
	_update_timer.start()

func is_dark_mode() -> bool:
	return _is_dark_mode

func _on_update_timer_timeout() -> void:
	if _is_dark_mode != DisplayServer.is_dark_mode():
		_is_dark_mode = !_is_dark_mode
		dark_mode_changed.emit(_is_dark_mode)

func _update_timer_interval(interval: float) -> void:
	# necessary in case @export is set
	if _update_timer:
		_update_timer.wait_time = interval
		_update_timer.start()
