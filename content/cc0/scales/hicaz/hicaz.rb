# Notes: C Cs Eb E G Ab A C
# Same scale: sehnaz_2, sehnaz_3, uzzal
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :hicaz), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hicaz).reverse, [0.25]
