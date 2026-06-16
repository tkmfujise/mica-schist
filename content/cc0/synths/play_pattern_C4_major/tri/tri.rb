# max-recording-time: 8
use_synth :tri
with_fx :lpf, cutoff: 120 do
  play_pattern_timed  scale(:C4, :major), [0.25]
  sleep 0.25
  play_pattern_timed  scale(:C4, :major).reverse, [0.25]
end
