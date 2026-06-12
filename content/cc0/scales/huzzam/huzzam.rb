# Notes: C Cs Eb E G Ab Bb C
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :huzzam), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :huzzam).reverse, [0.25]
