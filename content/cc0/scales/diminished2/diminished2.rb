# Notes: C D Eb F Fs Ab A B C
# Same scale: octatonic
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :diminished2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :diminished2).reverse, [0.25]
