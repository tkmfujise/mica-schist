# Notes: C Eb F G Ab Bb C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :hex_aeolian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hex_aeolian).reverse, [0.25]
