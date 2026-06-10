# Notes: C Eb E G Ab B C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :augmented), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :augmented).reverse, [0.25]
