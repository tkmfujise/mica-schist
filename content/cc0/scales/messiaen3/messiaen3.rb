# Notes: C D Eb E Fs G Ab Bb B C
# max-recording-time: 8
use_synth :piano
play_pattern_timed  scale(:C, :messiaen3), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :messiaen3).reverse, [0.25]
