# Notes: C D E Fs Ab Bb C
# Same scale: whole, whole_tone
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :messiaen1), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :messiaen1).reverse, [0.25]
