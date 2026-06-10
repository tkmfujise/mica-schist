# Notes: C D E F G Ab Bb C
# Same scale: bartok, melodic_major
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :hindu), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hindu).reverse, [0.25]
