# Notes: C Cs D E G G A C
# Same scale: isfahan, ussak
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :bayati), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :bayati).reverse, [0.25]
