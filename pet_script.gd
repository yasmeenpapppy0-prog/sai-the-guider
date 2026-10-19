extends Node2D

# Movement speed configuration
var speed = 100
var velocity = Vector2.RIGHT

func _ready():
    # Tie the script engine parameters to the window background layer
    set_process(true)

func _process(delta):
    # Calculate the screen boundaries dynamically
    var screen_size = DisplayServer.screen_get_size()
    var window = get_window()
    
    # Calculate next frame coordinate position values
    var current_pos = window.position
    var next_pos = current_pos + (velocity * speed * delta)
    
    # Simple bounce boundary check against monitor limits
    if next_pos.x < 0 or next_pos.x > (screen_size.x - 200):
        velocity.x *= -1
    if next_pos.y < 0 or next_pos.y > (screen_size.y - 100):
        velocity.y *= -1
        
    # Apply updated vector to current application window path canvas
    window.position += velocity * speed * delta