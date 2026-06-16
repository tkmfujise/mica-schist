# max-recording-time: 8
use_synth :dtri
with_fx :lpf, cutoff: 120 do
  play_pattern_timed  scale(:A5, :minor), [0.25]
  sleep 0.25
  play_pattern_timed  scale(:A5, :minor).reverse, [0.25]
end
