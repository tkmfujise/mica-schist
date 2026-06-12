# Notes: C Cs D E G Ab A C D D E G
# max-recording-time: 9
use_synth :piano
play_pattern_timed  scale(:C, :huseyni_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :huseyni_2).reverse, [0.25]
