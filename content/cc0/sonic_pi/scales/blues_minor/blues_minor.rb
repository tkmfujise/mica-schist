# Notes: C Eb F Fs G Bb C
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :blues_minor), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :blues_minor).reverse, [0.25]
