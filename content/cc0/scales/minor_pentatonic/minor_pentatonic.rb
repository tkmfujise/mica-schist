# Notes: C Eb F G Bb C
# Same scale: yu
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :minor_pentatonic), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :minor_pentatonic).reverse, [0.25]
