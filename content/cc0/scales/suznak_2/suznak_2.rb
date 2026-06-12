# Notes: C D Eb E G Ab Bb C D D E G
# max-recording-time: 9
use_synth :piano
play_pattern_timed  scale(:C, :suznak_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :suznak_2).reverse, [0.25]
