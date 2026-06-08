# Notes: C Cs D E Fs Ab A C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :karcigar), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :karcigar).reverse, [0.25]
