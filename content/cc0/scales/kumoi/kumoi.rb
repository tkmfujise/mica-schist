# Notes: C D Eb G A C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :kumoi), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :kumoi).reverse, [0.25]
