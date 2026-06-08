# Notes: C Cs D E G G A C C D E
# Same scale: bayati_2
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :isfahan_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :isfahan_2).reverse, [0.25]
