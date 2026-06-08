# Notes: C D Eb F Fs Ab A B C
# Same scale: diminished2
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :octatonic), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :octatonic).reverse, [0.25]
