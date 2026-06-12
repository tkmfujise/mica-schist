# Notes: C D Eb E G Ab Bb C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :suznak), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :suznak).reverse, [0.25]
