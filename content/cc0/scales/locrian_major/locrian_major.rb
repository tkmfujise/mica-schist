# Notes: C D E F Fs Ab Bb C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :locrian_major), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :locrian_major).reverse, [0.25]
