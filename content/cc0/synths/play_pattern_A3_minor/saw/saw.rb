# max-recording-time: 8
use_synth :saw
with_fx :lpf, cutoff: 120 do
  play_pattern_timed  scale(:A3, :minor), [0.25]
  sleep 0.25
  play_pattern_timed  scale(:A3, :minor).reverse, [0.25]
end
