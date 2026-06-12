# Notes: C D Eb E G A A B
# Same scale: yegah
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :acemli_rast), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :acemli_rast).reverse, [0.25]
