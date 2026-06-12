# Notes: C D F G A Bb C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :hex_sus), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hex_sus).reverse, [0.25]
