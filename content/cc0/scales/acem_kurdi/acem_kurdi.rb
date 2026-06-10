# Notes: C C D E G A A C
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :acem_kurdi), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :acem_kurdi).reverse, [0.25]
