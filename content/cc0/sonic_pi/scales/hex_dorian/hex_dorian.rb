# Notes: C D Eb F G Bb C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :hex_dorian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hex_dorian).reverse, [0.25]
