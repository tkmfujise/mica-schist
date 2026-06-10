# Notes: C Cs D E G G A C C D E
# Same scale: isfahan_2
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :bayati_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :bayati_2).reverse, [0.25]
