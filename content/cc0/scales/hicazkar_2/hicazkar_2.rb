# Notes: C Cs Eb E G Ab Bb C D D E G
# Same scale: zirguleli_hicaz_2, zirguleli_suznak_2
# max-recording-time: 9
use_synth :piano
play_pattern_timed  scale(:C, :hicazkar_2), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :hicazkar_2).reverse, [0.25]
