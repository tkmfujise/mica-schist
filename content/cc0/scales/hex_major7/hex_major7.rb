# Notes: C D E G A B C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :hex_major7), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hex_major7).reverse, [0.25]
