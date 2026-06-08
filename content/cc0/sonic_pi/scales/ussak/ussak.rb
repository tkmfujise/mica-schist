# Notes: C Cs D E G G A C
# Same scale: bayati, isfahan
# max-recording-time: 6
use_synth :piano
play_pattern_timed  scale(:C, :ussak), [0.25]
sleep 0.25
play_pattern_timed  scale(:C, :ussak).reverse, [0.25]
