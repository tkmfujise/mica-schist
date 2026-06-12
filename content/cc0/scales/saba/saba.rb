# Notes: C Cs D E Fs G A B Cs D
# Same scale: dugah
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :saba), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :saba).reverse, [0.25]
