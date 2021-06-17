# Main file
tellraw @a {"text":"[RE] Initializing Random Events","color":"yellow"}

# Add scoreboard objectives
scoreboard objectives add re dummy "Random Events Vars"

scoreboard objectives add walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add walkUWater minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add swimming minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add walkOWater minecraft.custom:minecraft.walk_on_water_one_cm

scoreboard objectives add isAFK dummy
scoreboard objectives add afkTime dummy

# Count of modules to load
#scoreboard players set modules_to_load re 0
# Count of loaded modules
scoreboard players set modules_loaded re 0
# Days without a death
scoreboard players set days_alive re 0
# Days since last event
scoreboard players set last_event re 0

# Set up RNG
function re:main/rng/reset

# Load Modules
tellraw @a {"text":"[RE] Loading Modules","color":"yellow"}
function re:init/load-modules
tellraw @a ["",{"text":"[RE] ","color":"yellow"},{"score":{"name":"modules_loaded","objective":"re"},"color":"gold"},{"text":" Modules Loaded","color":"yellow"}]

schedule function re:main/afk-tagging 10t replace
schedule function re:main/event-start-loop 300s