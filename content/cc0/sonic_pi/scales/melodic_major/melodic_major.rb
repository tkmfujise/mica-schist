# Notes: C D E F G Ab Bb C
# Same scale: bartok, hindu
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :melodic_major), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :melodic_major).reverse, [0.25]
