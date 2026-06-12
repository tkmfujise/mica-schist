# Notes: C Eb F G Bb C
# Same scale: minor_pentatonic
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :yu), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :yu).reverse, [0.25]
