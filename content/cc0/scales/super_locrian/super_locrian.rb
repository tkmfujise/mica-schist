# Notes: C Cs Eb E Fs Ab Bb C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :super_locrian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :super_locrian).reverse, [0.25]
