# Notes: C D E Fs G A B C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :lydian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :lydian).reverse, [0.25]
