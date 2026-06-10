# Notes: C D Eb F G Ab B C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :harmonic_minor), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :harmonic_minor).reverse, [0.25]
