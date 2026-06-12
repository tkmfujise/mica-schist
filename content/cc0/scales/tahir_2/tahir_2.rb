# Notes: C Cs D E G Ab A C D D E
# Same scale: neva_2
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :tahir_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :tahir_2).reverse, [0.25]
