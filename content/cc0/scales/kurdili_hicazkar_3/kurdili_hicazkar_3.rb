# Notes: C C D E Fs Ab A B Cs D E
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :kurdili_hicazkar_3), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :kurdili_hicazkar_3).reverse, [0.25]
