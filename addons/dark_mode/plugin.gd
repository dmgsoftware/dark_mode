@tool
extends EditorPlugin

const AUTOLOAD_NAME = "DarkMode"

func _enable_plugin():
	add_autoload_singleton(AUTOLOAD_NAME, "res://addons/dark_mode/dark_mode.tscn")

func _disable_plugin():
	remove_autoload_singleton(AUTOLOAD_NAME)
