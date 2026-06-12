# Notes: C Cs Eb E Fs G A Bb C
# Same scale: diminished
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :messiaen2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :messiaen2).reverse, [0.25]
