# Notes: C D Eb E G A C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :blues_major), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :blues_major).reverse, [0.25]
