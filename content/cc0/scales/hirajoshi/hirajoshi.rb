# Notes: C D Eb G Ab C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :hirajoshi), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hirajoshi).reverse, [0.25]
