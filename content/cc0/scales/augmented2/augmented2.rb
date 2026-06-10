# Notes: C Cs E F Ab A C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :augmented2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :augmented2).reverse, [0.25]
