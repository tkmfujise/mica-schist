# Notes: C D D E G Ab Bb C
# Same scale: buselik_2, ferahfeza, sultani_yegah_2
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :nihavend_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :nihavend_2).reverse, [0.25]
