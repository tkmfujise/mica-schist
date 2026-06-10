# Notes: C Cs Eb E G Ab Bb C
# Same scale: dugah_2, evcara, hicazkar, sedaraban, suzidil, zirguleli_hicaz, zirguleli_suznak
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :sehnaz_4), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :sehnaz_4).reverse, [0.25]
