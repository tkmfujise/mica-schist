# Notes: C D D E G Ab Bb C
# Same scale: buselik_2, nihavend_2, sultani_yegah_2
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :ferahfeza), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :ferahfeza).reverse, [0.25]
