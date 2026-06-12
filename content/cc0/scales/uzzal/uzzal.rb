# Notes: C Cs Eb E G Ab A C
# Same scale: hicaz, sehnaz_2, sehnaz_3
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :uzzal), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :uzzal).reverse, [0.25]
