# Notes: C D D E G G A C
# Same scale: buselik, sultani_yegah
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :nihavend), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :nihavend).reverse, [0.25]
