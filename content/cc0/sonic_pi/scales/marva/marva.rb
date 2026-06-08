# Notes: C Cs E Fs G A B C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :marva), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :marva).reverse, [0.25]
