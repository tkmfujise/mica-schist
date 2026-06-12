# Notes: C C D E Fs G A B C D
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :kurdili_hicazkar_5), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :kurdili_hicazkar_5).reverse, [0.25]
