# Notes: C D Eb F G A B C
# Same scale: melodic_minor_asc
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :melodic_minor), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :melodic_minor).reverse, [0.25]
