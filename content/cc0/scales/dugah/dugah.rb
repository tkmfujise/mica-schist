# Notes: C Cs D E Fs G A B Cs D
# Same scale: saba
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :dugah), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :dugah).reverse, [0.25]
