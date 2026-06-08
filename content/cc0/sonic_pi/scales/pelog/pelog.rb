# Notes: C Cs Eb G Ab C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :pelog), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :pelog).reverse, [0.25]
