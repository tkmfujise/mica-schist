# Notes: C Cs D F Fs G Ab B C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :messiaen4), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :messiaen4).reverse, [0.25]
