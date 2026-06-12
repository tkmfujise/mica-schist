# Notes: C Cs F Fs G B C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :messiaen5), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :messiaen5).reverse, [0.25]
