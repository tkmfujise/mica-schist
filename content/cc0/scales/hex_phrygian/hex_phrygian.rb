# Notes: C Cs Eb F Ab Bb C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :hex_phrygian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hex_phrygian).reverse, [0.25]
