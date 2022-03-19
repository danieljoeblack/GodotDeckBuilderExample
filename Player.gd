extends Node2D

var deck:Array = []

export var numOfCrown = 1
export var numOfBow = 2
export var numOfTrident = 8 
export var numOfStaff = 2
export var numOfSword = 2

export var backgroundColor = 6

var cardClass = preload("res://Card.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
	fillDeck()
	deck.shuffle()
	add_child(deck[0])

func fillDeck():
	#instance crown cards
	for i in numOfCrown:
		addCard(0)
		
	#instance card cards
	for i in numOfBow:
		addCard(2)	
	
	#instance card cards
	for i in numOfTrident:
		addCard(3)
		
	#instance card cards
	for i in numOfStaff:
		addCard(3)
		
	#instance card cards
	for i in numOfSword:
		addCard(3)
	
func addCard(face):
	var cardInstance = cardClass.instance()
	cardInstance.background = backgroundColor
	cardInstance.face = face
	deck.append(cardInstance)
	
