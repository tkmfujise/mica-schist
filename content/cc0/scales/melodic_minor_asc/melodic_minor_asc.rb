# Notes: C D Eb F G A B C
# Same scale: melodic_minor
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :melodic_minor_asc), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :melodic_minor_asc).reverse, [0.25]
