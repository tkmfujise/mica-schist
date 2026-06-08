# Notes: C Cs Eb E G Ab Bb C D Eb E
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :evcara_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :evcara_2).reverse, [0.25]
