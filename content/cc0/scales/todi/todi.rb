# Notes: C Cs Eb Fs G Ab B C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :todi), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :todi).reverse, [0.25]
