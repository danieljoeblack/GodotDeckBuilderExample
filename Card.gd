extends Node2D
class_name Card

onready var backgroundSprite:Sprite = get_node("Background")
onready var overlaySprite:Sprite = get_node("Overlay")

export var background = 6
export var face = 0

func _ready():
	backgroundSprite.frame = background
	overlaySprite.frame = face
