# Notes: C Cs F Fs Bb C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :iwato), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :iwato).reverse, [0.25]
