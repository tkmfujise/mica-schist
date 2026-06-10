# Notes: C Cs Eb E Fs Ab Bb C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :super_locrian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :super_locrian).reverse, [0.25]
