# Notes: C Cs Eb E G Ab Bb B Cs Eb
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :huzzam_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :huzzam_2).reverse, [0.25]
