# Notes: C Cs D Eb E F Fs G Ab A Bb B C
# max-recording-time: 9
use_synth :piano
play_pattern_timed  scale(:C, :chromatic), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :chromatic).reverse, [0.25]
