# Notes: C Cs Eb E G Ab A C
# Same scale: hicaz, sehnaz_2, uzzal
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :sehnaz_3), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :sehnaz_3).reverse, [0.25]
