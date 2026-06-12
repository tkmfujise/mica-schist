# Notes: C Cs Eb E G Ab Bb C Cs Eb F Fs
# max-recording-time: 9
use_synth :piano
play_pattern_timed  scale(:C, :evcara_3), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :evcara_3).reverse, [0.25]
