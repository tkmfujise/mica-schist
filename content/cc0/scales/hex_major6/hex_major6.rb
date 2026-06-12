# Notes: C D E F G A C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :hex_major6), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hex_major6).reverse, [0.25]
