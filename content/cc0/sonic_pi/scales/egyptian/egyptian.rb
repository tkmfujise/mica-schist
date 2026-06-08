# Notes: C D F G Bb C
# Same scale: shang
# max-recording-time: 5
use_synth :piano
play_pattern_timed  scale(:C, :egyptian), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :egyptian).reverse, [0.25]
