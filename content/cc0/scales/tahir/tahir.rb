# Notes: C Cs D E G Ab A C
# Same scale: gulizar, huseyni, muhayyer, neva
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :tahir), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :tahir).reverse, [0.25]
