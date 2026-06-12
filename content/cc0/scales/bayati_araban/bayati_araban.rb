# Notes: C Cs D E Fs Ab A C C D E
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :bayati_araban), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :bayati_araban).reverse, [0.25]
