# Notes: C Cs Eb E G Ab Bb C Cs Eb E G G A C
# Same scale: sedaraban_2
# max-recording-time: 10
use_synth :piano
play_pattern_timed  scale(:C, :suzidil_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :suzidil_2).reverse, [0.25]
