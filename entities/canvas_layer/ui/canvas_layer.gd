extends CanvasLayer

@export var interaction_label: Label
@export var progress_container: MarginContainer
@export var progress_bar: ProgressBar
@export var moving_ui: Node

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_toggle"):
		visible = not visible

func _ready() -> void:
	propagate_call("set_mouse_filter", [Control.MOUSE_FILTER_IGNORE])
