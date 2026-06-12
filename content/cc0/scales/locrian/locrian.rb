# Notes: C Cs Eb F Fs Ab Bb C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :locrian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :locrian).reverse, [0.25]
