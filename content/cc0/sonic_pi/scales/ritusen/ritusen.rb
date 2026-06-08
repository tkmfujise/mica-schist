# Notes: C D F G A C
# Same scale: zhi
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :ritusen), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :ritusen).reverse, [0.25]
