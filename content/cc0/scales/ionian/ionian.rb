# Notes: C D E F G A B C
# Same scale: diatonic, major
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :ionian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :ionian).reverse, [0.25]
