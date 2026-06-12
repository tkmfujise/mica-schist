# Notes: C Cs E F G Ab B C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :bhairav), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :bhairav).reverse, [0.25]
