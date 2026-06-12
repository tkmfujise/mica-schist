# Notes: C D E G A C
# Same scale: gong
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :major_pentatonic), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :major_pentatonic).reverse, [0.25]
