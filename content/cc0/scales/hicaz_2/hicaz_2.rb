# Notes: C Cs Eb E G Ab A C D D E
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :hicaz_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hicaz_2).reverse, [0.25]
