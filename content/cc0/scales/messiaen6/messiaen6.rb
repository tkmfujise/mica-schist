# Notes: C D E F Fs Ab Bb B C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :messiaen6), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :messiaen6).reverse, [0.25]
