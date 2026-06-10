# Notes: C Cs Eb E G Ab A C D D E
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :hicaz_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hicaz_2).reverse, [0.25]
