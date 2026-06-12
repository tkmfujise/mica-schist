# Notes: C Eb F Ab Bb C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :jiao), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :jiao).reverse, [0.25]
