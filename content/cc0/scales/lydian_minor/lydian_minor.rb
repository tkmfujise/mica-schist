# Notes: C D E Fs G Ab Bb C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :lydian_minor), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :lydian_minor).reverse, [0.25]
