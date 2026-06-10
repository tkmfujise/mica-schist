# Notes: C Cs Eb E G Ab Bb C Cs Eb E G G A C
# Same scale: suzidil_2
# max-recording-time: 9
use_synth :piano
play_pattern_timed  scale(:C, :sedaraban_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :sedaraban_2).reverse, [0.25]
