# Notes: C D Eb F G A Bb C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :dorian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :dorian).reverse, [0.25]
