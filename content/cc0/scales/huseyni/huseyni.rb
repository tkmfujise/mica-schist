# Notes: C Cs D E G Ab A C
# Same scale: gulizar, muhayyer, neva, tahir
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :huseyni), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :huseyni).reverse, [0.25]
