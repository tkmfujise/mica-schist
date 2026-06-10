# Notes: C Cs E F G Ab Bb C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :spanish), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :spanish).reverse, [0.25]
