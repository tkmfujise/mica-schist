# Notes: C E F G Bb C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :indian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :indian).reverse, [0.25]
