# Notes: C Cs D Eb F Fs G Ab A B C
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :messiaen7), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :messiaen7).reverse, [0.25]
