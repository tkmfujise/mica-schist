# Notes: C Cs D E G Ab A C
# Same scale: gulizar, huseyni, muhayyer, tahir
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :neva), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :neva).reverse, [0.25]
