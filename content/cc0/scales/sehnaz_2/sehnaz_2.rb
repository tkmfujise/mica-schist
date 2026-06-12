# Notes: C Cs Eb E G Ab A C
# Same scale: hicaz, sehnaz_3, uzzal
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :sehnaz_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :sehnaz_2).reverse, [0.25]
