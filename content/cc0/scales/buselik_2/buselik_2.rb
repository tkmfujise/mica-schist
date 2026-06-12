# Notes: C D D E G Ab Bb C
# Same scale: ferahfeza, nihavend_2, sultani_yegah_2
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :buselik_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :buselik_2).reverse, [0.25]
