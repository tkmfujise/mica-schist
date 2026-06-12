# Notes: C Cs Eb E Fs G A Bb C
# Same scale: messiaen2
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :diminished), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :diminished).reverse, [0.25]
