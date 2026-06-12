# Notes: C D D E G G A C
# Same scale: nihavend, sultani_yegah
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :buselik), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :buselik).reverse, [0.25]
