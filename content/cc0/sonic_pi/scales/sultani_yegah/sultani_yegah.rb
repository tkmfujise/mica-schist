# Notes: C D D E G G A C
# Same scale: buselik, nihavend
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :sultani_yegah), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :sultani_yegah).reverse, [0.25]
