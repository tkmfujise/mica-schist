# Notes: C E Fs G B C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :chinese), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :chinese).reverse, [0.25]
