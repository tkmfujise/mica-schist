# Notes: C D E Fs Ab Bb C
# Same scale: messiaen1, whole_tone
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :whole), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :whole).reverse, [0.25]
