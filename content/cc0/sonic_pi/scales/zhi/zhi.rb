# Notes: C D F G A C
# Same scale: ritusen
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :zhi), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :zhi).reverse, [0.25]
