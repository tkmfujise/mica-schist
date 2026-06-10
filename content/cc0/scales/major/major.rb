# Notes: C D E F G A B C
# Same scale: diatonic, ionian
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :major), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :major).reverse, [0.25]
