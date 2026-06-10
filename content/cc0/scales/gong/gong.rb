# Notes: C D E G A C
# Same scale: major_pentatonic
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :gong), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :gong).reverse, [0.25]
