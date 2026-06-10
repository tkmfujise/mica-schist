# Notes: C Cs Eb E G Ab Bb C
# Same scale: dugah_2, evcara, hicazkar, sedaraban, sehnaz_4, suzidil, zirguleli_suznak
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :zirguleli_hicaz), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :zirguleli_hicaz).reverse, [0.25]
