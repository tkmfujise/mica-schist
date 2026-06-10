# Notes: C Cs D E G Ab A C
# Same scale: huseyni, muhayyer, neva, tahir
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :gulizar), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :gulizar).reverse, [0.25]
