# Notes: C D E Fs B C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :prometheus), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :prometheus).reverse, [0.25]
