# Notes: C Cs Eb F G Ab Bb C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :ferahnak), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :ferahnak).reverse, [0.25]
