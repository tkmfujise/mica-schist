# Notes: C D E Fs Ab Bb B C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :leading_whole), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :leading_whole).reverse, [0.25]
