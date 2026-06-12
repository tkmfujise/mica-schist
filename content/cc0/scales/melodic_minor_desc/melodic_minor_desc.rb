# Notes: C D Eb F G Ab Bb C
# Same scale: aeolian, minor
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :melodic_minor_desc), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :melodic_minor_desc).reverse, [0.25]
