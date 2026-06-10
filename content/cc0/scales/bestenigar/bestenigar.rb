# Notes: C Cs Eb E Fs G A B Cs D E Fs
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :bestenigar), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :bestenigar).reverse, [0.25]
