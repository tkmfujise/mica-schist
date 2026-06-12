# Notes: C D F G Bb C
# Same scale: egyptian
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :shang), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :shang).reverse, [0.25]
