# Notes: C D Eb E G A Bb C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :rast), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :rast).reverse, [0.25]
