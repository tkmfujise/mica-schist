# Notes: C D E F G Ab Bb C
# Same scale: hindu, melodic_major
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :bartok), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :bartok).reverse, [0.25]
