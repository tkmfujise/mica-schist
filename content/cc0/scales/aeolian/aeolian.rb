# Notes: C D Eb F G Ab Bb C
# Same scale: melodic_minor_desc, minor
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :aeolian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :aeolian).reverse, [0.25]
