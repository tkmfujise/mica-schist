# Notes: C Cs Eb F Fs Ab Bb C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :locrian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :locrian).reverse, [0.25]
