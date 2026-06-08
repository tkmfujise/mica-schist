# Notes: C D E F G A B C
# Same scale: ionian, major
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :diatonic), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :diatonic).reverse, [0.25]
