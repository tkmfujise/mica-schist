# Notes: C D Eb F G Ab Bb C
# Same scale: aeolian, melodic_minor_desc
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :minor), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :minor).reverse, [0.25]
