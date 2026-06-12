# Notes: C D E E G A B B
# Same scale: acem_asiran, mahur, sevkefza
# max-recording-time: 7
use_synth :piano
play_pattern_timed  scale(:C, :cargah), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :cargah).reverse, [0.25]
